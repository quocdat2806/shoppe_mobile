import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/home/presention/notifier/home_page_notifier.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(todoStateNotifierProvider.notifier).loadTodos();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(todoStateNotifierProvider);
    return Stack(
      children: [
        Positioned.fill(
          child: Scaffold(
            body: SafeArea(
              child: Container(
                color: Colors.white,
                child: asyncState.when(
                  data: (homeState) {
                    return const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("hihi"),
                      ],
                    );
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (error, _) => Center(child: Text('Error: $error')),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

// Widget _buildSearchWidget() {
//   final TextEditingController controller = TextEditingController();
//   return AppTextField(
//       controller: controller,
//       prefixIcon: const Icon(Icons.search),
//       hintText: 'Search');
// }
//
// Widget _buildBannerSliders() {
//   return CarouselSlider(
//     options: CarouselOptions(
//       autoPlay: true,
//       animateToClosest: true,
//       viewportFraction: 1,
//       aspectRatio: 3.25 / 1,
//       autoPlayAnimationDuration: const Duration(seconds: 3),
//       pageSnapping: true,
//       autoPlayCurve: Curves.easeInOutCubic,
//     ),
//     items: [1, 2, 3, 4, 5].map(
//           (i) {
//         return Builder(
//           builder: (BuildContext context) {
//             return const BannerItem();
//           },
//         );
//       },
//     ).toList(),
//   );
// }
//
// Widget _buildListDotOfSliders() {
//   return Positioned(
//     bottom: 20,
//     left: 20,
//     child: Row(
//       children: List.generate(4, (index) {
//         return const DotItem();
//       }),
//     ),
//   );
// }
//
// Widget _buildIndicatorCategoryList(){
//   return  Center(
//     child: SizedBox(
//       width: 60,
//       height: 4,
//       child:LinearProgressIndicator(
//         value: _scrollProgress,
//         valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
//         backgroundColor: Colors.orange,
//       ),
//     ),
//   );
// }
}
