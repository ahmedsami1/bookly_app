part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
  @override
  List<Object?> get props => [];
}

final class FeatureBooksInitial extends FeaturedBooksState {}

final class FeatureBooksLoading extends FeaturedBooksState {}

final class FeatureBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeatureBooksSuccess(this.books);
}

final class FeatureBooksFailure extends FeaturedBooksState {
  final String errMessage;
  const FeatureBooksFailure(this.errMessage);
}