import 'package:flutter/material.dart';

class TapboxA extends StatefulWidget {
  const TapboxA({Key? key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inative',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      width: 220.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: _active ? Colors.lightBlue[200] : Colors.grey[600],
      ),
      ),
      
    );
  }
}