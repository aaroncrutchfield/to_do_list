import 'package:flutter_test/flutter_test.dart';
import 'package:to_do_list/app/app.dart';
import 'package:to_do_list/core/di/injectable.dart';
import 'package:to_do_list/core/router/app_router.dart';
import 'package:to_do_list/features/home/view/home_page.dart';

void main() {
  group('App', () {
    setUp(() async {
      // Register the router
      getIt.registerSingleton<AppRouter>(AppRouter());
    });

    tearDown(getIt.reset);

    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(const App());
      // Add a pump and settle to ensure all animations
      // and async operations complete
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
