part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class SetThemeEvent extends ThemeEvent {
  final ThemeType themeType;

  const SetThemeEvent(this.themeType);

  @override
  List<Object> get props => [themeType];
}
