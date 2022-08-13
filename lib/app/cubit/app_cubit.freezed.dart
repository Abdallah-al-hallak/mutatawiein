// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() auth,
    required TResult Function() unAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authinticated value) auth,
    required TResult Function(UnAuthinticated value) unAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() auth,
    required TResult Function() unAuth,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authinticated value) auth,
    required TResult Function(UnAuthinticated value) unAuth,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$AuthinticatedCopyWith<$Res> {
  factory _$$AuthinticatedCopyWith(
          _$Authinticated value, $Res Function(_$Authinticated) then) =
      __$$AuthinticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthinticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$AuthinticatedCopyWith<$Res> {
  __$$AuthinticatedCopyWithImpl(
      _$Authinticated _value, $Res Function(_$Authinticated) _then)
      : super(_value, (v) => _then(v as _$Authinticated));

  @override
  _$Authinticated get _value => super._value as _$Authinticated;
}

/// @nodoc

class _$Authinticated implements Authinticated {
  const _$Authinticated();

  @override
  String toString() {
    return 'AppState.auth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authinticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() auth,
    required TResult Function() unAuth,
  }) {
    return auth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
  }) {
    return auth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authinticated value) auth,
    required TResult Function(UnAuthinticated value) unAuth,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class Authinticated implements AppState {
  const factory Authinticated() = _$Authinticated;
}

/// @nodoc
abstract class _$$UnAuthinticatedCopyWith<$Res> {
  factory _$$UnAuthinticatedCopyWith(
          _$UnAuthinticated value, $Res Function(_$UnAuthinticated) then) =
      __$$UnAuthinticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthinticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$UnAuthinticatedCopyWith<$Res> {
  __$$UnAuthinticatedCopyWithImpl(
      _$UnAuthinticated _value, $Res Function(_$UnAuthinticated) _then)
      : super(_value, (v) => _then(v as _$UnAuthinticated));

  @override
  _$UnAuthinticated get _value => super._value as _$UnAuthinticated;
}

/// @nodoc

class _$UnAuthinticated implements UnAuthinticated {
  const _$UnAuthinticated();

  @override
  String toString() {
    return 'AppState.unAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthinticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() auth,
    required TResult Function() unAuth,
  }) {
    return unAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
  }) {
    return unAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? auth,
    TResult Function()? unAuth,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authinticated value) auth,
    required TResult Function(UnAuthinticated value) unAuth,
  }) {
    return unAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
  }) {
    return unAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authinticated value)? auth,
    TResult Function(UnAuthinticated value)? unAuth,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(this);
    }
    return orElse();
  }
}

abstract class UnAuthinticated implements AppState {
  const factory UnAuthinticated() = _$UnAuthinticated;
}
