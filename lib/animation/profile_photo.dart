import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';

class ProfilePhotoAnimation extends StatefulWidget {
  final Color backgroundcolor;
  final String ImagePath;
  const ProfilePhotoAnimation(
      {required this.backgroundcolor, required this.ImagePath, super.key});

  @override
  State<ProfilePhotoAnimation> createState() => _ProfilePhotoAnimationState();
}

class _ProfilePhotoAnimationState extends State<ProfilePhotoAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);
    _animation = Tween(begin: Offset.zero, end: const Offset(0, 0.05))
        .animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: CircleAvatar(
        radius: 200,
        backgroundColor: widget.backgroundcolor,
        child: Image.asset(
          widget.ImagePath,
          width: 380,
          height: 400,
        ),
      ),
    );
  }
}
