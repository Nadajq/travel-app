import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/viwes/details.dart';

import '../model/country_model.dart';
import '../model/popular_tours_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();//responsible for managing and updating the internal state
}
// State class for the Home widget
class _HomeState extends State<Home> {
  List<PopularTourModel> popularTourModels = List<PopularTourModel>.empty();
  List<CountryModel> country = List<CountryModel>.empty();
  @override
  void initState() {
    country = getCountrys().cast<CountryModel>();
    popularTourModels = getPopularTours().cast<PopularTourModel>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(// Build the UI for the Home widget
      appBar: AppBar(// App bar with title and icons
        leading: Container(//box that can hold other widgets,to control the size,alignment,and decoration of its child
          padding: const EdgeInsets.all(7),
          child: Image.asset(
            "image/menu.png",
            height: 20,
            width: 20,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "image/logo.png",
              height: 30,
            ),
            const Text(
              "my trip",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          )
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(//allows its single child to be scrolled.
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "find the best tour",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Country",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 240,
               child: ListView.builder(// Horizontal list of countries
                 itemCount: country.length,
                   shrinkWrap: true,
                   physics: const ClampingScrollPhysics(),
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context,index){
                   return CountryListTile(
                     label: country[index].label,
                     countryName: country[index].countryName,
                     noOgTours: country[index].noOfTours,
                     rating: country[index].rating,
                     imgUrl: country[index].imgUrl,
                   );
                   }),
              ),
             const SizedBox(
               height: 8,
              ),
              const Text(
                "Popular Tours",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(// Vertical list of popular tours
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: popularTourModels.length ,
                  itemBuilder: (context,index){
                  return PopularTours(
                    desc: popularTourModels[index].desc,
                    imgUrl: popularTourModels[index].imgUrl,
                    title:popularTourModels[index].title,
                    price: popularTourModels[index].price,
                    rating:popularTourModels[index].rating,
                  );
                  })
              ],
          ),
        ),
      ),
    );
  }
}

class PopularTours extends StatelessWidget {
  const PopularTours({super.key, required this.imgUrl, required this.title, required this.desc, required this.price, required this.rating});
  final String imgUrl;
  final String title;
  final String desc;
  final String price;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){// Open details page when tapped
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Details(
          imgUrl: imgUrl,
          placeName: title ,
          rating: rating,
        )));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
        color: const Color(0xffE9F4F9), borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display the image of the popular tour
          ClipRRect( //helping achieve a rounded corner effect for the child widgets
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              width: 110 ,
              height: 90,
              fit: BoxFit.cover,

            ),
          ),
          Container(// Display details of the popular tour
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(title,
                style: const TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4E6059) ),),
              const SizedBox(height: 3,),
              Text(desc,
                style: const TextStyle(fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff89A097) ),),
              const SizedBox(height: 6,),
              Text(price,
                style: const TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4E6059) ),)
            ],),
          ),
          Container(// Display rating of the popular tour
              margin: const EdgeInsets.only(bottom: 10,right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 12),
              decoration : BoxDecoration(
                  borderRadius:BorderRadius.circular(6),
                  color: const Color(0xff139157)),
              child: Column(
                children: [
                  Text("$rating",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),),
                  const SizedBox(
                    height: 2,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  )
                ],))

        ],),
      ),
    );
  }
}

// Widget for displaying details of a country
class CountryListTile extends StatelessWidget {
   final String label;
 final String countryName;
 final int noOgTours;
 final double rating;
 final String imgUrl;
CountryListTile({required this.countryName,required this.label,required this.noOgTours,required this.rating, required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8) ,
      child: Stack(children: [//  to  put widgets  on top of each other
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
              imageUrl:imgUrl,
            height: 220,
            width: 150,
            fit: BoxFit.cover
          ),
        ),
        Container(
          height: 200,
          width: 150,
          child: Column(children: [
           Row(
             children: [
               Container(
                 margin: const EdgeInsets.only(left: 8,top: 8),
                 padding:  const EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                  decoration : BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color: Colors.white38),
                  child: Text(label ?? "New",style: const TextStyle(color: Colors.white),))],
           ),
            const Spacer(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10,left: 8,right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text("Thailand",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 3,),
                      const Text("18 Tours",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),)
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                    margin: const EdgeInsets.only(bottom: 10,right: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 7),
                    decoration : BoxDecoration(
                        borderRadius:BorderRadius.circular(3),
                        color: Colors.white38),
                    child: const Column(
                      children: [
                        Text("4.5",style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 13),),
                        SizedBox(
                          height: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        )
                      ],))
              ],
            )
          ],),
        )
      ],) ,
    );
  }
}
