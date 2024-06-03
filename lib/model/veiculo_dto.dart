class VeiculoDto {
  int? veiNrId;
  String? veiTxNome;
  String? veiTxMarca;
  String? veiTxTipo;
  int? usuNrId;
  String? veiTxModelo;
  int? veiNrAno;
  String? veiTxCor;
  double? veiNrPesoKg;
  int? veiNrMotorCc;
  String? veiTxTipoCombustivel;
  int? veiNrNumeroPassageiros;

  VeiculoDto(
      {this.veiNrId,
        this.veiTxNome,
        this.veiTxMarca,
        this.veiTxTipo,
        this.usuNrId,
        this.veiTxModelo,
        this.veiNrAno,
        this.veiTxCor,
        this.veiNrPesoKg,
        this.veiNrMotorCc,
        this.veiTxTipoCombustivel,
        this.veiNrNumeroPassageiros});

  VeiculoDto.fromJson(Map<String, dynamic> json) {
    veiNrId = json['veiNrId'];
    veiTxNome = json['veiTxNome'];
    veiTxMarca = json['veiTxMarca'];
    veiTxTipo = json['veiTxTipo'];
    usuNrId = json['usuNrId'];
    veiTxModelo = json['veiTxModelo'];
    veiNrAno = json['veiNrAno'];
    veiTxCor = json['veiTxCor'];
    veiNrPesoKg = json['veiNrPesoKg'];
    veiNrMotorCc = json['veiNrMotorCc'];
    veiTxTipoCombustivel = json['veiTxTipoCombustivel'];
    veiNrNumeroPassageiros = json['veiNrNumeroPassageiros'];
  }
}