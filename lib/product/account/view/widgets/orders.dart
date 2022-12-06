import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/product/account/view/widgets/single_product.dart';
import 'package:flutter/widgets.dart';
import 'orders_headline.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [OrdersHeadline(), OrdersBody()],
    );
  }
}

class OrdersBody extends StatefulWidget {
  const OrdersBody({super.key});

  @override
  State<OrdersBody> createState() => _OrdersBodyState();
}

class _OrdersBodyState extends State<OrdersBody> {
  List images = [
    "https://thumbs.dreamstime.com/b/white-ipad-mini-isolated-pure-background-35883926.jpg",
    "https://thumbs.dreamstime.com/b/white-ipad-mini-isolated-pure-background-35883926.jpg",
    "https://thumbs.dreamstime.com/b/white-ipad-mini-isolated-pure-background-35883926.jpg",
    "https://thumbs.dreamstime.com/b/white-ipad-mini-isolated-pure-background-35883926.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return SingleProduct(image: images[index]);
          }),
    );
  }
}
