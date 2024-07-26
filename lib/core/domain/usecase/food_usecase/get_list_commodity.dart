import '/core/domain/entity/food/food_entity.dart';
import '/core/domain/responsitory/food/food_responsitory.dart';

class GetListFoodUseCase {
 late final FoodResponsitory? foodResponsitory;
  GetListFoodUseCase({
    this.foodResponsitory,
  });

  Future<List<FoodEntity>?>getListFood() async{
    return await foodResponsitory?.getListFood();
}


}