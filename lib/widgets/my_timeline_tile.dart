import 'package:flutter/material.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';
import 'package:formula1_pilots/widgets/custom_container.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final String yarisAdi;
  const MyTimeLineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.yarisAdi});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: ColorsUtilitys().projectThemeColor,
        ),
        indicatorStyle: IndicatorStyle(
            width: 40,
            color: ColorsUtilitys().projectThemeColor,
            iconStyle: IconStyle(
                iconData: Icons.flag, color: ColorsUtilitys().whiteTextColor)),
        endChild: CustomContainer(
          yarisAdi: yarisAdi,
        ),
      ),
    );
  }
}
