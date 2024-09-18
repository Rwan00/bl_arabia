import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:bl_arabia/features/home/data/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/home_cubit/home_state.dart';

class HomeLayout extends StatelessWidget {
  static String routeName = "Home Screen";
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                leading: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "1",
                      style: hintStyle.copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: kPrimaryColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              body: kPages[cubit.selectedPageIndex],
              bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: kBottomColor,
                  selectedItemColor: kPrimaryColor,
                  unselectedItemColor: Colors.grey,
                  currentIndex: cubit.selectedPageIndex,
                  type: BottomNavigationBarType.shifting,
                  onTap: cubit.changePages,
                  items: kBottomNavBar));
        },
      ),
    );
  }
}
