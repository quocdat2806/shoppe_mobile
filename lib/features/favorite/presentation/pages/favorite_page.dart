import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/widgets/tabs_page/tab_page.dart';
import 'package:shoppe/features/favorite/presentation/widgets/tabs/latest_favorite_tab.dart';
import 'package:shoppe/features/favorite/presentation/widgets/tabs/near_me_favorite_tab.dart';

class FavoritePage extends ConsumerStatefulWidget {
  const FavoritePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return FavoriteChildPageState();
  }
}

class FavoriteChildPageState extends ConsumerState<ConsumerStatefulWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Text("Yeu thich"),
          TabPage(
            listTabs: ["Moi nhat", "gan toi"],
            listWidgets: [LatestFavoriteTab(), NearMeFavoriteTab()],
          ),
        ],
      ),
    );
  }
}
