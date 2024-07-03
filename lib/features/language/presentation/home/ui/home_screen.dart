import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:language_teacher/core/utils/color/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0.3,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.menu_14),
        ),
        title: const Center(
          child: Text('Categories', style: TextStyle(
            fontSize: 22,
            fontFamily: 'PaynetB'
          ),),
        ),
        actions: [
          IconButton(onPressed: (){},  icon: const Icon(Iconsax.search_normal))
        ],
      ),
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {

                      },
                      child: SizedBox(
                        height: 56,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.lightgrey, // Border color
                                  width: 1, // Border width
                                  style: BorderStyle
                                      .solid, // Border style (solid, dashed, etc.)
                                ),
                                borderRadius: BorderRadius.circular(
                                    28), // Border radius (optional)
                              ),
                              child:  Center(
                                child: Text(
                                  (index+1).toString(),
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'Are you going to have lunch now?',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Siz hozir tushlik qilmoqchimisz?',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.lightgrey, // Border color
                                  width: 1, // Border width
                                  style: BorderStyle
                                      .solid, // Border style (solid, dashed, etc.)
                                ),
                                borderRadius: BorderRadius.circular(
                                    28), // Border radius (optional)
                              ),
                              child: const Center(
                                  child: Icon(Icons.keyboard_arrow_right_rounded)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: const Divider(
                        color: AppColor.lightgrey,
                        thickness: 1,
                      ),
                    );
                  },
                  itemCount: 20)
            ],
          ),
        ),
      ),
    );
  }
}
