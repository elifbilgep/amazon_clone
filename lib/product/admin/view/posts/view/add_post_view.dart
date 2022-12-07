import 'package:amazon_clone/core/constants/app/global_variables.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/product/admin/view/posts/view/widgets/add_product_forms.dart';
import 'package:amazon_clone/product/admin/view/posts/view/widgets/upload_image.dart';
import 'package:amazon_clone/product/admin/view/widgets/admin_app_bar.dart';
import 'package:amazon_clone/product/components/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddPostsView extends StatefulWidget {
  const AddPostsView({super.key});

  @override
  State<AddPostsView> createState() => _AddPostsViewState();
}

class _AddPostsViewState extends State<AddPostsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AdminAppBar(
          text: "Add Product",
          isLogoSeen: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
            child: Column(
          children: const [
            UploadImage(),
            AddProductFormField(),
            AddPostDropDown(),
          ],
        )),
      ),
    );
  }
}

class AddPostDropDown extends StatefulWidget {
  const AddPostDropDown({super.key});

  @override
  State<AddPostDropDown> createState() => _AddPostDropDownState();
}

class _AddPostDropDownState extends State<AddPostDropDown> {
  String category = "Mobiles";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.paddingMediumHorizontal,
      width: context.width,
      child: DropdownButton(
        elevation: 1,
        icon: const Icon(Icons.keyboard_arrow_down),
        value: GlobalVariables.productCategories[0],
        items: GlobalVariables.productCategories.map((String e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
        onChanged: (value) {},
      ),
    );
  }
}
