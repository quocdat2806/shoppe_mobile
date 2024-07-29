// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shoppe/core/data/datasource/food/food_datasource.dart';
// import 'package:shoppe/core/data/datasource/food/food_datasource_ipl.dart';
// import 'package:shoppe/core/data/responsitory/food/food_responsitory_ipl.dart';
// import 'package:shoppe/core/domain/responsitory/food/food_responsitory.dart';
// import 'package:shoppe/core/domain/usecase/food_usecase/get_list_commodity.dart';
// import 'package:shoppe/core/network/api_utils.dart';
// import 'package:shoppe/features/home/presention/state/home_state.dart';
// import 'package:shoppe/features/home/presention/state/home_state_notifier.dart';
//
// // Data Source
// final todoDataSourceProvider = Provider<FoodDatasource>((ref) {
//   return FoodDataSourceImpl(apiClient: ApiUtil.apiClient);
// });
//
// // Repository
// final todoRepositoryProvider = Provider<FoodResponsitory>((ref) {
//   final dataSource = ref.watch(todoDataSourceProvider);
//   return FoodRepositoryImpl(dataSource);
// });
//
// // Use Cases
// final getTodosProvider = Provider<GetListFoodUseCase>((ref) {
//   final repository = ref.watch(todoRepositoryProvider);
//   return GetListFoodUseCase(foodResponsitory: repository);
// });
//
// // State Notifier
// final todoStateNotifierProvider =
// StateNotifierProvider<HomeStateNotifier, AsyncValue<HomeState>>((ref) {
//   final getTodos = ref.watch(getTodosProvider);
//   return HomeStateNotifier(
//     getListFoodUseCase: getTodos,
//   );
// });


import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shoppe/core/data/datasource/food/food_datasource_ipl.dart';
import 'package:shoppe/core/data/responsitory/food/food_responsitory_ipl.dart';
import 'package:shoppe/core/domain/usecase/food_usecase/get_list_commodity.dart';
import 'package:shoppe/core/enums/load_status.dart';
import 'package:shoppe/core/network/api_utils.dart';
import 'package:shoppe/features/home/presention/state/home_state.dart';

class HomePageHooks {
  final ValueNotifier<HomeState> homeState;
  final GetListFoodUseCase getListFoodUseCase;

  HomePageHooks(this.homeState, this.getListFoodUseCase);

  void getData() async {
    homeState.value = homeState.value.copyWith(loadStatus: LoadStatus.loading);
    final test = await getListFoodUseCase.getListFood();
    homeState.value = homeState.value.copyWith(loadStatus: LoadStatus.success);
    print("zzzz ${test}");
  }
}

HomePageHooks useHomeHooks() {
  final homeState = useState( HomeState());
  FoodDataSourceImpl todoDataSourceProvider() {
    return FoodDataSourceImpl(apiClient: ApiUtil.apiClient);
  }

  FoodRepositoryImpl foodRepositoryImpl() {
    return FoodRepositoryImpl(todoDataSourceProvider());
  }

  GetListFoodUseCase getListFoodUseCase() {
    return GetListFoodUseCase(foodResponsitory: foodRepositoryImpl());
  }
  return useMemoized(() => HomePageHooks(homeState, getListFoodUseCase()));
}
