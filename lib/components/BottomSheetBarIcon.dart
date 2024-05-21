import 'package:flutter/material.dart';

class BottomSheetBarIcon extends StatelessWidget {
  final Color? color;

  final Icon? icon;

  final Function()? onTap;

  final bool? isActive;

  const BottomSheetBarIcon(
      {Key? key,
      @required this.icon,
      this.onTap,
      this.color = Colors.black,
      this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: color?.withOpacity(isActive == true ? 1 : 0.5),
          mini: true,
          elevation: 0.0,
          onPressed: onTap,
          child: icon,
        ),
        AnimatedContainer(
          width: isActive == true ? 10.0 : 0.0,
          height: isActive == true ? 5.0 : 0.0,
          decoration: BoxDecoration(
            color: isActive == true ? color : Colors.white,
            borderRadius: BorderRadius.circular(5.0),
          ),
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
        )
      ],
    );
  }
}

/// enum for expandable button position
enum ButtonBottomBarPosition { center, end }

class BottomBarSheet extends StatefulWidget {
  final List<BottomSheetBarIcon> children;

  final ButtonBottomBarPosition? buttonPosition;

  final Color? backgroundBarColor;

  final Color? backgroundColor;

  final bool showExpandableButton;

  final Widget? innerChild;

  final double bottomRadius;

  /// Value to indicate the bottom bar height
  final double? bottomBarHeight;

  /// Value to indicate the bottom bar width
  final double? bottomBarWidth;

  /// Indicate the duration when expand bottom sheet
  final Duration? duration;

  /// Double value to indicate the bottom sheet height
  final double? bottomSheetHeight;

  /// Icon to show into expandable button
  final Widget? iconExpand;

  /// Color for expandable button
  final Color? iconColor;

  /// Function trigger when close bottom sheet
  final Function()? onClose;

  /// Value to indicate what icon tab is selected
  final int? currentIndex;

  /// Curve to use on animation
  final Curve curve;

  const BottomBarSheet({
    Key? key,
    this.children = const [],
    this.buttonPosition = ButtonBottomBarPosition.center,
    this.backgroundColor = Colors.white,
    this.backgroundBarColor = Colors.white,
    this.showExpandableButton = true,
    this.innerChild,
    this.bottomRadius = 50.0,
    this.bottomBarHeight = 60.0,
    this.bottomBarWidth,
    this.duration = const Duration(milliseconds: 250),
    this.bottomSheetHeight,
    this.iconExpand = const Icon(Icons.navigation),
    this.iconColor = Colors.green,
    this.onClose,
    this.currentIndex,
    this.curve = Curves.ease,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomBarSheetState createState() => _BottomBarSheetState();
}

class _BottomBarSheetState extends State<BottomBarSheet> {
  /// Boolean value to toggle first or second child on AnimatedCrossFade
  bool _showSecond = false;

  List<Widget> _getChildren() {
    List<Widget> children = [];
    int middle = (widget.children.length / 2).ceil();
    int index = 0;
    for (BottomSheetBarIcon el in widget.children) {
      int i = widget.children.indexOf(el);
      BottomSheetBarIcon icon = BottomSheetBarIcon(
          icon: el.icon,
          onTap: () {
            el.onTap!();
          },
          isActive: widget.currentIndex == i,
          color: el.color);
      children.add(icon);
      index++;
      if (index == middle &&
          widget.buttonPosition == ButtonBottomBarPosition.center &&
          widget.showExpandableButton) {
        children.add(_getShowButton());
      }
    }
    if (widget.buttonPosition == ButtonBottomBarPosition.end &&
        widget.showExpandableButton) {
      children.add(_getShowButton());
    }
    return children;
  }

  Widget _getShowButton() {
    return TextButton(
      onPressed: () => setState(() => _showSecond = true),
      child: TextButton.icon(
        icon: const Icon(Icons.sync),
        label: const Text('Sync'),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BottomSheet(
      /// when on close is null, take an empty function
      onClosing: widget.onClose ?? () {},
      builder: (BuildContext context) => AnimatedContainer(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: !_showSecond
                ? widget.backgroundBarColor
                : widget.backgroundColor,
            borderRadius: BorderRadius.circular(30)),
        duration: widget.duration ?? const Duration(milliseconds: 250),
        curve: widget.curve,
        child: AnimatedCrossFade(
            firstChild: Container(
              height: widget.bottomBarHeight,
              width: widget.bottomBarWidth ?? (size.width * 0.9),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.bottomRadius)),
                // color: widget.backgroundBarColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _getChildren(),
              ),
            ),
            secondChild: Container(
                // color: widget.backgroundColor,
                constraints: BoxConstraints.expand(
                  height: widget.bottomSheetHeight ?? (size.height * 0.80),
                ),
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Container(
                      child: widget.innerChild,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CloseButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          setState(() => _showSecond = false);
                        },
                      ),
                    ),
                  ],
                )),
            crossFadeState: _showSecond
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: widget.duration ?? const Duration(milliseconds: 250)),
      ),
    );
  }
}
