import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class SearchTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  const SearchTextField({
    super.key,
    this.hintText = 'Search...',
    this.controller,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).appStyles.inputFieldStyle;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: theme.borderColor, width: 1),
      ),
      child: Row(
        children: [
          Gap(8),
          SvgPicture.asset(AppIcons.search),
          Gap(8),
          Expanded(
            child: TextField(
              cursorColor: theme.cursorColor,
              controller: controller,
              onChanged: onChanged,
              onTap: onTap,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
                hintStyle: theme.hintTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
