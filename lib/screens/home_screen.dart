import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_app/consts/global_colors.dart';
import 'package:store_app/widgets/app_bar_icons.dart';
import 'package:store_app/widgets/feeds_widget.dart';
import 'package:store_app/widgets/swiper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _textEditingController;
  @override
  void initState() {
    _textEditingController=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child:  Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          leading: AppBarIcon(
            function: (){},
            icon: IconlyBold.category,
          ),actions: [
          AppBarIcon(
            function: (){},
            icon: IconlyBold.user3,
          ),

        ],
          elevation: 4,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const SizedBox(height: 18,),

            TextField(
controller: _textEditingController,
              decoration: InputDecoration(
                suffixIcon: const Icon(IconlyLight.search),
                suffixIconColor: lightIconsColor,
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Theme.of(context).cardColor,
                  ),

                ),
                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1,
                    color: Theme.of(context).colorScheme.secondary,
                  ),


                ),
              ),
            ),const SizedBox(height: 20,),
          const SwiperImage(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          child: Row(children: [
            Text('Latest Product',style: TextStyle(
              fontSize: 17,
              //  fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),),
            Expanded(child: SizedBox()),
            Icon(IconlyBold.arrowRight2 )
          ],),
        ),
        const FeedsWidget(),
          ],),
        ),
      ),
    );
  }
}
