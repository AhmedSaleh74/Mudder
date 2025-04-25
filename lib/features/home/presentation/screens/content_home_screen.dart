import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart' show ColorsManager;
import '../../cubit/home_cubit.dart';
import '../widgets/Projects/projects_card.dart';
import '../widgets/bonus/bonus_guide_card.dart';
import '../widgets/goals_progress/goals_progress_card.dart';
import '../widgets/home_top_bar.dart';
import '../widgets/mentions/mentions_card.dart';
import '../widgets/my_tasks/my_tasks_card.dart';
import '../widgets/needs_your_attention/needs_your_attention_card.dart';
import '../widgets/recently_added/recently_added_card.dart';
import '../widgets/work_flow/work_flow_cards.dart';

class ContentHomeScreen extends StatelessWidget {
  const ContentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.mostlyWhite,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: HomeTopBar(
              date: 'الجمعة، 23 أكتوبر',
              message: 'صباح الخير،',
              userName: 'عبدالسلام',
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: ColorsManager.mostlyWhite,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(13),
              WorkFlowCards(),
              verticalSpace(20),
              BlocBuilder<HomeCubit, Map<String, bool>>(
                builder: (context, state) {
                  return Column(
                    children: [
                      if (!state['Customize Home.needs your attention']!)
                        NeedsYourAttentionCard(),
                      if (!state['Customize Home.Recently added']!)
                        RecentlyAddedCard(),
                      if (!state['Customize Home.Projects']!) ProjectsCard(),
                      if (!state['Customize Home.Weekly project progress']!)
                        GoalsProgressCard(),
                      if (!state['Customize Home.My tasks']!) MyTasksCard(),
                      BonusCard(),
                      if (!state['Customize Home.Comments that mentioned you']!)
                        MentionsCard(),
                      verticalSpace(38),
                    ],
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
