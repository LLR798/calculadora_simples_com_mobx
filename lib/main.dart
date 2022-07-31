import 'package:calculadora_controller/calculadora_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(Calculadora());

class Calculadora extends StatelessWidget {
  Calculadora({Key? key}) : super(key: key);

  final CalculadoraController calculadora = CalculadoraController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator app with MobX',
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Observer(
              builder: (_) => Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Numeros(calculadora.onPrimeiroNumeroEscolhido),
                    const Divider(),
                    Operacoes(calculadora.onOperacaoEscolhida),
                    const Divider(),
                    Numeros(calculadora.onSegundoNumeroEscolhido),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BotaoCalcular(calculadora.todasOpcoesForamEscolhidas()
                            ? calculadora.onClickBotao
                            : null),
                        BotaoZerar(calculadora.onClickBotaoZerar)
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text(
                          'Operação: ',
                          style: TextStyle(fontSize: 28),
                        ),
                        calculadora.primeiroNumero != null
                            ? Text(
                                calculadora.primeiroNumero.toString(),
                                style: const TextStyle(fontSize: 28),
                              )
                            : const SizedBox.shrink(),
                        calculadora.operacaoEscolhida != null
                            ? Text(
                                calculadora.operacaoEscolhida!,
                                style: const TextStyle(fontSize: 28),
                              )
                            : const SizedBox.shrink(),
                        calculadora.segundoNumero != null
                            ? Text(
                                calculadora.segundoNumero.toString(),
                                style: const TextStyle(fontSize: 28),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Resultado: ',
                          style: TextStyle(fontSize: 28),
                        ),
                        calculadora.resultado != null
                            ? Text(
                                calculadora.resultado!.toStringAsFixed(2),
                                style: const TextStyle(fontSize: 28),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BotaoZerar extends StatelessWidget {
  const BotaoZerar(this.onClickBotao, {Key? key}) : super(key: key);

  final VoidCallback onClickBotao;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClickBotao,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color(0xFFFF002A),
        ),
      ),
      child: const Text(
        'Zerar',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFFF2F2F2),
        ),
      ),
    );
  }
}

class BotaoCalcular extends StatelessWidget {
  const BotaoCalcular(this.onClickBotao, {Key? key}) : super(key: key);

  final VoidCallback? onClickBotao;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClickBotao,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color(0xFF0445CE),
        ),
      ),
      child: const Text(
        'Calcular',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFFF2F2F2),
        ),
      ),
    );
  }
}

class Operacoes extends StatelessWidget {
  const Operacoes(this.onOperacaoEscolhida, {Key? key}) : super(key: key);

  final Function(String) onOperacaoEscolhida;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => onOperacaoEscolhida('+'),
          child: const Card(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('-'),
          child: const Card(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                '-',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('*'),
          child: const Card(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                '*',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('/'),
          child: const Card(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                '/',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('%'),
          child: const Card(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                '%',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Numeros extends StatelessWidget {
  const Numeros(this.onNumeroEscolhido, {Key? key}) : super(key: key);

  final Function(int) onNumeroEscolhido;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: getNumeros(),
    );
  }

  List<Widget> getNumeros() {
    List<Widget> numeros = [];

    for (int i = 0; i < 10; i++) {
      numeros.add(
        GestureDetector(
          onTap: () => onNumeroEscolhido(i),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                i.toString(),
                style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return numeros;
  }
}
