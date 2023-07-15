import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ralali_cake_app/app.dart';
import 'package:ralali_cake_app/core/extensions/text_style_extension.dart';
import 'package:ralali_cake_app/core/theme/_themes.dart';
import 'package:ralali_cake_app/features/add/presentation/bloc/add_bloc.dart';
import 'package:ralali_cake_app/features/add/presentation/bloc/add_state.dart';

import '../bloc/add_event.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  late AddBloc _addBloc;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _ratingController;
  late TextEditingController _imageController;

  @override
  void initState() {
    super.initState();
    _addBloc = AddBloc();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _ratingController = TextEditingController();
    _imageController = TextEditingController();
  }

  @override
  void dispose() {
    _addBloc.close();
    _titleController.dispose();
    _descriptionController.dispose();
    _ratingController.dispose();
    _imageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddBloc>(
      create: (context) => _addBloc,
      child: Scaffold(
        backgroundColor: RalaliColors.pinkBackground,
        body: SafeArea(
          child: BlocConsumer<AddBloc, AddState>(listener: (context, state) {
            if (state is AddSuccess) {
              nav.pop();
            }
          }, builder: (context, state) {
            if (state is AddLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is AddFailure) {
              return Center(
                child: Text(state.message),
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Text(
                    'Add Cake',
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
                    child: // create a textfields with title, description, rating, image_url
                        SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 24),
                              const Text(
                                'Title',
                                style: RalaliFontTheme.greyTitle,
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _titleController,
                                decoration: InputDecoration(
                                  hintText: 'Enter title',
                                  hintStyle: RalaliFontTheme.greyText,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              const Text(
                                'Description',
                                style: RalaliFontTheme.greyTitle,
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _descriptionController,
                                minLines: 3,
                                maxLines: 3,
                                decoration: InputDecoration(
                                  hintText: 'Enter description',
                                  hintStyle: RalaliFontTheme.greyText,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              const Text(
                                'Rating',
                                style: RalaliFontTheme.greyTitle,
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _ratingController,
                                decoration: InputDecoration(
                                  hintText: 'Enter rating',
                                  hintStyle: RalaliFontTheme.greyText,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              const SizedBox(height: 24),
                              const Text(
                                'Image URL',
                                style: RalaliFontTheme.greyTitle,
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _imageController,
                                decoration: InputDecoration(
                                  hintText: 'Enter image URL',
                                  hintStyle: RalaliFontTheme.greyText,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              ElevatedButton(
                                onPressed: () {
                                  _addBloc.add(
                                    AddRequest(
                                      title: _titleController.text,
                                      description: _descriptionController.text,
                                      rating: double.parse(
                                          _ratingController.text.isEmpty
                                              ? '0'
                                              : _ratingController.text),
                                      image: _imageController.text,
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: RalaliColors.pinkBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const SizedBox(
                                  width: double.infinity,
                                  child: Center(
                                    child: Text('Submit'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
