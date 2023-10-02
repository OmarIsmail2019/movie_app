import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/features/movie/populer/model/populer_model.dart';
import 'package:movie_app/features/movie/populer/view_model/cubit/populer_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Populer populer = Populer();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PopulerCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  BlocBuilder<PopulerCubit, PopulerState>(
            builder: (context, state) {
              if (state is GetPopulerMovies) {
                populer = (state).allPopulerMovie;
                return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              '$imageUrl${populer.results![0].backdropPath}'),
                        ),
                      ),
                    );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )
    );
  }
}
