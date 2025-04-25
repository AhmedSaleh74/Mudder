import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mudeer/core/theming/colors.dart';
import '../../../cubit/home_cubit.dart';
import 'content_customize_home_container.dart';

class CustomizeHomeContainer extends StatelessWidget {
  final VoidCallback onCancel;

  const CustomizeHomeContainer({super.key, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context, listen: false);
    homeCubit.setInitialState(homeCubit.state);

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 415,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: ColorsManager.white,
        ),
        child: BlocBuilder<HomeCubit, Map<String, bool>>(
          builder: (context, state) {
            return ContentCustomizeHomeContainer(onCancel: onCancel);
          },
        ),
      ),
    );
  }
}
