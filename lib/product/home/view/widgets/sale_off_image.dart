import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/image/image_constants.dart';

class SaleOffImage extends StatelessWidget {
  const SaleOffImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageConstants.instance.toPng("fallof"),
      width: context.width,
      fit: BoxFit.cover,
    );
  }
}
