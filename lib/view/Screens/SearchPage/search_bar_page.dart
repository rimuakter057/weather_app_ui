import 'package:flutter/material.dart';
import 'Widget/list_tile.dart';
import 'Widget/search_appbar.dart';
import 'Widget/search_bar.dart';

class SearchPage extends StatefulWidget {

  const SearchPage({super.key, });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.lightBlue.shade900,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const SearchAppBar(),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SearchBarWidget(),
                  Image.asset(
                    "assets/images/insurance 1 (1).png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 30,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return const ListTileWidget(

                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
