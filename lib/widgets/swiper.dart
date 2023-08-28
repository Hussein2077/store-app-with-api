import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/sale_widget.dart';
class SwiperImage extends StatelessWidget {
  const SwiperImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return   SizedBox(
      height:size.height*.25 ,
      child: Swiper(
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.white,
            activeColor: Colors.red,
          ),
          alignment: Alignment.bottomCenter,
        ),
        itemCount: 3,
        itemBuilder: (context,index){
          return  const SaleWidget();
        },
      ),
    );
  }
}
