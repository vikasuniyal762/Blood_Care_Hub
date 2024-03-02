//
// enum HomePageState { initial, loading, success, error }
//
// class HomePageCubit extends Cubit<HomePageState> {
//   HomePageCubit() : super(HomePageState.initial);
//
//   // You can add methods to perform operations like fetching data
//
//   // Example method to simulate data loading
//   Future<void> fetchData() async {
//     emit(HomePageState.loading);
//
//     try {
//       // Perform data fetching operations here
//
//       // If successful
//       emit(HomePageState.success);
//     } catch (e) {
//       // If error occurs
//       emit(HomePageState.error);
//     }
//   }
// }
