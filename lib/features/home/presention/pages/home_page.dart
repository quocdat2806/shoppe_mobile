import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/widgets/category_title/category_title.dart';
import 'package:shoppe/features/home/presention/widgets/banner_list.dart';
import 'package:shoppe/features/home/presention/widgets/header.dart';
import 'package:shoppe/features/home/presention/widgets/list_category.dart';
import 'package:shoppe/features/home/presention/widgets/list_item_commodity_horizontal.dart';
import 'package:shoppe/features/home/presention/widgets/list_item_commodity_vertical.dart';
import 'package:shoppe/features/home/presention/widgets/search.dart';
import '/features/home/presention/notifier/home_page_notifier.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  final TextEditingController _controller = TextEditingController();

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
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            const Header(),
                            const SizedBox(height: 12),
                            Search(
                              controller: _controller,
                              hintText: "What are you finding",
                              prefixIcon: SvgPicture.asset(
                                AppSVGs.icSearch,
                                width: 20,
                                height: 20,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const BannerList(),
                            const SizedBox(height: 12),
                            const CategoryTitle(title: 'Danh muc'),
                            const SizedBox(height: 12),
                            const ListCategory(),
                            const SizedBox(height: 12),
                            const CategoryTitle(title: 'Khuyến mãi'),
                            const SizedBox(height: 12),
                            const CategoryTitle(title: 'Top'),
                            const SizedBox(height: 12),
                            const CategoryTitle(title: 'Mới ra mắt'),
                            const SizedBox(height: 12),
                            const CategoryTitle(title: 'Có thể bạn sẽ thích'),
                            const SizedBox(height: 12),
                            const ListItemCommodityHorizontal(),
                            const SizedBox(height: 24),
                            const CategoryTitle(title: 'Dành cho bạn'),
                            const SizedBox(height: 24),
                            const ListItemCommodityVertical(),
                          ],
                        ),
                      ),
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
}
