import 'dart:async';

import 'package:flutter/widgets.dart';

/// Widget that provides a scale effect when a button is tapped.
///
/// When the user taps the widget, it shrinks to the specified [percentScale]
/// and then returns to its original size with a smooth animation.
///
/// **Important note:** If [percentScale] is equal to 1.0, no animation will
/// run to avoid errors, since there would be no scale change.
///
/// Usage example:
/// ```dart
/// ButtonScaleWidget(
///   percentScale: 0.95, // Shrinks to 95% of the original size
///   onTap: () => print('Button pressed'),
///   child: Container(
///     padding: EdgeInsets.all(16),
///     child: Text('Press me'),
///   ),
/// )
/// ```
class ButtonScaleWidget extends StatefulWidget {
  const ButtonScaleWidget({
    super.key,
    required this.onTap,
    required this.child,
    this.percentScale = 0.96,
    this.alignment = Alignment.center,
  }) : assert(
         percentScale > 0.0 && percentScale <= 1.0,
         'percentScale debe estar entre 0.0 y 1.0',
       );

  /// Callback invoked when the widget is tapped.
  final VoidCallback? onTap;

  /// Child widget displayed with the scale effect.
  final Widget child;

  /// Scale the widget shrinks to when tapped (0.0 - 1.0).
  ///
  /// - 0.95 = shrinks to 95% of the original size
  /// - 1.0 = no scale effect (disables the animation)
  /// - Lower values create more dramatic effects
  final double percentScale;

  /// Alignment of the transform effect.
  final Alignment alignment;

  @override
  State<ButtonScaleWidget> createState() => _ButtonScaleWidgetState();
}

class _ButtonScaleWidgetState extends State<ButtonScaleWidget>
    with SingleTickerProviderStateMixin {
  double squareScaleA = 1;
  AnimationController? _controllerA;

  /// If percentScale is 1, there is no animation.
  bool get _shouldAnimate => widget.percentScale < 1.0 && widget.onTap != null;

  @override
  void initState() {
    if (_shouldAnimate) {
      _controllerA = AnimationController(
        vsync: this,
        lowerBound: widget.percentScale,
        value: 1,
        duration: const Duration(milliseconds: 100),
      );
      _controllerA?.addListener(() {
        setState(() {
          squareScaleA = _controllerA?.value ?? 1;
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (_shouldAnimate) {
          _controllerA?.reverse();
        }
        if (widget.onTap != null) widget.onTap!();
      },
      onTapDown: (dp) {
        if (_shouldAnimate) {
          _controllerA?.reverse();
        }
      },
      onTapUp: (dp) {
        if (_shouldAnimate) {
          Timer(const Duration(milliseconds: 50), () {
            if (mounted) _controllerA?.fling();
          });
        }
      },
      onTapCancel: () {
        if (_shouldAnimate) {
          _controllerA?.fling();
        }
      },
      child: Transform.scale(
        scale: squareScaleA,
        alignment: widget.alignment,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _controllerA?.dispose();
    super.dispose();
  }
}
