import 'package:shoppe/core/domain/entity/food/food_entity.dart';
import 'package:shoppe/core/enums/load_status.dart';

class HomeState {
  final List<FoodEntity>? listFoodEntity;
  final LoadStatus? loadStatus;
  final String? errorMessage;

  HomeState({
    this.listFoodEntity,
    this.loadStatus,
    this.errorMessage,
  });

  HomeState copyWith({
    List<FoodEntity>? listFoodEntity,
    LoadStatus? loadStatus,
    String? errorMessage,
  }) {
    return HomeState(
      listFoodEntity: listFoodEntity ?? this.listFoodEntity,
      loadStatus: loadStatus ?? this.loadStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
