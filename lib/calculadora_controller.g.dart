// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalculadoraController on CalculadoraControllerBase, Store {
  late final _$primeiroNumeroAtom =
      Atom(name: 'CalculadoraControllerBase.primeiroNumero', context: context);

  @override
  int? get primeiroNumero {
    _$primeiroNumeroAtom.reportRead();
    return super.primeiroNumero;
  }

  @override
  set primeiroNumero(int? value) {
    _$primeiroNumeroAtom.reportWrite(value, super.primeiroNumero, () {
      super.primeiroNumero = value;
    });
  }

  late final _$segundoNumeroAtom =
      Atom(name: 'CalculadoraControllerBase.segundoNumero', context: context);

  @override
  int? get segundoNumero {
    _$segundoNumeroAtom.reportRead();
    return super.segundoNumero;
  }

  @override
  set segundoNumero(int? value) {
    _$segundoNumeroAtom.reportWrite(value, super.segundoNumero, () {
      super.segundoNumero = value;
    });
  }

  late final _$operacaoEscolhidaAtom = Atom(
      name: 'CalculadoraControllerBase.operacaoEscolhida', context: context);

  @override
  String? get operacaoEscolhida {
    _$operacaoEscolhidaAtom.reportRead();
    return super.operacaoEscolhida;
  }

  @override
  set operacaoEscolhida(String? value) {
    _$operacaoEscolhidaAtom.reportWrite(value, super.operacaoEscolhida, () {
      super.operacaoEscolhida = value;
    });
  }

  late final _$resultadoAtom =
      Atom(name: 'CalculadoraControllerBase.resultado', context: context);

  @override
  double? get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double? value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  late final _$CalculadoraControllerBaseActionController =
      ActionController(name: 'CalculadoraControllerBase', context: context);

  @override
  void onClickBotao() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.onClickBotao');
    try {
      return super.onClickBotao();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onClickBotaoZerar() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.onClickBotaoZerar');
    try {
      return super.onClickBotaoZerar();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPrimeiroNumeroEscolhido(int numero) {
    final _$actionInfo =
        _$CalculadoraControllerBaseActionController.startAction(
            name: 'CalculadoraControllerBase.onPrimeiroNumeroEscolhido');
    try {
      return super.onPrimeiroNumeroEscolhido(numero);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSegundoNumeroEscolhido(int numero) {
    final _$actionInfo =
        _$CalculadoraControllerBaseActionController.startAction(
            name: 'CalculadoraControllerBase.onSegundoNumeroEscolhido');
    try {
      return super.onSegundoNumeroEscolhido(numero);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onOperacaoEscolhida(String operacao) {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.onOperacaoEscolhida');
    try {
      return super.onOperacaoEscolhida(operacao);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
primeiroNumero: ${primeiroNumero},
segundoNumero: ${segundoNumero},
operacaoEscolhida: ${operacaoEscolhida},
resultado: ${resultado}
    ''';
  }
}
