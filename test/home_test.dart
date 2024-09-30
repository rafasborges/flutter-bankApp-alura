import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'home_test.mocks.dart';

void main() {
  final MockBankHttp httpMock = MockBankHttp();
  testWidgets(
    'My widget has a text "spent"',
    (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: BankInherited(
          child: Home(
            api: MockBankHttp().dolarToReal(),
          ),
        ),
      ));
      expect(find.text("Spent"), findsOneWidget);
    },
  );
  testWidgets(
    "Testing MockBankHttp",
    (tester) async {
      when(httpMock.dolarToReal()).thenAnswer((_) async => ("5"));
      await tester.pumpWidget(MaterialApp(
        home: BankInherited(
          child: Home(
            api: httpMock.dolarToReal(),
          ),
        ),
      ));
      verify(httpMock.dolarToReal()).called(1);
    },
  );
}
