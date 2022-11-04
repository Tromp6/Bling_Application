// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'age_guess_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgeGuessEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) guessAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? guessAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? guessAge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuessAge value) guessAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuessAge value)? guessAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuessAge value)? guessAge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgeGuessEventCopyWith<AgeGuessEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeGuessEventCopyWith<$Res> {
  factory $AgeGuessEventCopyWith(
          AgeGuessEvent value, $Res Function(AgeGuessEvent) then) =
      _$AgeGuessEventCopyWithImpl<$Res, AgeGuessEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AgeGuessEventCopyWithImpl<$Res, $Val extends AgeGuessEvent>
    implements $AgeGuessEventCopyWith<$Res> {
  _$AgeGuessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuessAgeCopyWith<$Res>
    implements $AgeGuessEventCopyWith<$Res> {
  factory _$$GuessAgeCopyWith(
          _$GuessAge value, $Res Function(_$GuessAge) then) =
      __$$GuessAgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GuessAgeCopyWithImpl<$Res>
    extends _$AgeGuessEventCopyWithImpl<$Res, _$GuessAge>
    implements _$$GuessAgeCopyWith<$Res> {
  __$$GuessAgeCopyWithImpl(_$GuessAge _value, $Res Function(_$GuessAge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GuessAge(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GuessAge implements GuessAge {
  const _$GuessAge(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AgeGuessEvent.guessAge(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuessAge &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuessAgeCopyWith<_$GuessAge> get copyWith =>
      __$$GuessAgeCopyWithImpl<_$GuessAge>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) guessAge,
  }) {
    return guessAge(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? guessAge,
  }) {
    return guessAge?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? guessAge,
    required TResult orElse(),
  }) {
    if (guessAge != null) {
      return guessAge(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuessAge value) guessAge,
  }) {
    return guessAge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuessAge value)? guessAge,
  }) {
    return guessAge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuessAge value)? guessAge,
    required TResult orElse(),
  }) {
    if (guessAge != null) {
      return guessAge(this);
    }
    return orElse();
  }
}

abstract class GuessAge implements AgeGuessEvent {
  const factory GuessAge(final String name) = _$GuessAge;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GuessAgeCopyWith<_$GuessAge> get copyWith =>
      throw _privateConstructorUsedError;
}
