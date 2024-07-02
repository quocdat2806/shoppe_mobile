import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/widgets/category_title/category_title.dart';
import 'package:shoppe/core/common/widgets/current_location/app_location.dart';
import 'package:shoppe/core/common/widgets/text_field/app_text_field.dart';
import 'package:shoppe/features/home/presention/widgets/banner_item.dart';
import 'package:shoppe/features/home/presention/widgets/dot_item.dart';
import 'package:shoppe/features/home/presention/widgets/list_category.dart';
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
                    return  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         const AppLocationWidget(),
                        _buildSearchWidget(),
                        Stack(
                          children: [
                            _buildBannerSliders(),
                            _buildListDotOfSliders(),
                          ],
                        ),
                        const ListCategory(),
                        const CategoryTitle(
                          title: 'Bo suu tap',
                          trailingText: 'Xem tat ca',
                        ),

                        const CategoryTitle(
                            title: 'Flash sale',
                          trailingText: 'Xem tat ca',
                        ),
                        const CategoryTitle(
                          title: 'Top',
                          trailingText: 'Xem tat ca',
                        ),
                        const CategoryTitle(
                          title: 'Cua hang gan ban',
                          trailingText: 'Xem tat ca',
                        ),
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

  Widget _buildSearchWidget() {
    final TextEditingController controller = TextEditingController();
    return AppTextField(
      controller: controller,
      prefixIcon: const Icon(Icons.search),
      hintText: 'Search',
    );
  }

  Widget _buildBannerSliders() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        animateToClosest: true,
        viewportFraction: 1,
        aspectRatio: 3.25 / 1,
        autoPlayAnimationDuration: const Duration(seconds: 3),
        pageSnapping: true,
        autoPlayCurve: Curves.easeInOutCubic,
      ),
      items: [1, 2, 3, 4, 5].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return const BannerItem();
            },
          );
        },
      ).toList(),
    );
  }

  Widget _buildListDotOfSliders() {
    return Positioned(
      bottom: 20,
      left: 20,
      child: Row(
        children: List.generate(4, (index) {
          return const DotItem();
        }),
      ),
    );
  }

}
