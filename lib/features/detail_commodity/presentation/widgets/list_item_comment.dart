import 'package:flutter/material.dart';
import 'package:shoppe/features/detail_commodity/presentation/widgets/comment_item.dart';

class  ListItemComment extends StatelessWidget {
  const  ListItemComment({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(physics: const NeverScrollableScrollPhysics(),itemCount: 10,itemBuilder: (context,index){
      return const CommentItem();
    },shrinkWrap: true,);
  }
}
