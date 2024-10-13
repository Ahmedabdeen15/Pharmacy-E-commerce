import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(
        title: 'Help',
        iconDiplay: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.1, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GenericFlexibleButton(
                    text: 'FAQ',
                    minWidth: 142,
                    minHeight: 55,
                    fontSize: 20,
                    onPressed: () {}),
                MaterialButton(
                  onPressed: () {},
                  color: AppColors.white,
                  minWidth: 142,
                  height: 55,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: const BorderSide(
                        color: Color(0xFF33E4DB), width: 2), // Add blue border
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'Contact US',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(children: [
                const Text(
                  'Lorem ipsum dolor sit amet?',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Transform.rotate(
                  angle: 77,
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.white,
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade400, width: 0.5)),
              child: Row(children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const RadialGradient(
                    center: Alignment.topCenter,
                    stops: [.5, 1],
                    colors: [
                      Color.fromARGB(255, 51, 228, 219),
                      Color.fromARGB(255, 0, 186, 211),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Lorem ipsum dolor sit amet?',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          stops: [.5, 1],
                          colors: [
                            Color.fromARGB(255, 51, 228, 219),
                            Color.fromARGB(255, 0, 186, 211),
                          ],
                        ).createShader(bounds),
                    child: Transform.rotate(
                      angle: 77,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      ),
                    )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade400, width: 0.5)),
              child: Row(children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const RadialGradient(
                    center: Alignment.topCenter,
                    stops: [.5, 1],
                    colors: [
                      Color.fromARGB(255, 51, 228, 219),
                      Color.fromARGB(255, 0, 186, 211),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Lorem ipsum dolor sit amet?',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          stops: [.5, 1],
                          colors: [
                            Color.fromARGB(255, 51, 228, 219),
                            Color.fromARGB(255, 0, 186, 211),
                          ],
                        ).createShader(bounds),
                    child: Transform.rotate(
                      angle: 77,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      ),
                    )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade400, width: 0.5)),
              child: Row(children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const RadialGradient(
                    center: Alignment.topCenter,
                    stops: [.5, 1],
                    colors: [
                      Color.fromARGB(255, 51, 228, 219),
                      Color.fromARGB(255, 0, 186, 211),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Lorem ipsum dolor sit amet?',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          stops: [.5, 1],
                          colors: [
                            Color.fromARGB(255, 51, 228, 219),
                            Color.fromARGB(255, 0, 186, 211),
                          ],
                        ).createShader(bounds),
                    child: Transform.rotate(
                      angle: 77,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      ),
                    )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade400, width: 0.5)),
              child: Row(children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const RadialGradient(
                    center: Alignment.topCenter,
                    stops: [.5, 1],
                    colors: [
                      Color.fromARGB(255, 51, 228, 219),
                      Color.fromARGB(255, 0, 186, 211),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Lorem ipsum dolor sit amet?',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          stops: [.5, 1],
                          colors: [
                            Color.fromARGB(255, 51, 228, 219),
                            Color.fromARGB(255, 0, 186, 211),
                          ],
                        ).createShader(bounds),
                    child: Transform.rotate(
                      angle: 77,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      ),
                    )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade400, width: 0.5)),
              child: Row(children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const RadialGradient(
                    center: Alignment.topCenter,
                    stops: [.5, 1],
                    colors: [
                      Color.fromARGB(255, 51, 228, 219),
                      Color.fromARGB(255, 0, 186, 211),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Lorem ipsum dolor sit amet?',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          stops: [.5, 1],
                          colors: [
                            Color.fromARGB(255, 51, 228, 219),
                            Color.fromARGB(255, 0, 186, 211),
                          ],
                        ).createShader(bounds),
                    child: Transform.rotate(
                      angle: 77,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      ),
                    )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade400, width: 0.5)),
              child: Row(children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const RadialGradient(
                    center: Alignment.topCenter,
                    stops: [.5, 1],
                    colors: [
                      Color.fromARGB(255, 51, 228, 219),
                      Color.fromARGB(255, 0, 186, 211),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Lorem ipsum dolor sit amet?',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          stops: [.5, 1],
                          colors: [
                            Color.fromARGB(255, 51, 228, 219),
                            Color.fromARGB(255, 0, 186, 211),
                          ],
                        ).createShader(bounds),
                    child: Transform.rotate(
                      angle: 77,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      ),
                    )),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
