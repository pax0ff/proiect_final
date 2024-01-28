import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/change_picture.dart';
import '../actions/create_review.dart';
import '../actions/create_user.dart';
import '../actions/get_current_user.dart';
import '../actions/get_reviews.dart';
import '../actions/get_users.dart';
import '../actions/list_movies.dart';
import '../actions/login.dart';
import '../actions/set.dart';
import '../actions/sign_out.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/movie.dart';
import '../models/review.dart';

// State + Action => State
AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(<Reducer<AppState>>[
    TypedReducer<AppState, ListMoviesStart>(_listMoviesStart).call,
    TypedReducer<AppState, ListMoviesSuccessful>(_listMoviesSuccessful).call,
    TypedReducer<AppState, ListMoviesError>(_listMoviesError).call,
    TypedReducer<AppState, SetQuery>(_setQuery).call,
    TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful).call,
    TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful).call,
    TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful).call,
    TypedReducer<AppState, LoginSuccessful>(_loginSuccessful).call,
    TypedReducer<AppState, ChangePictureSuccessful>(_changePictureSuccessful).call,
    TypedReducer<AppState, SetSelectedMovie>(_setSelectedMovie).call,
    TypedReducer<AppState, GetReviewsSuccessful>(_getReviewsSuccessful).call,
    TypedReducer<AppState, CreateReviewSuccessful>(_createReviewSuccessful).call,
    TypedReducer<AppState, GetUsersSuccessful>(_getUsersSuccessful).call,
  ])(state, action);
}

AppState _listMoviesStart(AppState state, ListMoviesStart action) {
  return state.copyWith(isLoading: true);
}

AppState _listMoviesSuccessful(AppState state, ListMoviesSuccessful action) {
  return state.copyWith(
    isLoading: false,
    page: state.page + 1,
    movies: <Movie>[...state.movies, ...action.movies],
  );
}

AppState _listMoviesError(AppState state, ListMoviesError action) {
  return state.copyWith(isLoading: false);
}

AppState _setQuery(AppState state, SetQuery action) {
  return state.copyWith(
    query: action.query,
    page: 1,
    movies: <Movie>[],
  );
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _changePictureSuccessful(AppState state, ChangePictureSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _setSelectedMovie(AppState state, SetSelectedMovie action) {
  return state.copyWith(selectedMovie: action.movie);
}

AppState _getReviewsSuccessful(AppState state, GetReviewsSuccessful action) {
  return state.copyWith(reviews: action.reviews);
}

AppState _createReviewSuccessful(AppState state, CreateReviewSuccessful action) {
  return state.copyWith(reviews: <Review>[action.review, ...state.reviews]);
}

AppState _getUsersSuccessful(AppState state, GetUsersSuccessful action) {
  return state.copyWith(
    users: <String, AppUser>{
      ...state.users,
      for (final AppUser user in action.users) user.uid: user,
    },
  );
}
