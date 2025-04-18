import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'news_books_state.dart';

class NewestBooksCubit extends Cubit<NewsBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewsBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async{
    emit(NewsBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewsBooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewsBooksSuccess(books));
    });
  }
}
