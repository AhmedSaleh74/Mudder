import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudeer/core/helpers/spacing.dart';
import 'package:mudeer/core/theming/style.dart';
import 'package:mudeer/features/home/presentation/widgets/customize_home/customize_home_container.dart';

class HomeTopBar extends StatelessWidget {
  final String date;
  final String message;
  final String userName;

  const HomeTopBar({
    super.key,
    required this.date,
    required this.message,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: TextStyles.font10MoreDarkGrayishBlueRegular(),
                ),
                verticalSpace(5),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: message,
                        style: TextStyles.font18VeryDarkGraySemiBold(),
                        children: <TextSpan>[
                          TextSpan(text: ' '),
                          TextSpan(
                            text: userName,
                            style: TextStyles.font18VeryDarkGraySemiBold(),
                          ),
                          TextSpan(text: ' '),
                          TextSpan(text: '👋'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: SvgPicture.asset(
                'assets/icons/home_top_bar/customize_home.svg',
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      barrierColor: Colors.black.withOpacity(0.19),
      builder: (BuildContext context) {
        return CustomizeHomeContainer(onCancel: () => Navigator.pop(context));
      },
    );
  }
}
