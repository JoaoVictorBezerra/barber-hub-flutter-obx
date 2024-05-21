abstract class BarberShopStates {}

class InitialBarberShopState extends BarberShopStates {}

class LoadingBarberShopState extends BarberShopStates {
  final bool loading;

  LoadingBarberShopState({
    required this.loading,
  });
}

class LoadedBarberShopState extends BarberShopStates {}

class ErrorBarberShopState extends BarberShopStates {
  final String message;

  ErrorBarberShopState({
    required this.message,
  });
}
