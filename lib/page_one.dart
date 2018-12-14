import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  void initState() {
    super.initState();
    final QuickActions quickActions = const QuickActions();
    quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_main') {
        Navigator.pushNamed(context, '/PageTwo');
      }
    });

    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'action_main', localizedTitle: 'Main view', icon: 'AppIcon'),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page One"),
      ),
    );
  }
}
