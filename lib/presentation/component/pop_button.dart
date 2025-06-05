import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class PopButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  const PopButton({super.key, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          GestureDetector(
            onTap: onPressed ?? () => Navigator.of(context).pop(),
            child: SvgPicture.asset(AppIcons.chevronLeft),
          ),
          if (title != null) ...[
            Gap(10),
            Expanded(
              child: Text(
                title!,
                style: Theme.of(context).appTextStyles.title1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
