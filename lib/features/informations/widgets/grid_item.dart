import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_boilerplate/utils/methods/shortcuts.dart';
import 'package:url_launcher/url_launcher.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.title,
    required this.icon,
    required this.url,
    this.category,
  });

  final String title;
  final IconData icon;
  final Uri url;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: getPrimaryColor(context),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: ListTile(
        onTap: _launchUrl,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.primary),
            Text(
              tr(title),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: getTextTheme(context).titleSmall!.apply(fontWeightDelta: 2, fontSizeDelta: -2),
            ),
            if (category != null) ...{
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  category!,
                  style: getTextTheme(context).bodySmall!.apply(fontSizeDelta: -1),
                ),
              ),
            },
          ],
        ),
      ),
    );
  }

  Future<bool> _launchUrl() async =>
      await canLaunchUrl(url) ? await launchUrl(url) : throw Exception('Could not launch $url');
}
