import 'package:pawan_portfolio_website/design/constants/app_images.dart';
import 'package:pawan_portfolio_website/design/utils/app_colors.dart';
import 'package:pawan_portfolio_website/design/widgets/app_image_widget.dart';
import 'package:pawan_portfolio_website/design/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/material.dart';

class HighlightsMobileWidget extends StatelessWidget {
  const HighlightsMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      // height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                BoxShadow(
                  blurRadius: 200,
                  spreadRadius: 200,
                  color: AppColors.purple.withOpacity(0.4),
                )
              ]),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Highlights',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: [
                    highlightContainer(
                        context,
                        false,
                        '+4 Top Companies Project',
                        AppImages.bookmarkImage,
                        'Collaborated with several prestigious multinational corporations, including Google and Facebook as clients.',
                        'VISIT LinkedIn'),
                    highlightContainer(
                        context,
                        false,
                        'Technical Lead @HCL',
                        AppImages.bulbImage,
                        'Possess over five years of experience in development, client management, and a diverse range of responsibilities at HCL Technologies.',
                        'VISIT LinkedIn'),
                    highlightContainer(
                        context,
                        false,
                        'Freelance Small Projects',
                        AppImages.cupImage,
                        'I also have experience in freelancing, where I served as a web developer and digital marketer for small clients.',
                        'VISIT LinkedIn'),
                    highlightContainer(
                        context,
                        false,
                        'ML Researcher',
                        AppImages.pickerImage,
                        "With a passion for pushing AI's boundaries, I continually delve into the latest research and developments in the field.",
                        'VISIT LinkedIn'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget highlightContainer(BuildContext context, bool showButton, String topic,
      imagePath, text, buttonText) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageWidget(
            imageWidth: 80,
            imageHeight: 80,
            path: imagePath,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: const TextStyle(
                      height: 1.2, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Text(
                  text,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
                if (showButton) const SizedBox(height: 10),
                if (showButton)
                  AppOutlinedButton(
                    title: buttonText,
                    textStyle: const TextStyle(fontSize: 12),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
