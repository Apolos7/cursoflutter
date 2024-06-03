import 'dart:convert';

import 'package:cursomms/model/veiculo_dto.dart';
import 'package:http/http.dart' as http;

class VeiculoService {
  static final VeiculoService _instance = VeiculoService._internal();

  factory VeiculoService() {
    return _instance;
  }

  VeiculoService._internal();

  Future<List<VeiculoDto>> buscarTodosVeiculos() async {
    var url = Uri.http('192.168.3.8:8080', 'v1/veiculos');
    List<VeiculoDto> listaVeiculos = [];
    try {
      var response = await http.get(url);

      var bodyConvertidoUtf8 = utf8.decode(response.bodyBytes);
      var mapResponse = jsonDecode(bodyConvertidoUtf8);
      var listaItens = mapResponse['content'] as Iterable;

      for (var item in listaItens) {
        listaVeiculos.add(VeiculoDto.fromJson(item));
      }
    } catch (error) {
      print(error);
    }

    return listaVeiculos;
  }
}
