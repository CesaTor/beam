import 'package:beam/app/app.dart';
import 'package:beam/screens/home/view/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
