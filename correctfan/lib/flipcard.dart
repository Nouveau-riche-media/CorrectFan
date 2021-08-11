// library flip_panel;

// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:math' as math;

// typedef Widget DigitBuilder(BuildContext, int);

// ///
// /// A [Widget] provides a simple implementation of a flipclock using [FlipPanel]
// ///
// ///


// enum FlipDirection { up, down }
// typedef Widget StreamItemBuilder<T>(BuildContext, T);
// typedef Widget IndexedItemBuilder(BuildContext, int);


// class FlipPanel<T> extends StatefulWidget {
//   final IndexedItemBuilder indexedItemBuilder;
//   final StreamItemBuilder<T> streamItemBuilder;
//   final Stream<T> itemStream;
//   final int itemsCount;
//   final Duration period;
//   final Duration duration;
//   final int loop;
//   final int startIndex;
//   final T initValue;
//   final double spacing;
//   final FlipDirection direction;

//   FlipPanel({
//     Key? key,
//     required this.indexedItemBuilder,
//     required this.streamItemBuilder,
//     required this.itemStream,
//     required this.itemsCount,
//     required this.period,
//     required this.duration,
//     required this.loop,
//     required this.startIndex,
//     required this.initValue,
//     required this.spacing,
//     required this.direction,
//   }) : super(key: key);

//   ///
//   /// Create a flip panel from iterable source
//   ///
//   /// * [itemBuilder] is called periodically in each time of [period]
//   /// * The animation is looped in [loop] times before finished.
//   /// Setting [loop] to -1 makes flip animation run forever.
//   /// * The [period] should be two times greater than [duration] of flip animation,
//   /// otherwise the animation becomes jerky/stuttery.
//   ///
//   FlipPanel.builder({
//     Key? key,
//     required IndexedItemBuilder itemBuilder,
//     required this.itemsCount,
//     required this.period,
//     this.duration = const Duration(milliseconds: 500),
//     this.loop = 1,
//     this.startIndex = 0,
//     this.spacing = 0.5,
//     this.direction = FlipDirection.down,
//     // ignore: unnecessary_null_comparison
//   })  : assert(itemBuilder != null),
//   // ignore: unnecessary_null_comparison
//         assert(itemsCount != null),
//         assert(startIndex < itemsCount),
//         // ignore: unnecessary_null_comparison
//         assert(period == null ||
//             period.inMilliseconds >= 2 * duration.inMilliseconds),
//         indexedItemBuilder = itemBuilder,
//         streamItemBuilder = null,
//         itemStream = null,
//         initValue = null,
//         super(key: key);

//   ///
//   /// Create a flip panel from stream source
//   ///
//   /// * [itemBuilder] is called whenever a new value is emitted from [itemStream]
//   ///
//   FlipPanel.stream({
//     Key? key,
//     required this.itemStream,
//     required StreamItemBuilder<T> itemBuilder,
//     required this.initValue,
//     this.duration = const Duration(milliseconds: 500),
//     this.spacing = 0.5,
//     this.direction = FlipDirection.down,
//   // ignore: unnecessary_null_comparison
//   })  : assert(itemStream != null),
//         indexedItemBuilder = null,
//         streamItemBuilder = itemBuilder,
//         itemsCount = 0,
//         period = null,
//         loop = 0,
//         startIndex = 0,
//         super(key: key);

//   @override
//   _FlipPanelState<T> createState() => _FlipPanelState<T>();
// }

// class _FlipPanelState<T> extends State<FlipPanel>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation _animation;
//   late int _currentIndex;
//   late bool _isReversePhase;
//   late bool _isStreamMode;
//   late bool _running;
//   final _perspective = 0.003;
//   final _zeroAngle =
//       0.0001; // There's something wrong in the perspective transform, I use a very small value instead of zero to temporarily get it around.
//   late int _loop;
//   late T _currentValue, _nextValue;
//   late Timer _timer;
//   late StreamSubscription<dynamic> _subscription;

//   late Widget _child1, _child2;
//   late Widget _upperChild1, _upperChild2;
//   late Widget _lowerChild1, _lowerChild2;

//   @override
//   void initState() {
//     super.initState();
//     _currentIndex = widget.startIndex;
//     _isStreamMode = widget.itemStream != null;
//     _isReversePhase = false;
//     _running = false;
//     _loop = 0;

//     _controller =
//         new AnimationController(duration: widget.duration, vsync: this)
//           ..addStatusListener((status) {
//             if (status == AnimationStatus.completed) {
//               _isReversePhase = true;
//               _controller.reverse();
//             }
//             if (status == AnimationStatus.dismissed) {
//               _currentValue = _nextValue;
//               _running = false;
//             }
//           })
//           ..addListener(() {
//             setState(() {
//               _running = true;
//             });
//           });
//     _animation =
//         Tween(begin: _zeroAngle, end: math.pi / 2).animate(_controller);

//     // ignore: unnecessary_null_comparison
//     if (widget.period != null) {
//       _timer = Timer.periodic(widget.period, (_) {
//         if (widget.loop < 0 || _loop < widget.loop) {
//           if (_currentIndex + 1 == widget.itemsCount - 2) {
//             _loop++;
//           }
//           _currentIndex = (_currentIndex + 1) % widget.itemsCount;
//           _child1 = null;
//           _isReversePhase = false;
//           _controller.forward();
//         } else {
//           _timer.cancel();
//           _currentIndex = (_currentIndex + 1) % widget.itemsCount;
//           setState(() {
//             _running = false;
//           });
//         }
//       });
//     }

//     if (_isStreamMode) {
//       _currentValue = widget.initValue;
//       _subscription = widget.itemStream.distinct().listen((value) {
//         if (_currentValue == null) {
//           _currentValue = value;
//         } else if (value != _currentValue) {
//           _nextValue = value;
//           _child1 = null;
//           _isReversePhase = false;
//           _controller.forward();
//         }
//       });
//     } else if (widget.loop < 0 || _loop < widget.loop) {
//       _controller.forward();
//     }
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     if (_subscription != null) _subscription.cancel();
//     if (_timer != null) _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     _buildChildWidgetsIfNeed(context);

//     return _buildPanel();
//   }

//   void _buildChildWidgetsIfNeed(BuildContext context) {
//     Widget makeUpperClip(Widget widget) {
//       return ClipRect(
//         child: Align(
//           alignment: Alignment.topCenter,
//           heightFactor: 0.5,
//           child: widget,
//         ),
//       );
//     }

//     Widget makeLowerClip(Widget widget) {
//       return ClipRect(
//         child: Align(
//           alignment: Alignment.bottomCenter,
//           heightFactor: 0.5,
//           child: widget,
//         ),
//       );
//     }

//     if (_running) {
//       if (_child1 == null) {
//         _child1 = _child2 != null
//             ? _child2
//             : _isStreamMode
//                 ? widget.streamItemBuilder(context, _currentValue)
//                 : widget.indexedItemBuilder(
//                     context, _currentIndex % widget.itemsCount);
//         _child2 = null;
//         _upperChild1 =
//             _upperChild2 != null ? _upperChild2 : makeUpperClip(_child1);
//         _lowerChild1 =
//             _lowerChild2 != null ? _lowerChild2 : makeLowerClip(_child1);
//       }
//       // ignore: unnecessary_null_comparison
//       if (_child2 == null) {
//         _child2 = _isStreamMode
//             ? widget.streamItemBuilder(context, _nextValue)
//             : widget.indexedItemBuilder(
//                 context, (_currentIndex + 1) % widget.itemsCount);
//         _upperChild2 = makeUpperClip(_child2);
//         _lowerChild2 = makeLowerClip(_child2);
//       }
//     } else {
//       _child1 = _child2 != null
//           ? _child2
//           : _isStreamMode
//               ? widget.streamItemBuilder(context, _currentValue)
//               : widget.indexedItemBuilder(
//                   context, _currentIndex % widget.itemsCount);
//       _upperChild1 =
//           _upperChild2 != null ? _upperChild2 : makeUpperClip(_child1);
//       _lowerChild1 =
//           _lowerChild2 != null ? _lowerChild2 : makeLowerClip(_child1);
//     }
//   }

//   Widget _buildUpperFlipPanel() => widget.direction == FlipDirection.up
//       ? Stack(
//           children: [
//             Transform(
//                 alignment: Alignment.bottomCenter,
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, _perspective)
//                   ..rotateX(_zeroAngle),
//                 child: _upperChild1),
//             Transform(
//               alignment: Alignment.bottomCenter,
//               transform: Matrix4.identity()
//                 ..setEntry(3, 2, _perspective)
//                 ..rotateX(_isReversePhase ? _animation.value : math.pi / 2),
//               child: _upperChild2,
//             ),
//           ],
//         )
//       : Stack(
//           children: [
//             Transform(
//                 alignment: Alignment.bottomCenter,
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, _perspective)
//                   ..rotateX(_zeroAngle),
//                 child: _upperChild2),
//             Transform(
//               alignment: Alignment.bottomCenter,
//               transform: Matrix4.identity()
//                 ..setEntry(3, 2, _perspective)
//                 ..rotateX(_isReversePhase ? math.pi / 2 : _animation.value),
//               child: _upperChild1,
//             ),
//           ],
//         );

//   Widget _buildLowerFlipPanel() => widget.direction == FlipDirection.up
//       ? Stack(
//           children: [
//             Transform(
//                 alignment: Alignment.topCenter,
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, _perspective)
//                   ..rotateX(_zeroAngle),
//                 child: _lowerChild2),
//             Transform(
//               alignment: Alignment.topCenter,
//               transform: Matrix4.identity()
//                 ..setEntry(3, 2, _perspective)
//                 ..rotateX(_isReversePhase ? math.pi / 2 : -_animation.value),
//               child: _lowerChild1,
//             )
//           ],
//         )
//       : Stack(
//           children: [
//             Transform(
//                 alignment: Alignment.topCenter,
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, _perspective)
//                   ..rotateX(_zeroAngle),
//                 child: _lowerChild1),
//             Transform(
//               alignment: Alignment.topCenter,
//               transform: Matrix4.identity()
//                 ..setEntry(3, 2, _perspective)
//                 ..rotateX(_isReversePhase ? -_animation.value : math.pi / 2),
//               child: _lowerChild2,
//             )
//           ],
//         );

//   Widget _buildPanel() {
//     return _running
//         ? Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               _buildUpperFlipPanel(),
//               Padding(
//                 padding: EdgeInsets.only(top: widget.spacing),
//               ),
//               _buildLowerFlipPanel(),
//             ],
//           )
//         : _isStreamMode && _currentValue == null
//             ? Container()
//             : Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Transform(
//                       alignment: Alignment.bottomCenter,
//                       transform: Matrix4.identity()
//                         ..setEntry(3, 2, _perspective)
//                         ..rotateX(_zeroAngle),
//                       child: _upperChild1),
//                   Padding(
//                     padding: EdgeInsets.only(top: widget.spacing),
//                   ),
//                   Transform(
//                       alignment: Alignment.topCenter,
//                       transform: Matrix4.identity()
//                         ..setEntry(3, 2, _perspective)
//                         ..rotateX(_zeroAngle),
//                       child: _lowerChild1)
//                 ],
//               );
//   }
// }
