import 'package:flutter/material.dart';
import 'package:mudeer/core/theming/colors.dart';
import '../../../../../core/widgets/custom_container.dart';
import 'build_icon.dart';

class BottomIconBar extends StatefulWidget {
  const BottomIconBar({super.key});

  @override
  _BottomIconBarState createState() => _BottomIconBarState();
}

class _BottomIconBarState extends State<BottomIconBar> {
  int selectedIndex = 0;

  final List<String> icons = [
    'assets/icons/notification/Vector.svg',
    'assets/icons/notification/icon.svg',
    'assets/icons/notification/SVG (3).svg',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 140,
      height: 50,
      borderColor: ColorsManager.grayBorder,
      borderRadius: BorderRadius.circular(8),
      backgroundColor: ColorsManager.gray50,
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: CustomContainer(
              width: 35,
              height: 80,
              borderColor:
                  selectedIndex == index
                      ? ColorsManager.blueLight
                      : ColorsManager.grayBorder,
              borderRadius: BorderRadius.circular(8),
              backgroundColor: Colors.white,
              padding: EdgeInsets.zero,
              child: IconButton(
                icon: buildIcon(
                  path: icons[index],
                  isSelected: selectedIndex == index,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
