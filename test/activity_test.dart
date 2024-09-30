import 'package:estilizacao_componentes/components/activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// Caminho para o widget

void main() {
  testWidgets('Activity widget should display icon and title',
      (WidgetTester tester) async {
    // Cria o widget
    const testIcon = Icon(Icons.home);
    const testTitle = 'Home';

    await tester.pumpWidget(const MaterialApp(
      home: Activity(mainIcon: testIcon, cardTitle: testTitle),
    ));

    // Verifica se o ícone está presente
    expect(find.byIcon(Icons.home), findsOneWidget);

    // Verifica se o título está presente
    expect(find.text('Home'), findsOneWidget);
  });
}
