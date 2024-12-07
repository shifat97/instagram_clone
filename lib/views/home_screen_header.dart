import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.15),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _inkWell(() {}, imagePath: 'assets/icons/camera.svg'),
            Container(
              margin: const EdgeInsets.only(
                top: 6,
              ),
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 105,
                height: 28,
              ),
            ),
            Row(
              children: [
                _inkWell(() {}, imagePath: 'assets/icons/igtv.svg'),
                const SizedBox(
                  width: 18.31,
                ),
                _inkWell(() {}, imagePath: 'assets/icons/massenger.svg')
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _inkWell(Function? handler, {required String imagePath}) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: SvgPicture.asset(imagePath),
    );
  }
}
