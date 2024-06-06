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
