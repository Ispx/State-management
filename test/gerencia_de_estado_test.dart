import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_de_estado/gerencia_de_estado.dart';

void main() {
  late GerenciaDeEstado<int> controller;

  setUp(() {
    controller = GerenciaDeEstado(0);
  });

  test('Testando alteação de valores.', () {
    expect(controller.value, 0);
    controller.changeValue(1);
    expect(controller.value, 1);
  });

  test('Testando ouvinte da gerencia de estado', () {
    controller.changeValue(3);
    controller.listen((value) {
      expect(value, 3);
    });
    controller.changeValue(4);
    controller.listen((value) {
      expect(value, 4);
    });
  });
}
