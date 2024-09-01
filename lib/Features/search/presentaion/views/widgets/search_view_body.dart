import 'package:bookly/Features/search/presentaion/views/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentaion/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          CustomSearchTextField(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                Expanded(
                  child: SearchResultListView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
