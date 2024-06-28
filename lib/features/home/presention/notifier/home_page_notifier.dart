import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/data/datasource/food/food_datasource.dart';
import 'package:shoppe/core/data/datasource/food/food_datasource_ipl.dart';
import 'package:shoppe/core/data/responsitory/food/food_responsitory_ipl.dart';
import 'package:shoppe/core/domain/responsitory/food/food_responsitory.dart';
import 'package:shoppe/core/domain/usecase/food_usecase/GetListFood.dart';
import 'package:shoppe/core/network/api_utils.dart';
import 'package:shoppe/features/home/presention/state/home_state.dart';
import 'package:shoppe/features/home/presention/state/home_state_notifier.dart';

// Data Source
final todoDataSourceProvider = Provider<FoodDatasource>((ref) {
  return FoodDataSourceImpl(apiClient: ApiUtil.apiClient);
});

// Repository
final todoRepositoryProvider = Provider<FoodResponsitory>((ref) {
  final dataSource = ref.watch(todoDataSourceProvider);
  return FoodRepositoryImpl(dataSource);
});

// Use Cases
final getTodosProvider = Provider<GetListFood>((ref) {
  final repository = ref.watch(todoRepositoryProvider);
  return GetListFood(foodResponsitory: repository);
});

// State Notifier
final todoStateNotifierProvider =
StateNotifierProvider<HomeStateNotifier, AsyncValue<HomeState>>((ref) {
  final getTodos = ref.watch(getTodosProvider);
  return HomeStateNotifier(
    getListFoodUseCase: getTodos,
  );
});
