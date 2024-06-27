import '/core/domain/entity/food/food_entity.dart';
import '/core/domain/responsitory/food/food_responsitory.dart';

class GetListFood {
 late final FoodResponsitory? foodResponsitory;
  GetListFood({
    this.foodResponsitory,
  });

  Future<List<FoodEntity>?>getListFood() async{
    return await foodResponsitory?.getListFood();
}


}