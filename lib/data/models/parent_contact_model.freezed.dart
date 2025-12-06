// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParentContactModel _$ParentContactModelFromJson(Map<String, dynamic> json) {
  return _ParentContactModel.fromJson(json);
}

/// @nodoc
mixin _$ParentContactModel {
  String get primaryName => throw _privateConstructorUsedError;
  String get primaryRelation => throw _privateConstructorUsedError;
  String get primaryMobile => throw _privateConstructorUsedError;
  String get secondaryName => throw _privateConstructorUsedError;
  String get secondaryRelation => throw _privateConstructorUsedError;
  String get secondaryMobile => throw _privateConstructorUsedError;

  /// Serializes this ParentContactModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParentContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentContactModelCopyWith<ParentContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentContactModelCopyWith<$Res> {
  factory $ParentContactModelCopyWith(
    ParentContactModel value,
    $Res Function(ParentContactModel) then,
  ) = _$ParentContactModelCopyWithImpl<$Res, ParentContactModel>;
  @useResult
  $Res call({
    String primaryName,
    String primaryRelation,
    String primaryMobile,
    String secondaryName,
    String secondaryRelation,
    String secondaryMobile,
  });
}

/// @nodoc
class _$ParentContactModelCopyWithImpl<$Res, $Val extends ParentContactModel>
    implements $ParentContactModelCopyWith<$Res> {
  _$ParentContactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParentContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryName = null,
    Object? primaryRelation = null,
    Object? primaryMobile = null,
    Object? secondaryName = null,
    Object? secondaryRelation = null,
    Object? secondaryMobile = null,
  }) {
    return _then(
      _value.copyWith(
            primaryName: null == primaryName
                ? _value.primaryName
                : primaryName // ignore: cast_nullable_to_non_nullable
                      as String,
            primaryRelation: null == primaryRelation
                ? _value.primaryRelation
                : primaryRelation // ignore: cast_nullable_to_non_nullable
                      as String,
            primaryMobile: null == primaryMobile
                ? _value.primaryMobile
                : primaryMobile // ignore: cast_nullable_to_non_nullable
                      as String,
            secondaryName: null == secondaryName
                ? _value.secondaryName
                : secondaryName // ignore: cast_nullable_to_non_nullable
                      as String,
            secondaryRelation: null == secondaryRelation
                ? _value.secondaryRelation
                : secondaryRelation // ignore: cast_nullable_to_non_nullable
                      as String,
            secondaryMobile: null == secondaryMobile
                ? _value.secondaryMobile
                : secondaryMobile // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParentContactModelImplCopyWith<$Res>
    implements $ParentContactModelCopyWith<$Res> {
  factory _$$ParentContactModelImplCopyWith(
    _$ParentContactModelImpl value,
    $Res Function(_$ParentContactModelImpl) then,
  ) = __$$ParentContactModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String primaryName,
    String primaryRelation,
    String primaryMobile,
    String secondaryName,
    String secondaryRelation,
    String secondaryMobile,
  });
}

/// @nodoc
class __$$ParentContactModelImplCopyWithImpl<$Res>
    extends _$ParentContactModelCopyWithImpl<$Res, _$ParentContactModelImpl>
    implements _$$ParentContactModelImplCopyWith<$Res> {
  __$$ParentContactModelImplCopyWithImpl(
    _$ParentContactModelImpl _value,
    $Res Function(_$ParentContactModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParentContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryName = null,
    Object? primaryRelation = null,
    Object? primaryMobile = null,
    Object? secondaryName = null,
    Object? secondaryRelation = null,
    Object? secondaryMobile = null,
  }) {
    return _then(
      _$ParentContactModelImpl(
        primaryName: null == primaryName
            ? _value.primaryName
            : primaryName // ignore: cast_nullable_to_non_nullable
                  as String,
        primaryRelation: null == primaryRelation
            ? _value.primaryRelation
            : primaryRelation // ignore: cast_nullable_to_non_nullable
                  as String,
        primaryMobile: null == primaryMobile
            ? _value.primaryMobile
            : primaryMobile // ignore: cast_nullable_to_non_nullable
                  as String,
        secondaryName: null == secondaryName
            ? _value.secondaryName
            : secondaryName // ignore: cast_nullable_to_non_nullable
                  as String,
        secondaryRelation: null == secondaryRelation
            ? _value.secondaryRelation
            : secondaryRelation // ignore: cast_nullable_to_non_nullable
                  as String,
        secondaryMobile: null == secondaryMobile
            ? _value.secondaryMobile
            : secondaryMobile // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentContactModelImpl implements _ParentContactModel {
  const _$ParentContactModelImpl({
    required this.primaryName,
    required this.primaryRelation,
    required this.primaryMobile,
    required this.secondaryName,
    required this.secondaryRelation,
    required this.secondaryMobile,
  });

  factory _$ParentContactModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentContactModelImplFromJson(json);

  @override
  final String primaryName;
  @override
  final String primaryRelation;
  @override
  final String primaryMobile;
  @override
  final String secondaryName;
  @override
  final String secondaryRelation;
  @override
  final String secondaryMobile;

  @override
  String toString() {
    return 'ParentContactModel(primaryName: $primaryName, primaryRelation: $primaryRelation, primaryMobile: $primaryMobile, secondaryName: $secondaryName, secondaryRelation: $secondaryRelation, secondaryMobile: $secondaryMobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentContactModelImpl &&
            (identical(other.primaryName, primaryName) ||
                other.primaryName == primaryName) &&
            (identical(other.primaryRelation, primaryRelation) ||
                other.primaryRelation == primaryRelation) &&
            (identical(other.primaryMobile, primaryMobile) ||
                other.primaryMobile == primaryMobile) &&
            (identical(other.secondaryName, secondaryName) ||
                other.secondaryName == secondaryName) &&
            (identical(other.secondaryRelation, secondaryRelation) ||
                other.secondaryRelation == secondaryRelation) &&
            (identical(other.secondaryMobile, secondaryMobile) ||
                other.secondaryMobile == secondaryMobile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    primaryName,
    primaryRelation,
    primaryMobile,
    secondaryName,
    secondaryRelation,
    secondaryMobile,
  );

  /// Create a copy of ParentContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentContactModelImplCopyWith<_$ParentContactModelImpl> get copyWith =>
      __$$ParentContactModelImplCopyWithImpl<_$ParentContactModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentContactModelImplToJson(this);
  }
}

abstract class _ParentContactModel implements ParentContactModel {
  const factory _ParentContactModel({
    required final String primaryName,
    required final String primaryRelation,
    required final String primaryMobile,
    required final String secondaryName,
    required final String secondaryRelation,
    required final String secondaryMobile,
  }) = _$ParentContactModelImpl;

  factory _ParentContactModel.fromJson(Map<String, dynamic> json) =
      _$ParentContactModelImpl.fromJson;

  @override
  String get primaryName;
  @override
  String get primaryRelation;
  @override
  String get primaryMobile;
  @override
  String get secondaryName;
  @override
  String get secondaryRelation;
  @override
  String get secondaryMobile;

  /// Create a copy of ParentContactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentContactModelImplCopyWith<_$ParentContactModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
