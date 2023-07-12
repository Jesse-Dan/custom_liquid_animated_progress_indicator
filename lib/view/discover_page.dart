import 'package:flutter/material.dart';
import 'wave_view.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100000),
    );
    animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bluetooth Page'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 60,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(80.0),
                  bottomLeft: Radius.circular(80.0),
                  bottomRight: Radius.circular(80.0),
                  topRight: Radius.circular(80.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: const Offset(2, 2),
                    blurRadius: 4),
              ],
            ),
            child: const WaveView(
              percentageValue: 22.0,
            ),
          ),
        ));
  }
}
