import 'package:bmi_calculator_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WidgetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppName.name,
        style: GoogleFonts.openSans(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColors.backgroundDarkBlue,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      forceMaterialTransparency: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
