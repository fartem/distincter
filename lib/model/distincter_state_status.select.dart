// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'distincter_state_status.dart';

// **************************************************************************
// MatcherGenerator
// **************************************************************************

extension $DistincterCheckStatusMatcherExtension on DistincterCheckStatus {
  T when<T>({
    required T Function() correct,
    required T Function() error,
  }) {
    switch (this) {
      case DistincterCheckStatus.correct:
        return correct();
      case DistincterCheckStatus.error:
        return error();
    }
  }

  T whenConst<T>({
    required T correct,
    required T error,
  }) {
    switch (this) {
      case DistincterCheckStatus.correct:
        return correct;
      case DistincterCheckStatus.error:
        return error;
    }
  }

  T? whenOrNull<T>({
    T Function()? correct,
    T Function()? error,
  }) {
    switch (this) {
      case DistincterCheckStatus.correct:
        return correct?.call();
      case DistincterCheckStatus.error:
        return error?.call();
    }
  }

  T? whenConstOrNull<T>({
    T? correct,
    T? error,
  }) {
    switch (this) {
      case DistincterCheckStatus.correct:
        return correct;
      case DistincterCheckStatus.error:
        return error;
    }
  }
}
