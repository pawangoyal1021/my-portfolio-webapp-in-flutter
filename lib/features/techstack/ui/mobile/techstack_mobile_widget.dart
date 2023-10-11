import 'package:pawan_portfolio_website/design/constants/app_constants.dart';
import 'package:pawan_portfolio_website/design/utils/app_colors.dart';
import 'package:pawan_portfolio_website/design/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';

class TechstackMobileWidget extends StatelessWidget {
  const TechstackMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Preah', fontSize: 24),
                  children: [
                    const TextSpan(
                        text:
                            'I have attained expertise in an array of cutting-edge '),
                    TextSpan(
                        text: 'tech stacks ',
                        style: TextStyle(color: AppColors.purple)),
                    const TextSpan(
                        text:
                            'empowering me to craft seamless and innovative solutions.'),
                  ]),
            ),
            const SizedBox(height: 20),
            Container(
              // width: ,
              child: const Text(
                "I have had the privilege of serving as the CTO of Millennium Kid School, where I managed the entire technological aspect of the project, ranging from website design and development to providing exceptional client support. During my time as a web developer at Workezy, I had the opportunity to work on projects with a substantial user base, which allowed me to gain invaluable experience and enhance my comprehension of web development principles. Additionally, over the past five-plus years at HCL, I have held various roles, including Junior Software Engineer, Software Engineer, Senior Software Engineer, and Technical Lead.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Wrap(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        7,
                        (index) => techStackCircle(
                            techStackImages.values.toList()[index]))),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: List.generate(
                //         6,
                //         (index) => techStackCircle(techStackImages.values
                //             .toList()
                //             .reversed
                //             .toList()[index])))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget techStackCircle(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(6),
      height: 54,
      width: 54,
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.violet),
      child: AppImageWidget(
        path: imagePath,
      ),
    );
  }
}
