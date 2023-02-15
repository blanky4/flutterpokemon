import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterpokemon/core/assets/app_images.dart';
import 'package:flutterpokemon/core/theme/app_colors.dart';
import 'package:flutterpokemon/core/theme/app_fonts.dart';
import 'package:flutterpokemon/core/widgets/pokecontainer.dart';

TextEditingController textEditingController = textEditingController;

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 59, left: 38),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'PokeApp',
                    style: AppFonts.w700s48,
                  ),
                  SizedBox(width: 7),
                  Image.asset(
                    AppImages.logo,
                    width: 53,
                  )
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Pokemon List',
                style: AppFonts.w600s24,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Find the pokemon you want',
                style: AppFonts.w500s14,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 31,
                    width: 254,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(14),
                        hintStyle: AppFonts.w500s12
                            .copyWith(color: AppColors.whitegreen),
                        hintText: 'search here...',
                        fillColor: AppColors.brown,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                        color: AppColors.brown,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: IconButton(
                        padding: EdgeInsets.all(4),
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                        ),
                        color: AppColors.whitegreen,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
            const PokeContainer(),
              const SizedBox(
                height: 62,
              ),
             const PokeContainer(),
              const SizedBox(
                height: 62,
              ),
              const PokeContainer(),
              const SizedBox(
                height: 62,
              ),
              const PokeContainer(),
              
            ],
          ),
        ),
      ),
    );
  }
}
