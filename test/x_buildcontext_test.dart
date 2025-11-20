import 'package:extensionx/extensionx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('xBuildContext-Nullable', () {
    testWidgets('xIsNull', (tester) async {
      BuildContext? context;
      expect(context.xIsNull, isTrue);

      BuildContext? capturedContext;
      await tester.pumpWidget(
        Builder(
          builder: (context) {
            capturedContext = context;
            return const SizedBox();
          },
        ),
      );
      expect(capturedContext.xIsNull, isFalse);
    });
  });

  group('xBuildContext', () {
    testWidgets('xMediaQuery', (tester) async {
      late BuildContext capturedContext;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(400, 800)),
          child: Builder(
            builder: (context) {
              capturedContext = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(capturedContext.xMediaQuery.size, const Size(400, 800));
    });

    testWidgets('xTheme', (tester) async {
      late BuildContext capturedContext;
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(primaryColor: Colors.red),
          home: Builder(
            builder: (context) {
              capturedContext = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(capturedContext.xTheme.primaryColor, Colors.red);
    });

    testWidgets('xSize', (tester) async {
      late BuildContext capturedContext;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(360, 720)),
          child: Builder(
            builder: (context) {
              capturedContext = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(capturedContext.xSize, const Size(360, 720));
      expect(capturedContext.xSize.width, 360);
      expect(capturedContext.xSize.height, 720);
    });

    testWidgets('xWidth', (tester) async {
      late BuildContext capturedContext;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(500, 900)),
          child: Builder(
            builder: (context) {
              capturedContext = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(capturedContext.xWidth, 500);
    });

    testWidgets('xHeight', (tester) async {
      late BuildContext capturedContext;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(400, 850)),
          child: Builder(
            builder: (context) {
              capturedContext = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(capturedContext.xHeight, 850);
    });

    testWidgets('xViewInsetsBottom', (tester) async {
      late BuildContext capturedContext;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(viewInsets: EdgeInsets.only(bottom: 42)),
          child: Builder(
            builder: (context) {
              capturedContext = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(capturedContext.xViewInsetsBottom, 42);
    });

    testWidgets('xIsMobile', (tester) async {
      late BuildContext ctx;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(500, 800)),
          child: Builder(
            builder: (context) {
              ctx = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(ctx.xIsMobile, isTrue);

      late BuildContext ctx1;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(600, 800)),
          child: Builder(
            builder: (context) {
              ctx1 = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(ctx1.xIsMobile, isFalse);
    });

    testWidgets('xIsTablet', (tester) async {
      late BuildContext ctx;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(800, 1000)),
          child: Builder(
            builder: (context) {
              ctx = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(ctx.xIsTablet, isTrue);

      late BuildContext ctx1;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(1200, 1000)),
          child: Builder(
            builder: (context) {
              ctx1 = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(ctx1.xIsTablet, isFalse);
    });

    testWidgets('xIsDesktop', (tester) async {
      late BuildContext ctx;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(1300, 800)),
          child: Builder(
            builder: (context) {
              ctx = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(ctx.xIsDesktop, isTrue);

      late BuildContext ctx1;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(1199, 800)),
          child: Builder(
            builder: (context) {
              ctx1 = context;
              return const SizedBox();
            },
          ),
        ),
      );
      expect(ctx1.xIsDesktop, isFalse);
    });

    testWidgets('xTextTheme', (tester) async {
      late BuildContext ctx;

      final customTextTheme = const TextTheme(
        bodyLarge: TextStyle(fontSize: 20),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(textTheme: customTextTheme),
          home: Builder(
            builder: (context) {
              ctx = context;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(ctx.xTextTheme.bodyLarge?.fontSize, 20);
      expect(ctx.xTextTheme, isA<TextTheme>());
    });

    testWidgets('xColorScheme', (tester) async {
      late BuildContext ctx;

      final customColorScheme = const ColorScheme.light(
        primary: Colors.red,
        secondary: Colors.blue,
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(colorScheme: customColorScheme),
          home: Builder(
            builder: (context) {
              ctx = context;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(ctx.xColorScheme.primary, Colors.red);
      expect(ctx.xColorScheme.secondary, Colors.blue);
      expect(ctx.xColorScheme, isA<ColorScheme>());
    });
  });
}
