import 'package:amazon_clone/core/constants/app/global_variables.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/product/home/view/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatefulWidget {
  const HomeAppBarWidget({super.key});

  @override
  State<HomeAppBarWidget> createState() => _HomeAppBarWidgetState();
}

class _HomeAppBarWidgetState extends State<HomeAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: GlobalVariables.accountAppBarGradient,
        ),
      ),
      title: Column(
        children: [
          Row(
            children: [
              const _AppBarSearch(),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: context.paddingLowHorizontal,
                child: const Icon(
                  Icons.mic,
                  color: Colors.black,
                  size: 25,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _AppBarSearch extends StatelessWidget {
  const _AppBarSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 42,
        margin: context.paddingMediumHorizontal,
        child: Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(7),
          child: const AppBarSearchBar(),
        ),
      ),
    );
  }
}
