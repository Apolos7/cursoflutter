import 'package:cursomms/components/botao_navegacao_widget.dart';
import 'package:flutter/material.dart';

class FatiaAlugeisAtivos extends StatelessWidget {
  const FatiaAlugeisAtivos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 192,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFFF3C4B)),
          bottom: BorderSide(color: Color(0xFFFF3C4B)),
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aluguéis ativos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Goldman',
                    ),
                  ),
                  Text(
                    'Seus veículos atuais',
                    style: TextStyle(
                      color: Color(0xFFFF3C4B),
                      fontSize: 14,
                      fontFamily: 'Goldman',
                    ),
                  ),
                ],
              ),
              BotaoNavegacaoWidget()
            ],
          ),
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(vertical: 9.5, horizontal: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                  image:
                      Image.asset('assets/images/carro_place_holder.png').image,
                  alignment: Alignment.centerRight),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aluguéis ativos',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Goldman',
                  ),
                ),
                Text(
                  'Seus veículos atuais',
                  style: TextStyle(
                    color: Color(0xFFFF3C4B),
                    fontSize: 14,
                    fontFamily: 'Goldman',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
