import '../model/country_model.dart';
import '../model/popular_tours_model.dart';
// Function to generate a list of countries with sample data
List<CountryModel> getCountrys() {
  List<CountryModel> country =  [];
  CountryModel countryModel = CountryModel(countryName: 'Thailand', label: 'New', noOfTours: 18, rating: 4.5, imgUrl: 'https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

//1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Thailand', label: 'New', noOfTours: 18, rating: 4.5, imgUrl: 'https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

  //1
  countryModel.countryName = "Malaysia";
  countryModel.label = "Sale";
  countryModel.noOfTours = 12;
  countryModel.rating = 4.3;
  countryModel.imgUrl =
  "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Malaysia', label: 'Sale', noOfTours: 12, rating: 4.3, imgUrl: 'https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  "https://images.pexels.com/photos/3568489/pexels-photo-3568489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Thailand', label: 'New', noOfTours: 18, rating: 4.5, imgUrl: 'https://images.pexels.com/photos/3568489/pexels-photo-3568489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Thailand', label: 'New', noOfTours: 18, rating: 4.5, imgUrl: 'https://images.pexels.com/photos/3568489/pexels-photo-3568489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Thailand', label: 'New', noOfTours: 18, rating: 4.5, imgUrl: 'https://images.pexels.com/photos/3568489/pexels-photo-3568489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Thailand', label: 'New', noOfTours: 18, rating: 4.5, imgUrl: 'https://images.pexels.com/photos/3568489/pexels-photo-3568489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Thailand', label: 'New', noOfTours: 18, rating: 4.5, imgUrl: 'https://images.pexels.com/photos/3568489/pexels-photo-3568489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

  return country;
}
// Function to generate a list of popular tours with sample data
List<PopularTourModel> getPopularTours() {
  List<PopularTourModel> popularTourModels = [];
  PopularTourModel popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/358457/pexels-photo-358457.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 245.50";
  popularTourModel.rating = 4.0;
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/1658967/pexels-photo-1658967.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Cuba";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 499.99";
  popularTourModel.rating = 4.5;
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/1477430/pexels-photo-1477430.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Dominican";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 245.50";
  popularTourModel.rating = 4.2;
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/1743165/pexels-photo-1743165.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 245.50";
  popularTourModel.rating = 4.0;
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/358457/pexels-photo-358457.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 245.50";
  popularTourModel.rating = 4.0;
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/358457/pexels-photo-358457.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 245.50";
  popularTourModel.rating = 4.0;
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/358457/pexels-photo-358457.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 245.50";
  popularTourModel.rating = 4.0;
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
  "https://images.pexels.com/photos/358457/pexels-photo-358457.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 245.50";
  popularTourModel.rating = 4.0;
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  return popularTourModels;
}
