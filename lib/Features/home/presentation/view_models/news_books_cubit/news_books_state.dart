part of 'news_books_cubit.dart';

@immutable
sealed class NewsBooksState extends Equatable{
  const NewsBooksState();
  @override
  List<Object?> get props => throw UnimplementedError();
}


final class NewsBooksInitial extends NewsBooksState {}

final class NewsBooksLoading extends NewsBooksState {}

final class NewsBooksSuccess extends NewsBooksState {
  final List<BookModel> books;
  const NewsBooksSuccess(this.books);
}

final class NewsBooksFailure extends NewsBooksState {
  final String errorMessage;
  const NewsBooksFailure(this.errorMessage);
}
