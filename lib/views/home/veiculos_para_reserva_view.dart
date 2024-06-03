import 'package:cursomms/model/veiculo_dto.dart';
import 'package:cursomms/service/veiculo_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VeiculosParaReservaView extends StatefulWidget {
  VeiculosParaReservaView({super.key});

  @override
  State<VeiculosParaReservaView> createState() =>
      _VeiculosParaReservaViewState();
}

class _VeiculosParaReservaViewState extends State<VeiculosParaReservaView> {
  Future<List<VeiculoDto>>? _future;
  final VeiculoService _veiculoService = VeiculoService();

  @override
  void initState() {
    super.initState();
    _future = _fetch();
  }

  Future<List<VeiculoDto>> _fetch() async {
    return _veiculoService.buscarTodosVeiculos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              _future = _fetch();
            });
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.only(top: 25),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1, color: Color(0xFFFF3C4B)),
                      bottom: BorderSide(width: 1, color: Color(0xFFFF3C4B)),
                    ),
                  ),
                  child: FutureBuilder<List<VeiculoDto>>(
                    future: _future,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (snapshot.data == null) {
                        return Text('nenhum');
                      }

                      List<VeiculoDto> listaCarros = snapshot.data!;
                      return ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: listaCarros.length,
                        itemBuilder: (context, index) {
                          VeiculoDto veiculo = listaCarros[index];
                          return Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(veiculo.veiTxNome ?? '----'),
                                Text(veiculo.veiTxMarca ?? '----')
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
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
        ),
      ),
    );
  }
}
