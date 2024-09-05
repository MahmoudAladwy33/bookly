import 'package:bloc/bloc.dart';
import 'package:bookly/Features/search/data/repos/search_repo.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo, this.bookName)
      : super(SearchBooksInitial());

  final SearchRepo searchRepo;
  final String bookName;
  Future<void> fetchSearchBooks() async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchResult(name: bookName);

    result.fold(
      (failure) => emit(
        SearchBooksFailure(errMessage: failure.errMessage),
      ),
      (books) => emit(
        SearchBooksSuccess(books: books),
      ),
    );
  }
}
