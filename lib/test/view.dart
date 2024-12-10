import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/test/state.dart';

import 'logic.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final TestLogic logic = Get.put(TestLogic());
  final TestState state = Get.find<TestLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Abc"),
    );
  }

  @override
  void dispose() {
    Get.delete<TestLogic>();
    super.dispose();
  }
}
