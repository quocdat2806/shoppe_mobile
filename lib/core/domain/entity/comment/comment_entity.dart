class CommentEntity {
  late final String? avatar;

  late final String? name;

  late final int? starTotal;
  late final String? commentContent;
  late final String? accompanyingImage;
  late final String? createdAt;

  CommentEntity({
    this.name,
    this.avatar,
    this.starTotal,
    this.commentContent,
    this.accompanyingImage,
    this.createdAt
  });

}