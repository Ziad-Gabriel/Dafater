import 'package:flutter/material.dart';

class CurrentShift extends StatefulWidget {
  const CurrentShift({super.key});

  @override
  State<CurrentShift> createState() => _CurrentShiftState();
}

class _CurrentShiftState extends State<CurrentShift> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 8,
        children: [
          const AnimatedGreenCircle(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Active Shift',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 11,
                  color: Theme.of(context).colorScheme.shadow,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                'Morning 08:00-16:00',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AnimatedGreenCircle extends StatefulWidget {
  const AnimatedGreenCircle({super.key});

  @override
  State<AnimatedGreenCircle> createState() => _AnimatedGreenCircleState();
}

class _AnimatedGreenCircleState extends State<AnimatedGreenCircle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: const Color.fromARGB(255, 8, 198, 17),
      end: Colors.grey.shade600,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return CircleAvatar(radius: 5, backgroundColor: _colorAnimation.value);
      },
    );
  }
}
