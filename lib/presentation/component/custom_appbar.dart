import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).appTextStyles.appBarTitle;
    return Container(
      color: Theme.of(context).appColors.primary,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppIcons.logo),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Text('DELIVERY ADDRESS', style: textStyle),
                Gap(5),
                Text(
                  'Umuezike Road, Oyo State',
                  style: textStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          SvgPicture.asset(AppIcons.notification),
        ],
      ),
    );
  }
}
