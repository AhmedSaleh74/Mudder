import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudeer/features/home/presentation/widgets/Projects/top_of_projects_card.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/icon_container_with_text.dart';
import 'latest_projects_container.dart';

class ContentProjectsCard extends StatefulWidget {
  const ContentProjectsCard({super.key});

  @override
  State<ContentProjectsCard> createState() => _ContentProjectsCardState();
}

class _ContentProjectsCardState extends State<ContentProjectsCard> {
  bool _isContainerVisible = false;

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isArabic = Localizations.localeOf(context).languageCode == 'ar';
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopOfProjectsCard(onTap: _toggleContainerVisibility),
              verticalSpace(20),
              IconWithContainer(
                padding: EdgeInsets.all(5.55),
                backgroundColor: ColorsManager.limeGreen,
                pathIcon: 'assets/icons/projects/Vector (6).svg',
                horizontalSpace: 12.32,
                widget: Text(
                  'اطلاق الهوية',
                  style: TextStyles.font14VeryDarkBlueRegular(),
                ),
              ),
              verticalSpace(14),
              IconWithContainer(
                padding: EdgeInsets.all(5.55),
                backgroundColor: Colors.deepOrangeAccent,
                pathIcon: 'assets/icons/projects/Vector (6).svg',
                horizontalSpace: 12.32,
                widget: Text(
                  'اطلاق الهوية',
                  style: TextStyles.font14VeryDarkBlueRegular(),
                ),
              ),
              verticalSpace(14),
              IconWithContainer(
                padding: EdgeInsets.all(5.55),
                backgroundColor: Colors.blue,
                pathIcon: 'assets/icons/projects/Vector (6).svg',
                horizontalSpace: 12.32,
                widget: Text(
                  'اطلاق الهوية',
                  style: TextStyles.font14VeryDarkBlueRegular(),
                ),
              ),
              verticalSpace(12),
              CustomTextButton(
                onPressed: () {},
                backgroundColor: Colors.transparent,
                buttonHeight: 32,
                buttonWidth: double.infinity,
                textButton: 'Home.Projects.View all projects'.tr(),
                texStyle: TextStyles.font12VeryDarkGrayMedium(),
                showIcon: false,
                borderColor: ColorsManager.lightBlue,
              ),
            ],
          ),
        ),
        if (_isContainerVisible)
          Positioned(
            top: 40.h,
            right: isArabic ? null : 13,
            left: isArabic ? 15 : null,
            child: LatestProjectsContainer(),
          ),
      ],
    );
  }
}
