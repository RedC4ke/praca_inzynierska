import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/data/firebase/firestore/firestore_datasource.dart';
import 'package:travelmate/domain/auth/auth_repository.dart';
import 'package:travelmate/domain/error/catch_error.dart';
import 'package:travelmate/domain/error/models/failure.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/domain/trip/models/trip_day.dart';

final tripRepositoryProvider = Provider(
  (ref) => TripRepository(
    ref.read(firestoreDatasourceProvider),
    ref.read(authRepositoryProvider),
  ),
);

class TripRepository {
  TripRepository(
    this._firestoreDatasource,
    this._authRepository,
  );

  final FirestoreDatasource _firestoreDatasource;
  final AuthRepository _authRepository;

  TaskEither<Failure, Trip> createTrip(String name) {
    return catchError(
      () async {
        final userId = await _authRepository.userStream.first;

        return userId.fold(
          (failure) {
            throw Exception();
          },
          (user) {
            final trip = Trip(
              name: name,
              ownerId: user.uid,
            );

            return _firestoreDatasource.createTrip(trip);
          },
        );
      },
    );
  }

  TaskEither<Failure, Trip> getTrip(String tripId) {
    return catchError(
      () => _firestoreDatasource.getTrip(tripId),
    );
  }

  TaskEither<Failure, List<Trip>> getTrips() {
    return catchError(
      _firestoreDatasource.getTrips,
    );
  }

  TaskEither<Failure, Trip> updateTrip(Trip trip) {
    return catchError(
      () => _firestoreDatasource.updateTrip(trip),
    );
  }

  TaskEither<Failure, Trip> updateOrAddTripDay(
    TripDay day,
    Trip trip,
  ) {
    var dayAdded = false;

    final updatedDays = trip.days.map(
      (tripDay) {
        if (tripDay.date.isSameDay(day.date)) {
          dayAdded = true;
          return day;
        }

        return tripDay;
      },
    ).toList();

    if (!dayAdded) {
      updatedDays.add(day);
    }

    return catchError(
      () => _firestoreDatasource.updateTrip(trip.copyWith(days: updatedDays)),
    );
  }
}
