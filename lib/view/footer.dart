import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.5,
      width: MediaQuery.of(context).size.width,
      //color: AppColors.creamyBackground,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets.profile5,
                height: 200,
                width: 200,
              ),
              Spacer(),
              Image.asset(
                AppAssets.profile6,
                height: 200,
                width: 200,
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.containercolor),
              child: const Icon(
                Icons.arrow_upward,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
