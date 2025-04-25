import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import '../widgets/activities/activities_tab.dart';
import '../widgets/activities/bottom_icon_bar.dart';
import '../widgets/archive/empty_archieve_view.dart';
import '../widgets/save_for_later/empty_save_for_later.dart';
import '../widgets/setting_modal/display_setting_modal.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorsManager.gray,
        appBar: AppBar(
          backgroundColor: ColorsManager.white,
          title: Text(
            'الإنبوكس',
            style: TextStyles.font18VeryDarkGraySemiBold(),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  showDisplaySettingsModal(context);
                },
                child: SvgPicture.asset('assets/icons/notification/Filter.svg'),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(26),
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 186,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: ColorsManager.woodsmoke,
                  labelPadding: EdgeInsets.symmetric(
                    // horizontal: 6,
                    // vertical: 8,
                  ),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: ColorsManager.blueLight,
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 46.0),
                  ),
                  labelStyle: TextStyles.font14Medium(),
                  tabs: [
                    Tab(text: "الأنشطة"),
                    Tab(text: "تذكّر لاحقًا"),
                    Tab(text: "الأرشيف"),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ActivitiesTab(isEmpty: false),
            EmptySaveForLater(),
            EmptyArchiveView(),
          ],
        ),
        floatingActionButton: BottomIconBar(),
      ),
    );
  }
}
