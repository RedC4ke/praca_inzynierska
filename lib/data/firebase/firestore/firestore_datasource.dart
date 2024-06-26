import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/data/firebase/firestore/firestore_deserializers.dart';
import 'package:travelmate/domain/bucket_list/models/bucket_list.dart';
import 'package:travelmate/domain/bucket_list/models/bucket_list_item.dart';

final firestoreDatasourceProvider = Provider((ref) => FirestoreDatasource());

abstract class _Collection {
  static const users = 'users';
  static const bucketLists = 'bucket_lists';
  static const items = 'items';
}

class FirestoreDatasource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  String get _userId => _auth.currentUser!.uid;
  DocumentReference get _userDoc => _db.collection(_Collection.users).doc(
        _userId,
      );
  CollectionReference _bucketListItems(String listId) => _userDoc
      .collection(_Collection.bucketLists)
      .doc(listId)
      .collection(_Collection.items);

  //* Bucket list
  Future<BucketListItem> addBucketListItem(
    BucketListItem item,
  ) async {
    final ref = await _bucketListItems(item.listId).add(
      item.toJson(),
    );

    return item.copyWith(id: ref.id);
  }

  Future<BucketListItem> updateBucketListItem(BucketListItem item) async {
    await _bucketListItems(item.listId).doc(item.id).update(
          item.toJson(),
        );

    return item;
  }

  Future<void> deleteBucketListItem(BucketListItem item) async {
    await _bucketListItems(item.listId).doc(item.id).delete();
  }

  Future<List<BucketListItem>> getBucketList(String listId) async {
    final data = await _bucketListItems(listId).get();

    return FirestoreDeserializers.firestoreCollection(
      data,
      BucketListItem.fromJson,
    );
  }

  Future<List<BucketList>> getBucketLists() async {
    final data = await _userDoc.collection(_Collection.bucketLists).get();

    return FirestoreDeserializers.firestoreCollection(
      data,
      BucketList.fromJson,
    );
  }

  Future<BucketList> addBucketList(BucketList list) async {
    final ref = await _userDoc.collection(_Collection.bucketLists).add(
          list.toJson(),
        );

    return list.copyWith(id: ref.id);
  }
}
