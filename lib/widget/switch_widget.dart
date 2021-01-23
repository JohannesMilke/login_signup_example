import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchWidget({
    @required this.title,
    @required this.value,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: () => onChanged(!value),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Transform.scale(
          scale: 1.3,
          child: Switch(
            value: value,
            activeTrackColor: Theme.of(context).accentColor,
            onChanged: onChanged,
          ),
        ),
      );
}
