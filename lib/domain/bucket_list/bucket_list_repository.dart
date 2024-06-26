import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/data/firebase/firestore/firestore_datasource.dart';
import 'package:travelmate/domain/bucket_list/models/bucket_list.dart';
import 'package:travelmate/domain/bucket_list/models/bucket_list_item.dart';
import 'package:travelmate/domain/error/catch_error.dart';

import 'package:travelmate/domain/error/models/failure.dart';

final bucketListRepositoryProvider = Provider<BucketListRepository>((ref) {
  return BucketListRepository(
    ref.read(firestoreDatasourceProvider),
  );
});

class BucketListRepository {
  BucketListRepository(this._firestore);

  final FirestoreDatasource _firestore;

  TaskEither<Failure, BucketListItem> addBucketListItem(BucketListItem item) =>
      catchError(() => _addBucketListItem(item));

  Future<BucketListItem> _addBucketListItem(BucketListItem item) {
    return _firestore.addBucketListItem(item);
  }

  TaskEither<Failure, BucketListItem> updateBucketListItem(
    BucketListItem item,
  ) =>
      catchError(() => _updateBucketListItem(item));

  Future<BucketListItem> _updateBucketListItem(BucketListItem item) {
    return _firestore.updateBucketListItem(item);
  }

  TaskEither<Failure, void> deleteBucketListItem(BucketListItem item) =>
      catchError(() => _deleteBucketListItem(item));

  Future<void> _deleteBucketListItem(BucketListItem item) {
    return _firestore.deleteBucketListItem(item);
  }

  TaskEither<Failure, List<BucketListItem>> getBucketList(String listId) =>
      catchError(() => _getBucketList(listId));

  Future<List<BucketListItem>> _getBucketList(String listId) {
    return _firestore.getBucketList(listId);
  }

  TaskEither<Failure, List<BucketList>> getBucketLists() =>
      catchError(_getBucketLists);

  Future<List<BucketList>> _getBucketLists() {
    return _firestore.getBucketLists();
  }

  TaskEither<Failure, BucketList> addBucketList(BucketList list) =>
      catchError(() => _addBucketList(list));

  Future<BucketList> _addBucketList(BucketList list) {
    return _firestore.addBucketList(list);
  }
}
