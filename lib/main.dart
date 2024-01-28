import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'firebase_options.dart';
import 'src/actions/get_current_user.dart';
import 'src/api/auth_api.dart';
import 'src/api/movies_api.dart';
import 'src/epics/app_epics.dart';
import 'src/models/app_state.dart';
import 'src/presentation/create_user.dart';
import 'src/presentation/home_page.dart';
import 'src/presentation/login_user.dart';
import 'src/presentation/movie_page.dart';
import 'src/presentation/profile_page.dart';
import 'src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Client client = Client();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final MoviesApi api = MoviesApi(client, firestore);
  final AuthApi authApi = AuthApi(auth: auth, storage: storage, firestore: firestore);
  final AppEpics appEpic = AppEpics(api, authApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpic.call).call,
    ],
  );
  store.dispatch(const GetCurrentUser());

  runApp(ScrollableApp(store: store));
}

class ScrollableApp extends StatelessWidget {
  const ScrollableApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          '/createUser': (BuildContext context) => const CreateUserPage(),
          '/loginUser': (BuildContext context) => const LoginUserPage(),
          '/profile': (BuildContext context) => const ProfilePage(),
          '/movie': (BuildContext context) => const MoviePage(),
        },
      ),
    );
  }
}
