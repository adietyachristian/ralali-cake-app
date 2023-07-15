// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ralali_cake_app/app.dart';
import 'package:ralali_cake_app/core/extensions/text_style_extension.dart';
import 'package:ralali_cake_app/core/theme/_themes.dart';
import 'package:ralali_cake_app/features/detail/presentation/bloc/detail_event.dart';
import 'package:ralali_cake_app/features/detail/presentation/bloc/detail_state.dart';

import '../../../home/presentation/pages/home_page.dart';
import '../bloc/detail_bloc.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.id});

  final String id;

  @override
  State<DetailPage> createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  late DetailBloc _detailBloc;

  @override
  void initState() {
    super.initState();
    _detailBloc = DetailBloc();
  }

  @override
  void dispose() {
    _detailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailBloc>(
      create: (context) => _detailBloc..add(DetailRequest(id: widget.id)),
      child: Scaffold(
        backgroundColor: RalaliColors.pinkBackground,
        body: SafeArea(
          child: BlocConsumer<DetailBloc, DetailState>(
            listener: (context, state) {
              if (state is DetailDeleteSuccess) {
                nav.pushReplacement(const HomePage());
              }
            },
            builder: (context, state) {
              if (state is DetailLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is DetailSuccess) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 30),
                      child: Text(
                        state.cake.title,
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
                        padding: const EdgeInsets.all(24),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                state.cake.image,
                                width: double.infinity,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 24),
                                  Text(
                                    state.cake.description,
                                    style: RalaliFontTheme.greyText,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Rating: ${state.cake.rating}',
                                    style: RalaliFontTheme.greyText.textMedium,
                                  ),
                                  const SizedBox(height: 24),
                                  ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  title:
                                                      const Text('Delete Cake'),
                                                  content: const Text(
                                                      'Are you sure want to delete this cake?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              context),
                                                      child:
                                                          const Text('Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        _detailBloc
                                                          ..add(
                                                            DeleteRequest(
                                                                id: state
                                                                    .cake.id),
                                                          );
                                                      },
                                                      child:
                                                          const Text('Delete'),
                                                    ),
                                                  ],
                                                ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            RalaliColors.pinkBackground,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const SizedBox(
                                          width: double.infinity,
                                          child:
                                              Center(child: Text('Delete')))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else if (state is DetailFailure) {
                return Center(
                  child: Text(
                    state.message,
                    style: RalaliFontTheme.greyText,
                  ),
                );
              } else {
                return const Center(
                  child: Text(
                    'Something went wrong',
                    style: RalaliFontTheme.greyText,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
