import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclick_books_manager/features/onboarding/splash/presentation/bloc/splash_bloc.dart';
import 'package:iclick_books_manager/routes/router.gr.dart';
import 'package:iclick_books_manager/theme/theme_values/base_images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<SplashBloc, SplashState>(
      listener: (context, state) async {
        if (state is SplashLoaded) {
          await context.router.push(const HomeRoute());
          ;
        }
      },
      child: _body(context),
    ));
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(child: Image(image: AssetImage(BaseImages.domainLogo))),
      ]),
    );
  }
}
