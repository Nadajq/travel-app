import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/model/country_model.dart';
import 'package:travel_app/viwes/home.dart';

class Details extends StatefulWidget {
final String imgUrl;
final String placeName;
final double rating;
Details(
    {required this.rating, required this.imgUrl, required this.placeName});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<CountryModel> country = List<CountryModel>.empty();
@override
  void initState() {
  country = getCountrys().cast<CountryModel>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    widget.imgUrl,
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 350,
                    color: Colors.black12,
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(// Row with back arrow, share, and heart icons
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 24,
                              ),
                              Spacer(),
                              Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Image.asset(
                                "image/heart.png",
                                height: 24,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(// Display place name, location, and ratin
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.placeName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "koh chang tai, Thailand",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RatingBar(widget.rating.round()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "${widget.rating}",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container( // Container with a white background for the bottom part of the overlay
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(// Row of feature tiles with icons and labels
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FeaturesTile(
                    icon: Icon(Icons.wifi, color: Color(0xff5A6C64)),
                    lable: "Free wifi",
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.beach_access, color: Color(0xff5A6C64)),
                    lable: "Sand Beach",
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.card_travel, color: Color(0xff5A6C64)),
                    lable: "First Coastline",
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.local_drink, color: Color(0xff5A6C64)),
                    lable: "Bar and Resturant",
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                child: Row(// Row of DetailsCard widgets
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [DetailsCard(rating: widget.rating, title: '', noOfReviews: '',),
                    DetailsCard(rating: widget.rating, title: '', noOfReviews: '',)
                ],),
              ),
              SizedBox(height: 8,),
              Container(// Container with text describing the place
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut scelerisque arcu quis eros auctor, eu dapibus urna congue. Nunc nisi diam, semper maximus risus dignissim, semper maximus nibh. Sed finibus ipsum eu erat finibus efficitur. ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff879D95)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(// Container with a horizontal ListView of ImageListTile widgets
                height: 240,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                    itemCount: country.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return ImageListTile(
                        imgUrl: country[index].imgUrl,
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
// DetailsCard widget to display details in a card format
class DetailsCard extends StatelessWidget {
  final String title;
  final String noOfReviews;
  final double rating;
  DetailsCard({required this.rating, required this.title, required this.noOfReviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      
      decoration: BoxDecoration(
          color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(// Row with an icon and title
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset(
                  "image/card1.png",
                  height: 30,),
              ),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  "Booking",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5A6C64)),
                ),
                SizedBox(height: 6,),
                Text(
                  "8.0/10",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5A6C64)),
                )
              ],)
            ],
          ),
          SizedBox(height: 8,),
          Text(
            "Besed on 30 reviws",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff879D95)),
          ),

        ],
      ),
    );
  }
}
// FeaturesTile widget to display a feature with an icon and label
class FeaturesTile extends StatelessWidget {
  final Icon icon;
  final String lable;
  FeaturesTile({required this.lable, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff5A6C64).withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(40)),
              child: icon,
            ),
            SizedBox(
              height: 9,
            ),
            Container(
                width: 70,
                child: Text(
                  lable,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5A6C64)),
                ))
          ],
        ),
      ),
    );
  }
}
// RatingBar widget to display a row of stars based on the given rating
class RatingBar extends StatelessWidget {
  final int rating;
  RatingBar(this.rating);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: rating >= 1 ? Colors.white70 : Colors.white30,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 2 ? Colors.white70 : Colors.white30,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 3 ? Colors.white70 : Colors.white30,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 4 ? Colors.white70 : Colors.white30,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 5 ? Colors.white70 : Colors.white30,
        ),
      ],
    ));
  }
}
// ImageListTile widget to display an image with rounded corners
class ImageListTile  extends StatelessWidget {

  final String imgUrl;
  ImageListTile ({ required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 220,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}