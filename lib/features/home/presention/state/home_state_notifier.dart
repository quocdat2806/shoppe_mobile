import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/domain/entity/food/food_entity.dart';
import 'package:shoppe/core/domain/usecase/food_usecase/get_list_commodity.dart';
import 'package:shoppe/features/home/presention/state/home_state.dart';

// class HomeStateNotifier extends StateNotifier< AsyncValue< HomeState>> {
//   final GetListFoodUseCase? getListFoodUseCase;
//   HomeStateNotifier({
//     this.getListFoodUseCase,
//   }) : super(const AsyncValue.loading());
//
//   Future< List<FoodEntity>?> loadTodos() async {
//     state = const AsyncValue.loading();
//     try {
//       Future.delayed(const Duration(seconds: 2),(){
//         state = AsyncValue.data(
//           HomeState(
//             listFoodEntity: [
//               FoodEntity(image: "hihi",name: "dat",discountPercent: 10)
//             ],
//             loadStatus: false,
//             errorMessage: null,
//           ),
//         );
//       });
//     } catch (e) {
//       state = AsyncValue.error(e,StackTrace.fromString(e.toString()));
//     }
//     return [];
//   }
// }