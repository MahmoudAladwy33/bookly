import 'package:bookly/Features/home/presentaion/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/book_list_view_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/skeletonizer/newest_books_skeletonizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
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
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errmessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: NewestBooksSkeletonizer(),
          );
        }
      },
    );
  }
}
