import 'package:flutter/material.dart';
import 'package:ralali_cake_app/app.dart';
import 'package:ralali_cake_app/core/extensions/text_style_extension.dart';

import '../../../../../core/theme/_themes.dart';
import '../../../detail/presentation/pages/detail_page.dart';
import '../../data/model/cake_model.dart';

class CakeCard extends StatelessWidget {
  const CakeCard({
    required this.cake,
    super.key,
  });

  final CakeModel cake;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => nav.push(DetailPage(id: cake.id)),
      child: Container(
        height: 165,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 16,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.only(bottom: 36, left: 36, right: 36),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cake.title,
                    style: RalaliFontTheme.greyTitle.button,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    cake.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: RalaliFontTheme.greyText,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Rating: ${cake.rating}',
                    style: RalaliFontTheme.greyText.textMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Image.network(
              cake.image,
              fit: BoxFit.cover,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
