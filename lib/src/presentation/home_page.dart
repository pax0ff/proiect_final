import 'package:flutter/material.dart';

import '../actions/get_reviews.dart';
import '../actions/list_movies.dart';
import '../actions/set.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/movie.dart';
import 'containers/app_user_container.dart';
import 'containers/is_loading_container.dart';
import 'containers/movies_container.dart';
import 'extensions.dart';
import 'user_picture.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.dispatch(const ListMovies());
    controller.addListener(_onScroll);
  }

  void _onScroll() {
    final double offset = controller.offset;
    final double maxExtent = controller.position.maxScrollExtent;

    if (!context.state.isLoading && offset > maxExtent * .8) {
      context.dispatch(const ListMovies());
    }
  }

  @override
  void dispose() {
    controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MoviesContainer(
      builder: (BuildContext context, List<Movie> movies) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            return RefreshIndicator(
              onRefresh: () async {
                textController.clear();
                context
                  ..dispatch(const SetQuery(''))
                  ..dispatch(const ListMovies());

                await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
              },
              child: AppUserContainer(
                builder: (BuildContext context, AppUser? user) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Movies'),
                      actions: <Widget>[
                        if (user != null)
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: const UserPicture(),
                          )
                      ],
                    ),
                    body: Column(
                      children: <Widget>[
                        Expanded(
                          child: CustomScrollView(
                            controller: controller,
                            slivers: <Widget>[
                              SliverToBoxAdapter(
                                child: TextField(
                                  controller: textController,
                                  onChanged: (String value) {
                                    context
                                      ..dispatch(SetQuery(value))
                                      ..dispatch(const ListMovies());
                                  },
                                ),
                              ),
                              if (!isLoading && movies.isEmpty)
                                const SliverToBoxAdapter(
                                  child: Center(
                                    child: Text('No items found.'),
                                  ),
                                ),
                              SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    final Movie movie = movies[index];

                                    return GestureDetector(
                                      onTap: () {
                                        if (user != null) {
                                          context
                                            ..dispatch(SetSelectedMovie(movie))
                                            ..dispatch(GetReviews(movie.id));
                                          Navigator.pushNamed(context, '/movie');
                                        } else {
                                          Navigator.pushNamed(context, '/createUser');
                                        }
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Expanded(
                                                child: Column(
                                                  children: <Widget>[
                                                    Text('${movie.year}'),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.yellow,
                                                        borderRadius: BorderRadius.circular(16),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                                        child: Text('${movie.rating}'),
                                                      ),
                                                    ),
                                                    ...movie.genres.map((String genre) {
                                                      return Text(genre);
                                                    }),
                                                  ],
                                                ),
                                              ),
                                              Image.network(
                                                movie.mediumImage,
                                                height: 345,
                                                errorBuilder:
                                                    (BuildContext context, Object error, StackTrace? stackTrace) {
                                                  return const Placeholder(
                                                    fallbackHeight: 345,
                                                    fallbackWidth: 200,
                                                  );
                                                },
                                                loadingBuilder:
                                                    (BuildContext context, Widget widget, ImageChunkEvent? progress) {
                                                  if (progress == null) {
                                                    return widget;
                                                  }

                                                  return SizedBox(
                                                    height: 345,
                                                    child: Center(
                                                      child: CircularProgressIndicator(
                                                        value: progress.cumulativeBytesLoaded /
                                                            (progress.expectedTotalBytes ?? 1),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              const Spacer(),
                                            ],
                                          ),
                                          ListTile(
                                            title: Text(movie.title),
                                            subtitle: movie.summary.isNotEmpty
                                                ? Text(
                                                    movie.summary,
                                                    maxLines: 5,
                                                  )
                                                : null,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  childCount: movies.length,
                                ),
                              ),
                              if (isLoading)
                                SliverToBoxAdapter(
                                  child: Padding(
                                    padding: MediaQuery.paddingOf(context),
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
