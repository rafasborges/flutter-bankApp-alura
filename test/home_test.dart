import 'package:estilizacao_componentes/data/bank_http.dart';
import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

void main() {
  testWidgets(
    'My widget has a text "spent"',
    (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: BankInherited(
          child: const Home(),
        ),
      ));
      expect(find.text("Spent"), findsOneWidget);
    },
  );
}
