import 'package:flutter/material.dart';
import 'package:pas_flutter/constans.dart';
import '../Components/BottomNavbarItems.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  int quantity = 1; 
  List <BottomNavbarItems> stars = [
    BottomNavbarItems(icon: Icons.star_rounded),
    BottomNavbarItems(icon: Icons.star_rounded),
    BottomNavbarItems(icon: Icons.star_rounded),
    BottomNavbarItems(icon: Icons.star_rounded),
    BottomNavbarItems(icon: Icons.star_rounded),
  ];

  List <CostumIcons> icons = [
    CostumIcons(icon: Icons.thumb_up_alt_outlined, label: "Quality Assurance"),
    CostumIcons(icon: Icons.local_shipping_outlined, label: "Fast Delivery" ),
    CostumIcons(icon: Icons.local_dining, label: "Best-in Taste"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsCostum.bgColor.withOpacity(0.9),
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white.withOpacity(0.7),
                    size: 35,
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),

          // content
          Stack(
            children: [
              // background
              Center(
                child: Positioned(
                  bottom: -270,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: 700,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(999999),topRight: Radius.circular(999999))
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "FRUIT",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 10,
                            color: ColorsCostum.primaryColor),
                      ),
                    ),
                    const Text(
                      "Pinneaple",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    // image
                    Image.asset("images/Pinaple.png",
                      width: 288, height: 258, fit: BoxFit.cover
                    ),

                    Container(
                      width: double.infinity,
                      // padding: EdgeInsets.all(12),
                      margin: const EdgeInsets.symmetric(horizontal: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // price and stars
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rp 80.000",
                                style: TextStyle(
                                  color: ColorsCostum.primaryColor.withOpacity(0.8),
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              
                              // stars
                              Row(
                                children: [
                                  ...List.generate(
                                    stars.length,
                                    (i) => Icon(
                                      stars[i].icon,
                                      size: 17,
                                      color:ColorsCostum.primaryColor
                                    ),
                                  ),
                                  // rate
                                  Container(
                                    margin: const EdgeInsets.only(left:3),
                                    child: const Text(
                                      "5.0",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                          // per kg and favorit
                          Container(
                            width: 68,
                            height: 45,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Per kg",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),
                          ),

                          Container(
                            width: 70,
                            height: 70,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white.withOpacity(0.1)
                            ),
                            child:const Icon(
                              Icons.favorite_border_rounded,
                              size: 50,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),

                    // Icons
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            icons.length,
                            (i) => GestureDetector(
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Icon(
                                        icons[i].icon,
                                        size: 40,
                                        color: ColorsCostum.primaryColor.withOpacity(0.8),
                                      ),
                                    ),
                    
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      width: 80,
                                      child: Text(
                                        icons[i].label,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                        ),
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

                    // buttons
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal:15, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      if(quantity >= 1){
                                        quantity -= 1;
                                      }
                                    });
                                  },
                                  child: const Icon(Icons.remove_rounded, color: Colors.white, size: 35,),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    "${quantity}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      quantity += 1;
                                    });
                                  },
                                  child: const Icon(Icons.add_rounded, color: Colors.white,size: 35),
                                ),
                              ],
                            ),
                          ),

                          // button
                          ElevatedButton(
                            onPressed:(){} , 
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                              backgroundColor: ColorsCostum.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      child: const Text(
                                        'Go to Cart',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.black
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 23,
                                      color: Colors.black,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              
            ],
          )
        ],
      ),
    );
  }
}
