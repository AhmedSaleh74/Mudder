import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_container.dart';
import '../../../cubit/home_cubit.dart';
import 'content_needs_your_attention_card.dart';


class NeedsYourAttentionCard extends StatelessWidget {
  const NeedsYourAttentionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: CustomContainer(
        child: ContentNeedsYourAttentionCard(
          onTap: () {
            homeCubit.closeCard('Customize Home.needs your attention');
          },
        ),
      ),
    );
  }
}
