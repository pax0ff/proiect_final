import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/movie.dart';

class MoviesContainer extends StatelessWidget {
  const MoviesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Movie>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Movie>>(
      converter: (Store<AppState> store) {
        return store.state.movies;
      },
      builder: builder,
    );
  }
}
