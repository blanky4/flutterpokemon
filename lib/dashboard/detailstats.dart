import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterpokemon/core/theme/app_colors.dart';
import 'package:flutterpokemon/core/theme/app_fonts.dart';

import '../core/assets/app_images.dart';

class DetailStats extends StatelessWidget {
  const DetailStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Stack(
        children: [Padding(
            padding: const EdgeInsets.only(
              top: 59,
              left: 38,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: AppColors.white,
                  iconSize: 35,
                ),
                const SizedBox(
                  width: 22,
                ),
                const Text(
                  'PokeApp',
                  style: AppFonts.w700s48,
                ),
                const SizedBox(width: 7),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 153, left: 38),
            child: Text(
              'Squirtle',
              style: AppFonts.w600s24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 284, left: 180),
            child: Image.asset(AppImages.poke, height: 133, width: 133,),
          )
        ],
      ),
    );
  }
}
