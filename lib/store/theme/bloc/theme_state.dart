part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

final class ThemeInitial extends ThemeState {}

class ThemeLoaded extends ThemeState {
  final BaseThemeConfig themeConfig;

  const ThemeLoaded(this.themeConfig);

  @override
  List<Object> get props => [themeConfig];
}
