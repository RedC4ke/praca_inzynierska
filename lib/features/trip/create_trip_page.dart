import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/utils/listeners.dart';
import 'package:travelmate/core/utils/validators.dart';
import 'package:travelmate/core/widgets/tm_app_bar.dart';
import 'package:travelmate/core/widgets/tm_loading.dart';
import 'package:travelmate/features/trip/application/create_trip_controller.dart';

@RoutePage()
class CreateTripPage extends HookConsumerWidget {
  const CreateTripPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createTripControllerProvider);

    final formKey = useMemoized(GlobalKey<FormState>.new);

    final nameController = useTextEditingController();

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
              title: context.s.create_trip,
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
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: context.s.name,
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
                  ],
                ),
              ),
            ),
          ),
        ),
        state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () {
            return const TmLoading(
              transparent: false,
            );
          },
        ),
      ],
    );
  }
}
