import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeatureBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }

}
