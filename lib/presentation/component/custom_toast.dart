import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class CustomToast extends StatelessWidget {
  final String message;
  final VoidCallback? onClose;
  final Duration duration;

  const CustomToast({
    super.key,
    required this.message,
    this.onClose,
    this.duration = const Duration(seconds: 3),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).appStyles.toastStyle;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border(left: BorderSide(color: theme.borderColor, width: 4)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.checkCircle),
          const Gap(16),
          Expanded(child: Text(message, style: theme.textStyle)),
          const Gap(16),
          if (onClose != null)
            GestureDetector(
              onTap: onClose,
              child: SvgPicture.asset(AppIcons.close),
            ),
        ],
      ),
    );
  }

  static void show(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder:
          (context) => Positioned(
            top: MediaQuery.of(context).padding.top + 20,
            left: 0,
            right: 0,
            child: Material(
              color: Colors.transparent,
              child: CustomToast(
                message: message,
                duration: duration,
                onClose: () => overlayEntry.remove(),
              ),
            ),
          ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration, () {
      if (overlayEntry.mounted) {
        overlayEntry.remove();
      }
    });
  }
}
