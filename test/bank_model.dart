import "package:estilizacao_componentes/models/bank.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group(
    'Bank model deposits test',
    () {
      test('Bank model points should turn into 10', () {
        final bank = BankModel();
        bank.deposit(10);
        expect(bank.points, 10);
      });
      test(
        'Bank model available should turn into 10',
        () {
          final bank = BankModel();
          bank.deposit(10);
          expect(bank.available, 10);
        },
      );
      test(
        'Bank model earned should turn into 10',
        () {
          final bank = BankModel();
          bank.deposit(10);
          expect(bank.earned, 10);
        },
      );
    },
  );
}
