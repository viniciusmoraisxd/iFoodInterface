import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';

class BannersComponent extends StatefulWidget {
  final List<BannerItemComponent> list;
  const BannersComponent({Key? key, required this.list}) : super(key: key);

  @override
  _BannersComponentState createState() => _BannersComponentState();
}

class _BannersComponentState extends State<BannersComponent> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentIndex = 0;
  @override
  void initState() {
    _pageController.addListener(_onChangePage);
  }

  @override
  dispose() {
    _pageController.removeListener(_onChangePage);
    super.dispose();
  }

  _onChangePage() {
    setState(() {
      _currentIndex = _pageController.page!.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SizedBox(
            height: 115,
            child: PageView(
              controller: _pageController,
              children: widget.list,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.list
                  .map((e) => AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.list.indexOf(e) == _currentIndex
                              ? AppColors.grey700
                              : AppColors.grey300,
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        height: 6,
                        width: 6,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class BannerItemComponent extends StatelessWidget {
  final String imagePath;
  const BannerItemComponent({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
