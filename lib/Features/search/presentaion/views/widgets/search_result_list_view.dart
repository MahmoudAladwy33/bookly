import 'package:bookly/Features/home/presentaion/views/widgets/book_list_view_item.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/skeletonizer/newest_books_skeletonizer.dart';
import 'package:bookly/Features/search/presentaion/manger/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errMessage),
          );
        } else if (state is SearchBooksLoading) {
          return const SliverToBoxAdapter(
            child: NewestBooksSkeletonizer(),
          );
        } else {
          return SliverToBoxAdapter(
            child: Container(),
          );
        }
      },
    );
  }
}
