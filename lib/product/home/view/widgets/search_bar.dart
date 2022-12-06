import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AppBarSearchBar extends StatelessWidget {
  const AppBarSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        hintText: "Search Amazon.in",
        hintStyle: context.theme.textTheme.button!.copyWith(color: Colors.grey),
        prefixIcon: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.only(left: 6),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 23,
            ),
          ),
        ),
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.only(top: 5),
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: Colors.black38, width: 1),
        ),
      ),
    );
  }
}
