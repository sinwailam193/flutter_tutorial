import "package:flutter/material.dart";
import "package:flutter_tutorial/components/custom_current_location.dart";
import "package:flutter_tutorial/components/custom_description_box.dart";
import "package:flutter_tutorial/components/custom_drawer.dart";
import "package:flutter_tutorial/components/custom_sliver_app_bar.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSliverAppBar(
            title: const Text("title"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my current location
                const CustomCurrentLocation(),

                // description box
                const CustomDescriptionBox(),
              ],
            ),
          )
        ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
