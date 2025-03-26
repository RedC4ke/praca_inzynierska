import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/utils/listeners.dart';
import 'package:travelmate/core/utils/validators.dart';
import 'package:travelmate/core/widgets/autocomplete/application/autocomplete_controller.dart';
import 'package:travelmate/core/widgets/autocomplete/tm_autocomplete_form_field.dart';
import 'package:travelmate/core/widgets/tm_app_bar.dart';
import 'package:travelmate/core/widgets/tm_form_date_picker.dart';
import 'package:travelmate/core/widgets/tm_loading.dart';
import 'package:travelmate/domain/error/models/autocomplete_prediction.dart';
import 'package:travelmate/features/place/application/place_details_controller.dart';
import 'package:travelmate/features/trip/application/create_trip_controller.dart';

@RoutePage()
class CreateTripPage extends HookConsumerWidget {
  const CreateTripPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createTripControllerProvider);

    final formKey = useMemoized(GlobalKey<FormState>.new);

    final nameController = useTextEditingController();
    final selectedLocation = useState<AutocompletePrediction?>(null);
    final selectedDate = useState<DateTime?>(null);

    ref.listen(
      createTripControllerProvider,
      (p, n) => Listeners.loadableStateListener(
        context,
        context.s.saved,
        p,
        n,
      ),
    );

    void addTrip() {
      ref.read(createTripControllerProvider.notifier).createTrip(
            nameController.text,
          );
    }

    return Stack(
      children: [
        Form(
          key: formKey,
          child: Scaffold(
            appBar: TmAppBar(
              title: context.s.create_trip_title,
              actions: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.circlePlus),
                  onPressed: () {
                    if (!(formKey.currentState?.validate() ?? true)) {
                      return;
                    }

                    addTrip();
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TmAutocompleteFormField(
                      onSelected: (p0) {
                        if (p0 == null) {
                          return;
                        }

                        final sessionToken = ref
                            .read(autocompleteControllerProvider.notifier)
                            .clearSessionToken();

                        ref
                            .read(placeDetailsControllerProvider.notifier)
                            .loadPlace(
                              p0.placePrediction.placeId,
                              sessionToken,
                            );

                        selectedLocation.value = p0;
                      },
                      validator: (p0) => Validators.validateLocation(
                        context,
                        p0,
                      ),
                      required: true,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: '${context.s.name}*',
                      ),
                      validator: (text) => Validators.minLength(
                        context,
                        text,
                        Validators.nameMinLength,
                      ),
                      maxLength: Validators.nameMaxLength,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(height: 20),
                    TmFormDatePicker(
                      value: selectedDate.value,
                      onChanged: (date) {
                        selectedDate.value = date;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        switch (state) {
          Loading() => const TmLoading(transparent: false),
          _ => const SizedBox.shrink(),
        },
      ],
    );
  }
}
