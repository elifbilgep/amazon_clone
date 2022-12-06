import 'package:amazon_clone/core/constants/app/global_variables.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/core/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      height: 40,
      decoration: const BoxDecoration(gradient: GlobalVariables.homeAppBarGradient),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(children: [
          const Icon(
            Icons.location_on_outlined,
            size: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Delivery to ${user.name} - ${user.address}",
                style: context.textTheme.button!.copyWith(color: Colors.grey.shade900, fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5, top: 2, right: 10),
            child: Icon(
              Icons.arrow_drop_down_outlined,
              size: 18,
            ),
          )
        ]),
      ),
    );
  }
}
