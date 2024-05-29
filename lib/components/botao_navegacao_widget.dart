import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotaoNavegacaoWidget extends StatelessWidget {
  final void Function()? onTap;

  const BotaoNavegacaoWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemSound.play(SystemSoundType.click);
        onTap?.call();
      },
      child: Container(
        height: 43,
        width: 43,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: const Color(0xFFFF3C4B),
            width: 1,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/seta_diagonal.svg',
          ),
        ),
      ),
    );
  }
}
