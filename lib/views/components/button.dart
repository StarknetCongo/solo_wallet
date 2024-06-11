import 'package:flutter/material.dart';
import 'package:solo_wallet/controllers/bloc/state.dart';
import 'package:solo_wallet/services/style.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onTap;

  final double? width;
  final AppState? state;
  const CustomButton({
    super.key,
    required this.title,
    this.textColor,
    this.backgroundColor,
    this.onTap,
    this.width,
    this.state,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        width: width,
        duration: const Duration(milliseconds: 200),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppStyle.RADIUS_MD),
        ),
        child: state is LOADING
            ? const SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Text(
                "$title",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
      ),
    );
  }
}

class OutlineCustomButton extends StatelessWidget {
  final String? title;
  final Color? titleColor;
  final Color? backGroundColor;
  final Function()? onTap;

  final double? width;
  final AppState? state;
  const OutlineCustomButton({
    super.key,
    required this.title,
    this.titleColor,
    this.backGroundColor,
    this.onTap,
    this.width,
    this.state,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        width: width,
        duration: const Duration(milliseconds: 200),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
          borderRadius: BorderRadius.circular(AppStyle.RADIUS_MD),
        ),
        child: state is LOADING
            ? SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                    color: Theme.of(context)
                        .progressIndicatorTheme
                        .circularTrackColor),
              )
            : Text(
                "$title",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
      ),
    );
  }
}
