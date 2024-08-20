import 'package:flutter/material.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/extentions/int_extensions.dart';
import 'package:provider/provider.dart';

import '../providers/scroll_provider.dart';
import '../utility/appbar_utils.dart';
import '../utility/constants.dart';
import 'external_links.dart';
import 'signature_image.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Material(
        color:primaryColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: SignatureImage(),
              ),
              ...AppBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    hoverColor: secondaryColor.withAlpha(70),
                    onPressed: () {
                      scrollProvider.scrollMobile(e.key);
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(
                        AppBarUtils.icons[e.key],
                        color: secondaryColor,
                      ),
                      title: Text(
                        e.value,
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: secondaryColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ExternalLinks(
                      url: linkedinUrl,
                      icon: 'linkedin.svg',
                    ),
                    12.width,
                    ExternalLinks(
                      url: upworkUrl,
                      icon: 'upwork.svg',
                    ),
                    12.width,
                    ExternalLinks(
                      url: githubUrl,
                      icon: 'github.svg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
