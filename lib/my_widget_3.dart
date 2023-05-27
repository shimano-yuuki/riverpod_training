import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/s3.dart';
import 'package:flutter/material.dart';

class MyWidget3 extends ConsumerWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //WidgetRef refを追加する
    final s3 = ref.watch(s3NotifierProvider);

    final widget = s3.when(
        data: (d) => Text('$d'),
        error: (e, s) => Text('エラー $e'),
        loading: () => const Text('準備中'));

    final button = ElevatedButton(
      onPressed: () {
        final notifier = ref.read(s3NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Text('ボタン'),
    );
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        widget,
    button,
    ],);
  }
}
