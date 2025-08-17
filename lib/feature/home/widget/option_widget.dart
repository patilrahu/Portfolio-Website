import 'package:flutter/material.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/helper/responsive.dart';

class OptionWidget extends StatefulWidget {
  final List<String> options;
  final void Function(int index) onPressed;
  OptionWidget({super.key, required this.options, required this.onPressed});
  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    final optionWidgets = List.generate(widget.options.length, (index) {
      final option = widget.options[index];
      final isSelected = selectedIndex == index;

      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          widget.onPressed(index);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                option,
                style: TextStyle(
                  color: AppColor.blackColor,
                  fontSize: isMobile ? 16 : 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (isSelected && isMobile)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  height: 2,
                  width: 40,
                  color: AppColor.blackColor,
                ),
            ],
          ),
        ),
      );
    });

    return isMobile
        ? Column(
            spacing: 18,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: optionWidgets,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: optionWidgets,
          );
  }
}
