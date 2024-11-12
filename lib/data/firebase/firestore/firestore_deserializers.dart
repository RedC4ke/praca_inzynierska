import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirestoreDeserializers {
  static T firestoreObject<T>(
    DocumentSnapshot snapshot,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final id = snapshot.id;
    final data = snapshot.data();

    if (data == null || data is! Map) {
      if (null is T) {
        return null as T;
      }

      throw Exception('Deserializers: invalid data error');
    }

    final objectJson = <String, dynamic>{
      ...data as Map<String, dynamic>,
      'id': id,
    };

    return fromJson(objectJson);
  }

  static List<T> firestoreCollection<T>(
    QuerySnapshot snapshot,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final documents = snapshot.docs
        .map(
          (e) => firestoreObject<T>(e, fromJson),
        )
        .whereType<T>()
        .toList();

    return documents;
  }
}
