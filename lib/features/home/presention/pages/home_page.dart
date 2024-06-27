import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/home/presention/notifier/home_page_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   return Text("hihi");
  }


}
//
// class _HomePageWidgetState extends ConsumerState<HomePage> {
//   @override
//   void initState() {
//     super.initState();
//     final homePageNotifier = ref.read(todoStateNotifierProvider.notifier);
//     homePageNotifier.loadTodos();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final homePageState = ref.watch(todoStateNotifierProvider);
//     return const Text("hihi");
//   }
// }
