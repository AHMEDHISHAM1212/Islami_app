import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAssets.quranBg),
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedItem,
            onTap: (index) {
              selectedItem = index;
              setState(() {});
              print(selectedItem);
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.primaryColor,
            items: [
              BottomNavigationBarItem(
                  icon: builtBottomNavigationBar(
                    index: 0,
                    imageName: AppAssets.icQuran,
                  ), label: "Quran"
              ),
              BottomNavigationBarItem(
                icon: builtBottomNavigationBar(
                    index: 1, imageName: AppAssets.icHadeth),
                label: "Hadeth",
              ),
              BottomNavigationBarItem(
                icon: builtBottomNavigationBar(
                    index: 2, imageName: AppAssets.icSebha),
                label: "Sebha",
              ),
              BottomNavigationBarItem(
                icon: builtBottomNavigationBar(
                    index: 3, imageName: AppAssets.icRadio),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: builtBottomNavigationBar(
                    index: 4, imageName: AppAssets.icTime),
                label: "Time",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget builtBottomNavigationBar({
    required int index,
    required String imageName,
  }) {
    return selectedItem == index
        ? Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: AppColors.bgBlackColor,
      ),
      child: ImageIcon(AssetImage(imageName)),
    )
        : ImageIcon(AssetImage(imageName));
  }
}
