// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_day_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addDayControllerHash() => r'1da24f2799323f8aae6e6788f2043434c523debd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AddDayController
    extends BuildlessAutoDisposeNotifier<LoadableState<Trip>> {
  late final Trip trip;

  LoadableState<Trip> build(
    Trip trip,
  );
}

/// See also [AddDayController].
@ProviderFor(AddDayController)
const addDayControllerProvider = AddDayControllerFamily();

/// See also [AddDayController].
class AddDayControllerFamily extends Family<LoadableState<Trip>> {
  /// See also [AddDayController].
  const AddDayControllerFamily();

  /// See also [AddDayController].
  AddDayControllerProvider call(
    Trip trip,
  ) {
    return AddDayControllerProvider(
      trip,
    );
  }

  @override
  AddDayControllerProvider getProviderOverride(
    covariant AddDayControllerProvider provider,
  ) {
    return call(
      provider.trip,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addDayControllerProvider';
}

/// See also [AddDayController].
class AddDayControllerProvider extends AutoDisposeNotifierProviderImpl<
    AddDayController, LoadableState<Trip>> {
  /// See also [AddDayController].
  AddDayControllerProvider(
    Trip trip,
  ) : this._internal(
          () => AddDayController()..trip = trip,
          from: addDayControllerProvider,
          name: r'addDayControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addDayControllerHash,
          dependencies: AddDayControllerFamily._dependencies,
          allTransitiveDependencies:
              AddDayControllerFamily._allTransitiveDependencies,
          trip: trip,
        );

  AddDayControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.trip,
  }) : super.internal();

  final Trip trip;

  @override
  LoadableState<Trip> runNotifierBuild(
    covariant AddDayController notifier,
  ) {
    return notifier.build(
      trip,
    );
  }

  @override
  Override overrideWith(AddDayController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddDayControllerProvider._internal(
        () => create()..trip = trip,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        trip: trip,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AddDayController, LoadableState<Trip>>
      createElement() {
    return _AddDayControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddDayControllerProvider && other.trip == trip;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, trip.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddDayControllerRef
    on AutoDisposeNotifierProviderRef<LoadableState<Trip>> {
  /// The parameter `trip` of this provider.
  Trip get trip;
}

class _AddDayControllerProviderElement
    extends AutoDisposeNotifierProviderElement<AddDayController,
        LoadableState<Trip>> with AddDayControllerRef {
  _AddDayControllerProviderElement(super.provider);

  @override
  Trip get trip => (origin as AddDayControllerProvider).trip;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
