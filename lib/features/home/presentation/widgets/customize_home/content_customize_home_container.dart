import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mudeer/features/home/presentation/widgets/customize_home/top_of_customize_home_container.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../cubit/home_cubit.dart';
import 'customization_switch_row.dart';

class ContentCustomizeHomeContainer extends StatelessWidget {
  final VoidCallback onCancel;

  const ContentCustomizeHomeContainer({super.key, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, Map<String, bool>>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
              height: 25,
              width: 30,
              child: Divider(thickness: 2),
            ),
            verticalSpace(10),
            TopOfCustomizeHomeContainer(
              onCancel: () {
                homeCubit.cancelChanges();
                onCancel();
              },
              onSave: () {
                homeCubit.saveSwitches(state);
                onCancel();
              },
            ),
            verticalSpace(3),
            Divider(color: Colors.grey.withOpacity(0.2)),
            ..._buildSwitchRows(context, state),
          ],
        );
      },
    );
  }

  List<Widget> _buildSwitchRows(BuildContext context, Map<String, bool> state) {
    return state.entries.map((entry) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: CustomizationSwitchRow(
          label: entry.key,
          isActive: entry.value,
          onSwitchChanged: (value) {
            context.read<HomeCubit>().toggleSwitch(entry.key, value);
          },
        ),
      );
    }).toList();
  }
}
