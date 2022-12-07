import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/product/admin/view/posts/view_model/add_post_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Provider.of<AddPostViewModel>(context).selectImages,
      child: Container(
        margin: context.paddingMediumAll,
        height: 150,
        width: context.width,
        decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: context.paddingNormalAll,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.add_a_photo),
              Text(
                "Select Product Image",
                style: context.textTheme.button!.copyWith(color: Colors.grey.shade900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
