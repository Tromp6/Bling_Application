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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) guessAge,
    required TResult Function(AgeGuessEntity ageGuess) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? guessAge,
    TResult? Function(AgeGuessEntity ageGuess)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? guessAge,
    TResult Function(AgeGuessEntity ageGuess)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuessAge value) guessAge,
    required TResult Function(Data value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuessAge value)? guessAge,
    TResult? Function(Data value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuessAge value)? guessAge,
    TResult Function(Data value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeGuessEventCopyWith<$Res> {
  factory $AgeGuessEventCopyWith(
          AgeGuessEvent value, $Res Function(AgeGuessEvent) then) =
      _$AgeGuessEventCopyWithImpl<$Res, AgeGuessEvent>;
}

/// @nodoc
class _$AgeGuessEventCopyWithImpl<$Res, $Val extends AgeGuessEvent>
    implements $AgeGuessEventCopyWith<$Res> {
  _$AgeGuessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GuessAgeCopyWith<$Res> {
  factory _$$GuessAgeCopyWith(
          _$GuessAge value, $Res Function(_$GuessAge) then) =
      __$$GuessAgeCopyWithImpl<$Res>;
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
    required TResult Function(AgeGuessEntity ageGuess) reset,
  }) {
    return guessAge(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? guessAge,
    TResult? Function(AgeGuessEntity ageGuess)? reset,
  }) {
    return guessAge?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? guessAge,
    TResult Function(AgeGuessEntity ageGuess)? reset,
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
    required TResult Function(Data value) reset,
  }) {
    return guessAge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuessAge value)? guessAge,
    TResult? Function(Data value)? reset,
  }) {
    return guessAge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuessAge value)? guessAge,
    TResult Function(Data value)? reset,
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

  String get name;
  @JsonKey(ignore: true)
  _$$GuessAgeCopyWith<_$GuessAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @useResult
  $Res call({AgeGuessEntity ageGuess});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$AgeGuessEventCopyWithImpl<$Res, _$Data>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageGuess = null,
  }) {
    return _then(_$Data(
      null == ageGuess
          ? _value.ageGuess
          : ageGuess // ignore: cast_nullable_to_non_nullable
              as AgeGuessEntity,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.ageGuess);

  @override
  final AgeGuessEntity ageGuess;

  @override
  String toString() {
    return 'AgeGuessEvent.reset(ageGuess: $ageGuess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data &&
            (identical(other.ageGuess, ageGuess) ||
                other.ageGuess == ageGuess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ageGuess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) guessAge,
    required TResult Function(AgeGuessEntity ageGuess) reset,
  }) {
    return reset(ageGuess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? guessAge,
    TResult? Function(AgeGuessEntity ageGuess)? reset,
  }) {
    return reset?.call(ageGuess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? guessAge,
    TResult Function(AgeGuessEntity ageGuess)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(ageGuess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GuessAge value) guessAge,
    required TResult Function(Data value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GuessAge value)? guessAge,
    TResult? Function(Data value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GuessAge value)? guessAge,
    TResult Function(Data value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Data implements AgeGuessEvent {
  const factory Data(final AgeGuessEntity ageGuess) = _$Data;

  AgeGuessEntity get ageGuess;
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
