import 'package:bookly/Features/home/presentaion/views/widgets/book_list_view_item.dart';
import 'package:bookly/Features/search/presentaion/views/widgets/custom_search_text_field.dart';
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

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
    );
  }
}
