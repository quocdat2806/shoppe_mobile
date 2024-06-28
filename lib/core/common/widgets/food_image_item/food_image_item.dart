import 'package:flutter/material.dart';
import 'package:shoppe/core/common/widgets/images/app_cache_image.dart';

class FoodImageItem extends StatelessWidget {
  final String url;

  const FoodImageItem({super.key,this.url =''});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppCacheImage(
          url: url,
        ),
      ],
    );
  }
  Widget _buildSaleOfLabel(){
    return Column(
      children: [
        
      ],
    );
  }


}
