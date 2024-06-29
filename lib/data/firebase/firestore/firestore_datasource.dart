import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/data/firebase/firestore/firestore_deserializers.dart';
import 'package:travelmate/domain/trip/models/trip.dart';

final firestoreDatasourceProvider = Provider((ref) => FirestoreDatasource());

abstract class _Collection {
  static const users = 'users';
  static const trips = 'trips';
}

class FirestoreDatasource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  String get _userId => _auth.currentUser!.uid;
  DocumentReference get _userDoc => _db.collection(_Collection.users).doc(
        _userId,
      );

  Future<Trip> createTrip(Trip trip) async {
    final ref = await _db.collection(_Collection.trips).add(
          trip.toJson(),
        );

    return trip.copyWith(id: ref.id);
  }

  Future<Trip> getTrip(String tripId) async {
    final snapshot = await _db
        .collection(_Collection.trips)
        .doc(
          tripId,
        )
        .get();

    return FirestoreDeserializers.firestoreObject(snapshot, Trip.fromJson);
  }

  Future<List<Trip>> getTrips() async {
    final snapshot = await _db
        .collection(_Collection.trips)
        .where(
          'ownerId',
          isEqualTo: _userId,
        )
        .get();

    return FirestoreDeserializers.firestoreCollection(snapshot, Trip.fromJson);
  }

  Future<Trip> updateTrip(Trip trip) async {
    await _db
        .collection(_Collection.trips)
        .doc(
          trip.id,
        )
        .set(
          trip.toJson(),
          SetOptions(
            merge: true,
          ),
        );

    return trip;
  }
}
