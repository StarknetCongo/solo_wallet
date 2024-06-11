import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:solo_wallet/services/extentions.dart';
import 'package:solo_wallet/services/style.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final bool autofocus;
  final Function(String)? onSubmited;
  final Function(String)? onChanged;
  final TextInputType? keybordType;
  final int? maxLength;
  final IconData? icon;
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.autofocus = false,
    this.onSubmited,
    this.keybordType,
    this.icon,
    this.onChanged,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText!,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        AppStyle.SPACING_XS.heightBox,
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).disabledColor,
            borderRadius: BorderRadius.circular(AppStyle.RADIUS_MD),
          ),
          child: TextField(
            cursorColor: Theme.of(context).primaryColor,
            keyboardType: keybordType,
            autofocus: autofocus,
            controller: controller,
            onSubmitted: onSubmited,
            onChanged: onChanged,
            maxLength: maxLength,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(16),
              hintText: hintText,
              isDense: true,
              prefixIcon: icon != null ? Icon(icon) : null,
              hintStyle: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomPinTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? keybordType;
  final bool autofocus;
  const CustomPinTextField(
      {super.key,
      this.controller,
      this.hintText,
      this.labelText,
      this.autofocus = false,
      this.keybordType});

  @override
  State<CustomPinTextField> createState() => _CustomPinTextFieldState();
}

class _CustomPinTextFieldState extends State<CustomPinTextField> {
  ValueNotifier<bool> isObscure = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isObscure,
      builder: (context, bool obscureText, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.labelText}",
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13,
              ),
            ),
            AppStyle.SPACING_XS.heightBox,
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).disabledColor,
                borderRadius: BorderRadius.circular(AppStyle.RADIUS_MD),
              ),
              child: TextField(
                cursorColor: Theme.of(context).primaryColor,
                autofocus: widget.autofocus,
                obscureText: obscureText,
                controller: widget.controller,
                keyboardType: widget.keybordType,
                obscuringCharacter: '●',
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.all(16),
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  suffix: InkWell(
                    onTap: () {
                      isObscure.value = !isObscure.value;
                    },
                    child: Icon(
                      obscureText ? Iconsax.eye : Iconsax.eye_slash,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
