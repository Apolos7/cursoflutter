import 'package:cursomms/home/fatia_alugueis_ativos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFFF3C4B)),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.account_circle_outlined),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Olá\n',
                        style: TextStyle(
                            color: Color(0xFFFF3C4B), fontFamily: 'Inter'),
                      ),
                      TextSpan(
                        text: 'Sra. Gabi',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Goldman'),
                      )
                    ],
                  ),
                )
              ],
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
          ),
          const SliverToBoxAdapter(
            child: FatiaAlugeisAtivos(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/logo_app_cinza.svg'),
                  const Text(
                    'Vesion Figma Project',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFCFCFCF),
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
