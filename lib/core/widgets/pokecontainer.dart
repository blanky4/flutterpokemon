import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterpokemon/core/theme/app_fonts.dart';

import '../assets/app_images.dart';
import '../theme/app_colors.dart';

class PokeContainer extends StatelessWidget {
  const PokeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: SizedBox(
                child: Stack(            
                  clipBehavior: Clip.none,
                  children: [                  
                    Container(
                      width: 300,
                      height: 74,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.brown),
                          
                    ),
                    Positioned( top: 21,left: 15,
                      child: const Text('Jinglepuff', style: AppFonts.w500s18,)),   
                    Positioned
                    (right: 0, top: 24,
                    child: Image.asset(AppImages.poke, width: 100,))
                  ],
                ),
              ),
    );
  }
}