import 'package:beam/core/widgets/ct/ct_hero.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CTCard extends StatelessWidget {
  const CTCard({this.imgUrl, super.key, this.title, this.subtitle});

  final String? imgUrl;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imgUrl != null)
              SizedBox(
                height: 140,
                child: CTHero(imgUrl: imgUrl!),
              ),
            if (title != null)
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  title!,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            if (subtitle != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Text(
                  subtitle!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
