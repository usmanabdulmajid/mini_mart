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
    Duration animationDuration = const Duration(milliseconds: 300),
  }) {
    final overlay = Overlay.of(context, rootOverlay: true);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder:
          (context) => _AnimatedToastWrapper(
            message: message,
            duration: duration,
            animationDuration: animationDuration,
            onClose: () => overlayEntry.remove(),
          ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration + animationDuration, () {
      if (overlayEntry.mounted) {
        overlayEntry.remove();
      }
    });
  }
}

class _AnimatedToastWrapper extends StatefulWidget {
  final String message;
  final Duration duration;
  final Duration animationDuration;
  final VoidCallback onClose;

  const _AnimatedToastWrapper({
    required this.message,
    required this.duration,
    required this.animationDuration,
    required this.onClose,
  });

  @override
  State<_AnimatedToastWrapper> createState() => _AnimatedToastWrapperState();
}

class _AnimatedToastWrapperState extends State<_AnimatedToastWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  bool _isClosing = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();

    Future.delayed(widget.duration, () {
      if (mounted && !_isClosing) {
        _dismissToast();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _dismissToast() {
    if (_isClosing) return;

    setState(() {
      _isClosing = true;
    });

    _controller.reverse().then((_) {
      if (mounted) {
        widget.onClose();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 20,
      left: 0,
      right: 0,
      child: SlideTransition(
        position: _slideAnimation,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Material(
            color: Colors.transparent,
            child: CustomToast(
              message: widget.message,
              duration: widget.duration,
              onClose: _dismissToast,
            ),
          ),
        ),
      ),
    );
  }
}
