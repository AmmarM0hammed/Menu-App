import "package:get/get.dart";
import "package:menu/app/View/Home.dart";


List<GetPage<dynamic>> routePage = [
    GetPage(name: '/' , page:() => const Home()),
];