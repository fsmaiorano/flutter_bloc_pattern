class HomeState {
  const HomeState();
}

// ------------------------------------------

class HomeLoadingState extends HomeState {
  const HomeLoadingState();
}

// ------------------------------------------

class HomeErrorState extends HomeState {
  final String message;

  const HomeErrorState(this.message);
}

// ------------------------------------------

class HomeLoadedState extends HomeState {
  final List<String> items;

  const HomeLoadedState(this.items);
}

// ------------------------------------------

class HomeEmptyListState extends HomeState {
  const HomeEmptyListState();
}
