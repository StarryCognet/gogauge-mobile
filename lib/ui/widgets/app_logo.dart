import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = 56, this.padded = false});

  final double size;
  final bool padded;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: padded ? EdgeInsets.all(size * 0.16) : EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size * 0.24),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A5B4BC4),
            blurRadius: 18,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size * 0.24),
        child: SvgPicture.asset(
          'assets/logo.svg',
          fit: BoxFit.contain,
          semanticsLabel: 'GoGauge',
        ),
      ),
    );
  }
}
