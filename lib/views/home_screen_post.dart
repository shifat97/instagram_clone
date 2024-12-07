import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/color.dart';
import 'package:instagram_clone/widgets/custom_text.dart';

class HomeScreenPost extends StatefulWidget {
  const HomeScreenPost({super.key});

  @override
  State<HomeScreenPost> createState() => _HomeScreenPostState();
}

class _HomeScreenPostState extends State<HomeScreenPost> {
  List<Map<String, dynamic>> userPosts = [
    {
      'userImage':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'name': 'shifat_s',
      'location': 'New York, USA',
      'image':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'caption': 'Exploring the beauty of NYC!',
      'is_verified': true,
    },
    {
      'userImage':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'name': 'jw_tt',
      'location': 'Tokyo, Japan',
      'image':
          'https://img.freepik.com/free-photo/young-male-posing-isolated-against-blank-studio-wall_273609-12356.jpg',
      'caption': 'Loving the vibrant city life! 🏙️🍣',
      'is_verified': false,
    },
    {
      'userImage':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'name': 'rashidul97',
      'location': 'Paris, France',
      'image':
          'https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg',
      'caption': 'Bonjour! Enjoying the Parisian vibes! 🗼☕',
      'is_verified': true,
    },
    {
      'userImage':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'name': 'sophia_l',
      'location': 'Sydney, Australia',
      'image':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'caption': 'Beach days and sunny rays! 🌊☀️',
      'is_verified': false,
    },
    {
      'userImage':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'name': 'michael_b',
      'location': 'Cape Town, South Africa',
      'image':
          'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg',
      'caption': 'Hiking up Table Mountain. What a view! 🏔️',
      'is_verified': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: userPosts.length,
        itemBuilder: (context, index) {
          final user = userPosts[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Image.network(
                                user['userImage']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomText(
                                    title: user['name'],
                                    fontSize: 13,
                                    textColor: AppColors.textBlack,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  user['is_verified']
                                      ? SvgPicture.asset(
                                          'assets/icons/verified.svg')
                                      : const SizedBox(),
                                ],
                              ),
                              CustomText(
                                title: user['location'],
                                fontSize: 11,
                                textColor: AppColors.textBlack,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/icons/settings.svg'),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                height: 375,
                width: double.infinity,
                child: Image.network(
                  user['image'],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset('assets/icons/like.svg'),
                          ),
                          const SizedBox(width: 17),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset('assets/icons/comment.svg'),
                          ),
                          const SizedBox(width: 17),
                          InkWell(
                            onTap: () {},
                            child:
                                SvgPicture.asset('assets/icons/massenger.svg'),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset('assets/icons/pagination.svg'),
                    SvgPicture.asset('assets/icons/save.svg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.5),
                child: Row(
                  children: [
                    Container(
                      width: 17,
                      height: 17,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          user['userImage'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6.5,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Liked By ',
                        children: <TextSpan>[
                          TextSpan(
                            text: user['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const TextSpan(
                            text: ' and ',
                          ),
                          const TextSpan(
                            text: '44, 686 others',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.5),
                child: Text.rich(
                  TextSpan(
                    text: user['name'],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ${user['caption']}',
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // caption
            ],
          );
        },
      ),
    );
  }
}
