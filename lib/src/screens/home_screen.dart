import 'package:doubble/src/settings/settings_controller.dart';
import 'package:doubble/src/widgets/buttons/double_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.settingsController})
      : super(key: key);
  final SettingsController settingsController;


  @override
  Widget build(BuildContext context) {
    void _onPressed() {
      print('onPressed');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DoubleButton(
              onPressed: () {
                settingsController.updateThemeMode(ThemeMode.light);
              },
              text: 'Light Mood',
            ),
            DoubleButton(
              onPressed: () async{
                await settingsController.updateThemeMode(ThemeMode.dark);
              },
              color: Theme
                  .of(context)
                  .secondaryHeaderColor,
              text: 'Dark Mood',
              icon: Icons.add,
            ),
            DoubleButton(
              onPressed: _onPressed,
              color: Colors.transparent,
              textColor: Theme.of(context).highlightColor,
              borderColor: Colors.grey,
              hasBorder: true,
              text: 'Transparent',
              icon: Icons.add,
            ),
            DoubleButton(
              onPressed: _onPressed,
              text: 'Disabled',
              isDisabled: true,
            ),
            DoubleButton(
              onPressed: _onPressed,
              text: 'Rounded',
              isRounded: true,
              isNotExpanded: true,
            ),
            DoubleButton(
              onPressed: _onPressed,
              text: 'Search',
              icon: Icons.search,
              color: Colors.white,
              hasBorder: true,
              textColor: Colors.black,
              borderColor: Colors.grey,
              iconColor: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: DoubleButton.iconButton(
                    onPressed: _onPressed,
                    icon: Icons.close,
                    color: Colors.white,
                    hasBorder: true,
                    iconColor: Colors.black,
                    borderColor: Colors.grey,
                  ),
                ),
                DoubleButton.iconButton(
                  onPressed: _onPressed,
                  icon: Icons.arrow_back_outlined,
                  color: Colors.grey,
                  iconColor: Colors.black,
                ),
                Expanded(
                  child: DoubleButton.iconButton(
                    onPressed: _onPressed,
                    icon: Icons.favorite,
                    color: Theme
                        .of(context)
                        .secondaryHeaderColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
