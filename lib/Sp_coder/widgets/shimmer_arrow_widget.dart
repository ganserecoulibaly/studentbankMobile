import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchimmerArrowos extends StatefulWidget {
  const SchimmerArrowos({Key? key}) : super(key: key);

  @override
  State<SchimmerArrowos> createState() => _SchimmerArrowosState();
}

class _SchimmerArrowosState extends State<SchimmerArrowos> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, child) {
        return ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment(-1.0 + _animationController.value, 0.0),
            end: Alignment(_animationController.value, 0.0),
            transform: _SlideGradientTransform(percent: _animationController.value),
            colors: [
              Colors.white10,
              Colors.white,
              Colors.white10,
            ],
          ).createShader(bounds),
          child: const Row(
            children: [
              Align(heightFactor: .4, child: Icon(CupertinoIcons.chevron_forward, color: Colors.white,size: 12,)),
              Align(heightFactor: .4, child: Icon(CupertinoIcons.chevron_forward, color: Colors.white,size: 13,)),
              Align(heightFactor: .4, child: Icon(CupertinoIcons.chevron_forward, color: Colors.white,size: 19,)),
              Align(heightFactor: .4, child: Icon(CupertinoIcons.chevron_forward, color: Colors.transparent,size: 35,)),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class _SlideGradientTransform extends GradientTransform {
  final double percent;

  _SlideGradientTransform({required this.percent});

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(0, bounds.height * percent, 0);
  }
}


// class _SchimmerArrowosState extends State<SchimmerArrowos>
// with SingleTickerProviderStateMixin{
//
//   late final AnimationController _animationController;
//
//   @override
//   void initState(){
//     _animationController =AnimationController.unbounded(vsync: this)
//     ..repeat(
//       min: -0.5, max: 1.5, period: Duration(seconds: 1));
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: _animationController,
//         builder: (_, child){
//           return ShaderMask(
//             shaderCallback: (bounds)=> LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               transform: _SlideGradientTransform(percent: _animationController.value),
//               colors: [
//                 Colors.white10,
//                 Colors.white,
//                 Colors.white10,
//
//               ],
//             ).createShader(bounds),
//             child: const Column(
//               children: [
//                 Align(heightFactor: .4, child: Icon( CupertinoIcons.chevron_forward,)),
//                 Align(heightFactor: .4, child: Icon( CupertinoIcons.chevron_forward,)),
//                 Align(heightFactor: .4, child: Icon( CupertinoIcons.chevron_forward,)),
//               ],
//             ),
//           );
//         }
//     );
//   }
// }
//
// class _SlideGradientTransform extends GradientTransform{
//   final double percent;
//
//   _SlideGradientTransform({ required this.percent});
//
//   @override
//
//   Matrix4? transform(Rect bounds, { TextDirection? textDirection}){
//     return Matrix4.translationValues(0, bounds.height * percent, 0);
//   }
// }