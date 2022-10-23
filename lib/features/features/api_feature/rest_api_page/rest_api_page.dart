import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_boilerplate/features/features/api_feature/rest_api_page/blocs/get_posts_rest_cubit.dart';
import 'package:flutter_advanced_boilerplate/features/features/api_feature/rest_api_page/models/post_rest_model.dart';
import 'package:flutter_advanced_boilerplate/modules/dependency_injection/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RestApiPage extends StatefulWidget {
  const RestApiPage({super.key});

  @override
  State<RestApiPage> createState() => _RestApiPageState();
}

class _RestApiPageState extends State<RestApiPage> {
  final PagingController<int, PostRestModel> _pagingController = PagingController(firstPageKey: 1);
  final GetPoststRestCubit _cubit = getIt<GetPoststRestCubit>();

  @override
  void initState() {
    _pagingController.addPageRequestListener(_cubit.getPosts);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetPoststRestCubit, GetPostsRestState>(
      bloc: _cubit,
      listener: (_, state) {
        state.mapOrNull(
          failed: (st) => _pagingController.error = st.alert,
          refresh: (_) => _pagingController.refresh(),
          success: (st) {
            if (st.posts.total > st.posts.size * st.posts.currentPage) {
              _pagingController.appendPage(
                st.posts.items,
                st.posts.currentPage + 1,
              );
            } else {
              _pagingController.appendLastPage(st.posts.items);
            }
          },
        );
      },
      child: PagedListView<int, PostRestModel>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<PostRestModel>(
          firstPageErrorIndicatorBuilder: (context) => Center(
            child: Text(
              tr('core.errors.something_went_wrong'),
            ),
          ),
          noItemsFoundIndicatorBuilder: (_) => Center(
            child: Text(
              tr('core.errors.no_item_found'),
            ),
          ),
          firstPageProgressIndicatorBuilder: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          itemBuilder: (_, post, __) => ListTile(
            leading: Text(post.id),
            title: Text(post.title),
          ),
        ),
      ),
    );
  }
}
