
import '/core/data/datasource/food/food_datasource.dart';
import '/core/domain/entity/food/food_entity.dart';
import '/core/domain/responsitory/food/food_responsitory.dart';

class FoodRepositoryImpl implements FoodResponsitory {
  final FoodDatasource dataSource;
  FoodRepositoryImpl(this.dataSource);
  @override
  Future<void> addFood(FoodEntity todo) {
    // TODO: implement addFood
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFood(String id) {
    // TODO: implement deleteFood
    throw UnimplementedError();
  }

  @override
  Future<List<FoodEntity>> getListFood() {
    // TODO: implement getListFood
    throw UnimplementedError();
  }

  @override
  Future<void> updateTodoStatus(String id, bool isCompleted) {
    // TODO: implement updateTodoStatus
    throw UnimplementedError();
  }
 
}
