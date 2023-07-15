import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ralali_cake_app/app.dart';
import 'package:ralali_cake_app/core/extensions/text_style_extension.dart';
import 'package:ralali_cake_app/core/theme/_themes.dart';
import 'package:ralali_cake_app/features/add/presentation/pages/add_page.dart';
import 'package:ralali_cake_app/features/home/presentation/bloc/home_event.dart';
import 'package:ralali_cake_app/features/home/presentation/widgets/cake_card.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();
    _homeBloc = HomeBloc();
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => _homeBloc..add(HomeRequest()),
      child: Scaffold(
          backgroundColor: RalaliColors.pinkBackground,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Text(
                    'Ralali Cake App',
                    style: RalaliFontTheme.pink.mainHeader,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state is HomeLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is HomeSuccess) {
                          if (state.homeModel.items.isEmpty) {
                            return const Center(
                              child: Text('No data'),
                            );
                          }
                          return ListView.builder(
                            itemCount: state.homeModel.items.length,
                            itemBuilder: (context, index) {
                              final cake = state.homeModel.items[index];
                              if (index == 0) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 36),
                                  child: CakeCard(cake: cake),
                                );
                              }
                              return CakeCard(cake: cake);
                            },
                          );
                        } else if (state is HomeFailure) {
                          return Center(
                            child: Text(state.message),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => nav.push(const AddPage()),
            backgroundColor: RalaliColors.pinkBackground,
            child: const Icon(Icons.add),
          )),
    );
  }
}
