import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../providers/language_provider.dart';

class CustomAppBar extends ConsumerStatefulWidget {
  final bool showLogo;
  final double logoSize;
  final bool showLanguageButton;
  final String title;
  final bool centerTitle;
  final bool withBackButton;
  const CustomAppBar({
    super.key,
    this.showLogo = false,
    this.showLanguageButton = false,
    this.title = "",
    this.centerTitle = false,
    this.logoSize = 25,
    this.withBackButton = false,
  });

  @override
  ConsumerState<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends ConsumerState<CustomAppBar> {
  late String language;
  @override
  Widget build(BuildContext context) {
    language = ref.watch(languageProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              widget.withBackButton
                  ? IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  )
                  : SizedBox(),
              widget.showLogo
                  ? SizedBox(
                    height: widget.logoSize,
                    width: widget.logoSize,
                    child: Image.asset("assets/icons/icon.png"),
                  )
                  : SizedBox(),
              SizedBox(width: kSmallSpacing),
              widget.centerTitle
                  ? Expanded(
                    child: Center(
                      child: Text(
                        widget.title,
                        style: kBoldSubtitleTextStyleWithMainColor,
                      ),
                    ),
                  )
                  : Text(
                    widget.title,
                    style: kBoldSubtitleTextStyleWithMainColor,
                  ),
            ],
          ),
        ),
        Row(
          spacing: kSmallestSpacing,
          children: [
            Icon(Icons.cloud_off_rounded),
            widget.showLanguageButton
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      if (language == "en") {
                        ref.read(languageProvider.notifier).state = "ar";
                      } else {
                        ref.read(languageProvider.notifier).state = "en";
                      }
                    });
                  },
                  icon: Icon(Icons.language),
                )
                : SizedBox(),
          ],
        ),
      ],
    );
  }
}
