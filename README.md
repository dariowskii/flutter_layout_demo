# flutter_layout_demo

Demo creata per il Meetup [CounterApp & Flutter Forward Extended Modena](https://www.meetup.com/it-IT/flutter-modena/events/290997993/) incentrata sull'uso del `LayoutBuilder`:

File: [home_screen.dart](./lib/screens/home_screen.dart)

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1024) {
        return const DesktopHomeScreen();
      }

      if (constraints.maxWidth >= 600) {
        return const TabletHomeScreen();
      }

      return const MobileHomeScreen();
    });
  }
}
```

Made with ❤️ by [Dario Varriale](https://www.linkedin.com/in/dario-varriale/).