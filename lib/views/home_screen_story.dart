import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color.dart';
import 'package:instagram_clone/widgets/custom_text.dart';

List<Map> userImageURLS = [
  {
    'name': 'shifat_s',
    'url':
        'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'
  },
  {
    'name': 'jw_tt',
    'url':
        'https://img.freepik.com/free-photo/young-male-posing-isolated-against-blank-studio-wall_273609-12356.jpg'
  },
  {
    'name': 'rashidul97',
    'url':
        'https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg'
  },
  {
    'name': 'shifat_s',
    'url':
        'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'
  },
  {
    'name': 'jw_tt',
    'url':
        'https://img.freepik.com/free-photo/young-male-posing-isolated-against-blank-studio-wall_273609-12356.jpg'
  },
  {
    'name': 'rashidul97',
    'url':
        'https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg'
  },
  {
    'name': 'shifat_s',
    'url':
        'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'
  },
  {
    'name': 'jw_tt',
    'url':
        'https://img.freepik.com/free-photo/young-male-posing-isolated-against-blank-studio-wall_273609-12356.jpg'
  },
  {
    'name': 'rashidul97',
    'url':
        'https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg'
  },
];

class HomeScreenStory extends StatelessWidget {
  const HomeScreenStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      padding: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.15),
          ),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userImageURLS.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 62, // Outer circle size
                      height: 62, // Outer circle size
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFBAA47),
                            Color(0xFFD91A46),
                            Color(0xFFA60F93),
                          ], // Gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    // Inner circle (the image)
                    Container(
                      width: 59,
                      height: 59,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          userImageURLS[index]['url'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                CustomText(
                  title: userImageURLS[index]['name'],
                  fontSize: 12,
                  textColor: AppColors.textBlack,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
