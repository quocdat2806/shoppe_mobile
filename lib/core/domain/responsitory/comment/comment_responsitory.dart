import 'package:shoppe/core/domain/entity/comment/comment_entity.dart';

abstract class CommentResponsitory{
  Future<List<CommentEntity>> getListComment();
  Future<void> addComment(CommentEntity comment);
  Future<void> updateComment(CommentEntity comment);
  Future<void> deleteComment(String id);
}