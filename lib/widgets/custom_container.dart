import 'package:flutter/material.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';

class CustomContainer extends StatelessWidget {
  final String yarisAdi;
  const CustomContainer({super.key, required this.yarisAdi});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: PaddingUtilitys().midPadding,
      padding: PaddingUtilitys().midPadding,
      decoration: BoxDecoration(
        color: ColorsUtilitys().projectThemeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(yarisAdi,style: Theme.of(context).textTheme.labelLarge,),
    );
  }
}