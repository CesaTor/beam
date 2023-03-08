import 'package:beam/core/widgets/ct/ct_fw_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CTHero extends StatelessWidget {
  const CTHero({
    required this.imgUrl,
    this.title,
    this.subtitle,
    this.cta,
    this.ctaLabel,
    super.key,
  });

  final String imgUrl;
  final String? title;
  final String? subtitle;

  final String? ctaLabel;
  final void Function()? cta;

  // TODO(ct): fix text overflowing without ellipsis
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CTFullWidthImage(imgUrl: imgUrl),
        if (title != null)
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              title!,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        if (subtitle != null)
          Positioned(
            top: 40,
            left: 10,
            child: Text(
              subtitle!,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        if (cta != null)
          Positioned(
            bottom: 10,
            right: 10,
            child: OutlinedButton(
              onPressed: cta,
              child: Text(
                ctaLabel ?? 'Learn More',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
