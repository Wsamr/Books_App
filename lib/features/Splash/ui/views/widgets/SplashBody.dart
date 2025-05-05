import 'package:bookly_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

class Splashbody extends StatefulWidget {
  const Splashbody({super.key});

  @override
  State<Splashbody> createState() => _SplashbodyState();
}

class _SplashbodyState extends State<Splashbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  late Animation<Offset> animation2;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    animation = Tween(
      begin: Offset(0, 12),
      end: Offset(0, 0),
    ).animate(animationController);
    animation2 = Tween(
      begin: Offset(0, -3),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
    // TODO: implement initState
    super.initState();
    gotoHomeScreen();
  }

  gotoHomeScreen() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
            position: animation2,
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SlideTransition(
            position: animation,
            child: Text(
              "Read Books",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
