import 'package:bookly/Features/search/presentaion/manger/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/Features/search/presentaion/views/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentaion/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          CustomSearchTextField(
            controller: controller,
            onSubmitted: (data) {
              BlocProvider.of<SearchBooksCubit>(context)
                  .fetchSearchBooks(bookName: data);
              controller.clear();
            },
          ),
          const Expanded(
            child: CustomScrollView(
              slivers: [
                SearchResultListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
