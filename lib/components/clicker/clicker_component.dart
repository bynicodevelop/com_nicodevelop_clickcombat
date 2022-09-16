import 'package:com_nicodevelop_clickcombat/services/clicker/clicker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClickerComponent extends StatelessWidget {
  final Widget child;

  const ClickerComponent({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => context.read<ClickerBloc>().add(OnClickEvent()),
      child: Container(
        color: Colors.amber,
        child: child,
      ),
    );
  }
}
