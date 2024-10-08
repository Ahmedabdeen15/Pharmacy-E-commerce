import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class CustomAppBarr extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarr(
      {super.key, required this.title, this.name, this.iconDiplay = false});
  final String title;
  final String? name;
  final bool? iconDiplay;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.primaryColor, // Apply the gradient here
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: MediaQuery.of(context).size.width * 0.42,
        leading: iconDiplay!
            ? name == null
                ? const Row(
                    children: [
                      BackButton(),
                      Icon(Icons.person, color: AppColors.white),
                    ],
                  )
                : Row(
                    children: [
                      const BackButton(),
                      const Icon(Icons.person, color: AppColors.white),
                      Flexible(
                        child: Text(
                          'Hi, Welcome Back $name',
                          style: const TextStyle(
                              color: AppColors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  )
            : Navigator.canPop(context)
                ? const Row(
                    children: [
                      BackButton(),
                    ],
                  )
                : const SizedBox(),
        title: Text(
          title,
          style: const TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_outlined,
          size: 10, color: AppColors.white),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
