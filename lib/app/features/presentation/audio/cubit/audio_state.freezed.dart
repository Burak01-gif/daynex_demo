// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AudioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playing,
    TResult? Function()? paused,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioPlaying value) playing,
    required TResult Function(AudioPaused value) paused,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlaying value)? playing,
    TResult? Function(AudioPaused value)? paused,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlaying value)? playing,
    TResult Function(AudioPaused value)? paused,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
    AudioState value,
    $Res Function(AudioState) then,
  ) = _$AudioStateCopyWithImpl<$Res, AudioState>;
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res, $Val extends AudioState>
    implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AudioPlayingImplCopyWith<$Res> {
  factory _$$AudioPlayingImplCopyWith(
    _$AudioPlayingImpl value,
    $Res Function(_$AudioPlayingImpl) then,
  ) = __$$AudioPlayingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioPlayingImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioPlayingImpl>
    implements _$$AudioPlayingImplCopyWith<$Res> {
  __$$AudioPlayingImplCopyWithImpl(
    _$AudioPlayingImpl _value,
    $Res Function(_$AudioPlayingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AudioPlayingImpl implements AudioPlaying {
  const _$AudioPlayingImpl();

  @override
  String toString() {
    return 'AudioState.playing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioPlayingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
  }) {
    return playing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playing,
    TResult? Function()? paused,
  }) {
    return playing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioPlaying value) playing,
    required TResult Function(AudioPaused value) paused,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlaying value)? playing,
    TResult? Function(AudioPaused value)? paused,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlaying value)? playing,
    TResult Function(AudioPaused value)? paused,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class AudioPlaying implements AudioState {
  const factory AudioPlaying() = _$AudioPlayingImpl;
}

/// @nodoc
abstract class _$$AudioPausedImplCopyWith<$Res> {
  factory _$$AudioPausedImplCopyWith(
    _$AudioPausedImpl value,
    $Res Function(_$AudioPausedImpl) then,
  ) = __$$AudioPausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioPausedImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioPausedImpl>
    implements _$$AudioPausedImplCopyWith<$Res> {
  __$$AudioPausedImplCopyWithImpl(
    _$AudioPausedImpl _value,
    $Res Function(_$AudioPausedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AudioPausedImpl implements AudioPaused {
  const _$AudioPausedImpl();

  @override
  String toString() {
    return 'AudioState.paused()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioPausedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playing,
    TResult? Function()? paused,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioPlaying value) playing,
    required TResult Function(AudioPaused value) paused,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlaying value)? playing,
    TResult? Function(AudioPaused value)? paused,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlaying value)? playing,
    TResult Function(AudioPaused value)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class AudioPaused implements AudioState {
  const factory AudioPaused() = _$AudioPausedImpl;
}
