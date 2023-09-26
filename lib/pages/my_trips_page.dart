import 'package:fellow4u/components/heade_image.dart';
import 'package:fellow4u/components/trip_item.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MyTrips extends StatelessWidget {
  const MyTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                HeaderImage(
                  title: 'My Trips',
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => (Padding(
                        padding: EdgeInsets.only(
                            top: index == 0 ? 0 : 16, right: 16, left: 16),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: TripItem(),
                        ),
                      )),
                  childCount: 4)),
        ],
      ),
    );
  }
}
