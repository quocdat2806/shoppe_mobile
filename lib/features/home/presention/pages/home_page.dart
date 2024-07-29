import 'package:flutter/material.dart';
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
import 'package:flutter_hooks/flutter_hooks.dart';
class HomePage extends HookWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final hook = useHomeHooks();
    final TextEditingController controller = useTextEditingController();
    hook.getData();
    return Stack(
      children: [
        Positioned.fill(
          child: Scaffold(
            body: SafeArea(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        const Header(),
                        const SizedBox(height: 12),
                        Search(
                          controller: controller,
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
                        const CategoryTitle(title: 'flash sale'),
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
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


