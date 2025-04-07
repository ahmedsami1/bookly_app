import 'package:bookly_app/Features/home/presentation/view_models/news_books_cubit/news_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewsBooksState>(
      builder: (context, state) {
        if(state is NewsBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  NewestBooksListViewItem(bookModel: state.books[index]);
            },
          );
        }else if(state is NewsBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
