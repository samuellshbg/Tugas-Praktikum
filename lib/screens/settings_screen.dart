import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../providers/font_provider.dart';
import '../themes/app_themes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fontProvider = Provider.of<FontProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select Theme', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            
            ListTile(
              title: const Text('Theme A'),
              leading: Radio(
                value: AppThemes.themeA,
                groupValue: themeProvider.currentTheme,
                onChanged: (value) => themeProvider.switchTheme(value!),
              ),
            ),
            ListTile(
              title: const Text('Theme B'),
              leading: Radio(
                value: AppThemes.themeB,
                groupValue: themeProvider.currentTheme,
                onChanged: (value) => themeProvider.switchTheme(value!),
              ),
            ),
            ListTile(
              title: const Text('Theme C'),
              leading: Radio(
                value: AppThemes.themeC,
                groupValue: themeProvider.currentTheme,
                onChanged: (value) => themeProvider.switchTheme(value!),
              ),
            ),
            const Divider(),
            const Text('Select Font', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('Roboto'),
              leading: Radio(
                value: 'Roboto',
                groupValue: fontProvider.currentFont,
                onChanged: (value) => fontProvider.switchFont(value!),
              ),
            ),
            ListTile(
              title: const Text('Lobster'),
              leading: Radio(
                value: 'Lobster',
                groupValue: fontProvider.currentFont,
                onChanged: (value) => fontProvider.switchFont(value!),
              ),
            ),
            ListTile(
              title: const Text('Open Sans'),
              leading: Radio(
                value: 'Open Sans',
                groupValue: fontProvider.currentFont,
                onChanged: (value) => fontProvider.switchFont(value!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
