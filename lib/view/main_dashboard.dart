import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_website/view/about_me.dart';
import 'package:portfolio_website/view/body.dart';
import 'package:portfolio_website/view/footer.dart';
import 'package:portfolio_website/view/highlights.dart';
import 'package:portfolio_website/view/projects.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainDashBoard extends StatefulWidget {
  const MainDashBoard({super.key});

  @override
  State<MainDashBoard> createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final menuItems = <String>[
    'Home',
    'About',
    'Highlights',
    'Projects',
    'Contact',
  ];
  Future scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
      index: index,
      duration: Duration(seconds: 2),
      curve: Curves.fastLinearToSlowEaseIn,
    )
        .whenComplete(() {
      setState(() {
        MenuIndex = index;
      });
    });
  }

  var MenuIndex = 0;
  final screenList = const <Widget>[
    Body(),
    AboutMe(),
    Highlights(),
    Project(),
    FooterClass(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgoundcolor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        titleSpacing: 23,
        backgroundColor: AppColors.backgoundcolor,
        title: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 1200) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'My Portfolio',
                  style: AppTheme.portfoliotextstyle(
                      fontWeight: FontWeight.w900, size: 50),
                ),
                Spacer(),
                PopupMenuButton(
                  color: AppColors.backgoundcolor,
                  position: PopupMenuPosition.under,
                  constraints: BoxConstraints.tightFor(width: size.width * 0.9),
                  itemBuilder: (BuildContext context) => menuItems
                      .asMap()
                      .entries
                      .map((e) => PopupMenuItem(
                            child: Text(
                              e.value,
                              style: AppTheme.headertextstyle(
                                  color: AppColors.textcolor,
                                  size: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                            onTap: () {
                              scrollTo(index: e.key);
                            },
                          ))
                      .toList(),
                  icon: Icon(
                    Icons.menu_sharp,
                    size: 32,
                    color: Colors.grey,
                  ),
                ),
              ],
            );
          } else {
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      AppAssets.owl,
                      width: 90,
                      height: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
                  child: Text(
                    'My Portfolio',
                    style: AppTheme.portfoliotextstyle(
                        fontWeight: FontWeight.w900, size: 50),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 35,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 30),
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          scrollTo(index: index);
                        },
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              MenuIndex = index;
                            } else {
                              MenuIndex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                            index, MenuIndex == index ? true : false),
                      );
                    },
                  ),
                )
              ],
            );
          }
        }),
      ),
      body: Scrollbar(
        trackVisibility: true,
        child: ScrollablePositionedList.builder(
            itemCount: screenList.length,
            itemScrollController: _itemScrollController,
            itemBuilder: ((context, index) {
              return screenList[index];
            })),
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      // alignment: Alignment.center,
      //width: hover ? 125 : 125,
      duration: const Duration(milliseconds: 200),
      child: Text(
        menuItems[index],
        style: AppTheme.headertextstyle(
          fontWeight: FontWeight.w500,
          color: hover ? AppColors.secondarycolor : AppColors.textcolor,
        ),
      ),
    );
  }
}
