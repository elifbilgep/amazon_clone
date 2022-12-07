import 'package:amazon_clone/product/admin/view/posts/view/posts_view.dart';
import 'package:amazon_clone/product/admin/view/widgets/admin_app_bar.dart';
import 'package:amazon_clone/product/admin/view_model/admin_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../home/view/home.dart';
import '../widgets/admin_nav_bar.dart';

class AdminView extends StatefulWidget {
  const AdminView({super.key});

  @override
  State<AdminView> createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
  Widget build(BuildContext context) {
    int _currPage = Provider.of<AdminViewModel>(context).pageNo;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AdminAppBar(
          text: "Admin",
          isLogoSeen: true,
        ),
      ),
      bottomNavigationBar: const AdminNavBar(),
      body: pages[_currPage],
    );
  }

  List<Widget> pages = [
    const PostsView(),
    const Center(child: Text("Post Page")),
    const Center(
      child: Text("Analtytics Page"),
    ),
  ];
}
