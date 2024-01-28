import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/movie.dart';

class SelectedMovieContainer extends StatelessWidget {
  const SelectedMovieContainer({super.key, required this.builder});

  final ViewModelBuilder<Movie> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
      converter: (Store<AppState> store) {
        return store.state.selectedMovie!;
      },
      builder: builder,
    );
  }
}
