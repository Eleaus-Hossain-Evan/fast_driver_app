import 'package:fast_driver_app/core/components/app_bar_back_button.dart';
import 'package:flutter/material.dart';

class AppBarWithOnlyBackButton extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarWithOnlyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: AppBarBackButton(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
