import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/screens/add_post_screen.dart';
import 'package:instagram_flutter/screens/feed_screen.dart';
import 'package:instagram_flutter/screens/profile_screen.dart';
import 'package:instagram_flutter/screens/search_screen.dart';
import 'package:provider/provider.dart';
import 'package:instagram_flutter/screens/current_profile_screen.dart';

import '../providers/user_provider.dart';

const webScreenSize = 600;

class GlobalVar {
  static String user_id = FirebaseAuth.instance.currentUser!.uid;
  static List<Widget> homeScreenItems = [
    const FeedScreen(),
    const SearchScreen(),
    const AddPostScreen(),
    const CurrentProfileScreen(),
  ];

  static void userD(int a) {
    print(
        "UUUUUUUUSSSSSSSSSSSEEEEEEEEERRRRRRR D $a = ${FirebaseAuth.instance.currentUser!.uid}");
    GlobalVar.user_id = FirebaseAuth.instance.currentUser!.uid;
  }
}

// List<Widget> homeScreenItems = [
//   const FeedScreen(),
//   const SearchScreen(),
//   const AddPostScreen(),
//   const Text('notifications'),
//   ProfileScreen(
//     uid: FirebaseAuth.instance.currentUser!.uid,
//   ),
// ];
