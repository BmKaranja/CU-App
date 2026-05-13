import 'package:flutter/material.dart';

class AppBarProvider extends ChangeNotifier {
  static const String _initialTitle = 'UoEm CU';
  String _title;
  List<Widget>? _actions;
  Color? _backgroundColor;

  AppBarProvider() : _title = _initialTitle;

  String get title => _title;
  List<Widget>? get actions => _actions;
  Color? get backgroundColor => _backgroundColor;

  /// Updates the AppBar state. Parameters are optional; if null, 
  /// it retains the current title or clears actions/colors.
  void update({
    String? title,
    List<Widget>? actions,
    Color? backgroundColor,
  }) {
    _title = title ?? _title;
    _actions = actions;
    _backgroundColor = backgroundColor;
    notifyListeners();
  }

  void reset() {
    update(title: _initialTitle, actions: null, backgroundColor: null);
  }
}