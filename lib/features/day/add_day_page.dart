import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/utils/listeners.dart';
import 'package:travelmate/core/utils/validators.dart';
import 'package:travelmate/core/widgets/tm_app_bar.dart';
import 'package:travelmate/core/widgets/tm_loading.dart';
import 'package:travelmate/core/widgets/tm_stub_text_form_field.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/domain/trip/models/trip_day.dart';
import 'package:travelmate/features/day/application/add_day_controller.dart';

@RoutePage()
class AddDayPage extends HookConsumerWidget {
  const AddDayPage({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addDayControllerProvider(trip));

    final formKey = useMemoized(GlobalKey<FormState>.new);
    final dayDate = useState<DateTime?>(null);

    ref.listen(
      addDayControllerProvider(trip),
      (p, n) => Listeners.loadableStateListener(
        context,
        context.s.saved,
        p,
        n,
      ),
    );

    void pickDate() {
      showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(DateTime.now().year + 100),
        selectableDayPredicate: (newDay) {
          for (final day in trip.days) {
            if (day.date.isSameDay(newDay)) {
              return false;
            }
          }

          return true;
        },
      ).then((value) {
        if (value != null) {
          dayDate.value = value;
        }
      });
    }

    void addDay() {
      final date = dayDate.value;

      if (date == null) {
        return;
      }

      ref.read(addDayControllerProvider(trip).notifier).addDay(
            TripDay(
              date: date,
            ),
          );
    }

    return Stack(
      children: [
        Form(
          key: formKey,
          child: Scaffold(
            appBar: TmAppBar(
              title: context.s.add_day,
              actions: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.circlePlus),
                  onPressed: () {
                    if (!(formKey.currentState?.validate() ?? false)) {
                      return;
                    }

                    addDay();
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    StubTextFormWidget<DateTime>(
                      hint: '${context.s.date} (dd/mm/yyyy)',
                      validator: (v) => Validators.notEmpty(
                        context,
                        v?.toString(),
                      ),
                      value: dayDate.value,
                      formatter: (p0) => DateFormat('dd/MM/yyyy').format(p0),
                      onPresed: pickDate,
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
