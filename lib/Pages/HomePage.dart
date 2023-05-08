import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import '../constans.dart';
import '../Components/Items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Items> dataItems = [
    Items(name: "Pinneaple", image: "Pinaple.png", rate: "5.0", price: "80.000", bgColor:Colors.yellow.withOpacity(0.2)),
    Items(name: "Apple", image: "Apple.png", rate: "4.7", price: "25.000", bgColor:Colors.red.withOpacity(0.2)),
    Items(name: "Pinneaple", image: "Pinaple.png", rate: "5.0", price: "80.000", bgColor:Colors.yellow.withOpacity(0.2)),
    Items(name: "Apple", image: "Apple.png", rate: "4.7", price: "25.000", bgColor:Colors.red.withOpacity(0.2)),
  ];

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsCostum.bgColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // navigation
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.notes,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Container(
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        height: 40,
                        // margin: const EdgeInsets.only(left:5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Image.asset(
                          "images/pp.jpg",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // header
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: Stack(
              children: [
                Positioned(
                    right: -10,
                    top: 0,
                    child: Image.asset('images/Fruits.png',
                        width: 260, height: 260, fit: BoxFit.cover)),
                Container(
                  height: 237,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    right: 22,
                    left: 22,
                    top: 30,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: BlurryContainer(
                      blur: 2,
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              'OFFER',
                              style: TextStyle(
                                  letterSpacing: 7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: ColorsCostum.primaryColor),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const Text(
                              "Discount up to 40% Off",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 230,
                            child: Text(
                              "In honor of World Health Day We'd like to give you this amazing offers.",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              backgroundColor: ColorsCostum.primaryColor,
                              padding: const EdgeInsets.all(20),
                            ),
                            child: const Text(
                              "View Offers",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // recommended
          Container(
            margin: const EdgeInsets.only(right: 22, left: 22, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended Fruits",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: ColorsCostum.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: ColorsCostum.primaryColor, size: 20),
                  ],
                )
              ],
            ),
          ),

          // list items
          Container(
            width: double.infinity,
            height: 300,
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 22),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataItems.length,
              itemBuilder: (BuildContext context, int i) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/detail/product');
                      },
                      child: Container(
                        height: 229,
                        width: 130,
                        margin: const EdgeInsets.only(right: 50),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 34,
                              child: Container(
                                width: 130,
                                height: 99,
                                decoration: BoxDecoration(
                                    color: dataItems[i].bgColor,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        topRight: Radius.circular(100))),
                              ),
                            ),
                    
                            // card bottom
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 130,
                                height: 95,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(left: 13, right: 7),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("FRUIT",
                                              style: TextStyle(
                                                  color:
                                                      ColorsCostum.primaryColor,
                                                  letterSpacing: 3,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                          Container(
                                            height: 25,
                                            alignment: Alignment.topRight,
                                            width: 35,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                const Icon(
                                                  Icons.star_rounded,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Text(
                                                  dataItems[i].rate,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(dataItems[i].name,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Row(
                                        children: [
                                          Text(
                                            "Rp. ${dataItems[i].price}",
                                            style: TextStyle(
                                                color: ColorsCostum.primaryColor
                                                    .withOpacity(0.8),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            height: 25,
                                            margin: const EdgeInsets.only(left: 5),
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              "per kg",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white
                                                      .withOpacity(0.6)),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    
                            Positioned(
                              top: -17,
                              left: -10,
                              child: Container(
                                // margin: EdgeInsets.symmetric(horizontal:20),
                                child: Image.asset("images/${dataItems[i].image}",
                                    width: 157, height: 157, fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}