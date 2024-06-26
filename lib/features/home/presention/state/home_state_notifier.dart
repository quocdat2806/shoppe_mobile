import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/domain/entity/food/food_entity.dart';
import 'package:shoppe/core/domain/usecase/food_usecase/GetListFood.dart';
import 'package:shoppe/features/home/presention/state/home_state.dart';

class HomeStateNotifier extends StateNotifier< AsyncValue< HomeState>> {
  final GetListFood? getListFoodUseCase;
  HomeStateNotifier({
    this.getListFoodUseCase,
  }) : super(const AsyncValue.loading());

  Future< List<FoodEntity>?> loadTodos() async {
    state = const AsyncValue.loading();
    try {
      Future.delayed(const Duration(seconds: 2),(){
        state = AsyncValue.data(
          HomeState(
            listFoodEntity: [
              FoodEntity(image: "hihi",name: "dat",discountPercent: 10)
            ],
            isLoading: false,
            errorMessage: null,
          ),
        );
        // return [
        //   FoodEntity(image: "hihi",name: "dat",discountPercent: 10)
        // ];
      });
      // List<FoodEntity>? todos = await getListFoodUseCase?.getListFood();
      // state = state.copyWith(listFoodEntity: [], isLoading: false);

    } catch (e) {
      state = AsyncValue.error(e,StackTrace.fromString(e.toString()));
    }
    return [];
  }
}