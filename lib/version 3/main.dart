import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CarList carView = CarList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "List of impressive cars",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: HomePage(carList: carView),
    );
  }
}

//model
class Car {
  final String brand;
  final String description;
  final String imageUrl;
  final String model;

  Car({
    required this.brand,
    required this.description,
    required this.imageUrl,
    required this.model,
  });
}

//controller

class CarList {
  List<Car> _cars = [
    Car(
      brand: "Mercedes",
      description:
      "Competing with other high-end SUVs, the standard equipment of the new model starts with the MBUX touch system and Mercedes’ latest voice-controlled navigation. The interior is made more luxurious to enlarge the leg room which is headroom. There is a new technology called “free-driving mode” to help the driver in off-road driving. If the vehicle gets stuck in sand, mud or snow, “the suspension level quickly and automatically rises and falls during driving changes the tire pressure and therefore increases traction. The G63 uses a 2.0-litre turbocharged 4-cylinder engine that produces 255 horsepower and 273 pound-feet of torque. Both rear-wheel-drive and all-wheel-drive versions will use Mercedes’ 9G-Tronic 9-speed automatic transmission.",
      imageUrl:
      "https://images.pexels.com/photos/11396006/pexels-photo-11396006.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      model: "AMG G63",
    ),
    Car(
      brand: "Toyota",
      description:
      "Under the hood, the RAV4 lineup provides a range of choices to suit every taste and budget. RAV4 models are built around a powerful and efficient 203 peak horsepower 2.5L Dynamic Force four-cylinder engine coupled to an eight-speed automatic transmission. Front wheel drive models achieve a combined city/highway fuel efficiency rating of 7.9L / 100km while all-wheel-drive editions fare almost as well, at 8.2L / 100km.",
      imageUrl:
      "https://images.pexels.com/photos/2036544/pexels-photo-2036544.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      model: "RAV4",
    ),
    Car(
      brand: "Jeep",
      description:
      "Paired with a 2.0L Turbo Plug‑In Hybrid Electric Vehicle (PHEV) engine and a 17‑kWh lithium‑ion battery pack, the Wrangler 4xe PHEV is built to maximize capability. Take on the outdoors confidently with a zero‑emission, planet‑friendly all‑electric range of up to 35 km and a total range up to 592 km.",
      imageUrl:
      "https://images.pexels.com/photos/1638459/pexels-photo-1638459.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      model: "Wrangler",
    ),
    Car(
      brand: "Mitsubishi",
      description:
      "The new Montero Sport has an 8-speed automatic transmission — the first ever in the history of Mitsubishi Motors. This creates a smoother ride, with improved fuel efficiency. The electric parking brake is situated right by the 4WD Drive Mode Selector dial. It's easy to operate: simply pull the switch up to apply the parking brake, or push the switch down to release.",
      imageUrl:
      "https://images.pexels.com/photos/2676096/pexels-photo-2676096.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      model: "Montero Sport",
    ),
    Car(
      brand: "Dodge",
      description:
      "Impressive from every angle – from the muscular lines to the driver-centric cockpit. Convenient connectivity, customizable displays and real-time performance data. Following in the footsteps of the legendary Demon, the 6.2L Supercharged HEMI® SRT Hellcat Redeye V8 engine boasts 797 hp and 707 lb-ft of torque. Powered by a 392 HEMI® V8 engine boasting 485 hp and 475 lb‑ft of blacktop-tearing torque, the 2022 Challenger Scat Pack 1320 is the fastest naturally aspirated street legal muscle car available.",
      imageUrl:
      "https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      model: "Challenger Coupe",
    ),
    Car(
      brand: "Lamborghini",
      description:
      "In addition to packing 40 more horses than the Aventador S it most closely resembles, the Aventador Ultime also weighs in at 55 pounds less than that variant, bringing its power-to-weight ratio in line with the SVJ. 0-62 miles per hour passes in 2.8 seconds, according to Lamborghini (although based on independent tests of the SVJ, we're guessing it'll actually take even less time). Top speed? 220 miles per hour, once you find a long enough straightaway.",
      imageUrl:
      "https://images.pexels.com/photos/3802510/pexels-photo-3802510.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      model: "Aventador",
    ),
  ];

  List<Car> get cars => _cars;
}

class HomePage extends StatelessWidget {
  final CarList carList;

  HomePage({required this.carList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of impressive cars"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/2400594/pexels-photo-2400594.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                carList.cars.length,
                    (index) {
                  return Card(
                      color: Colors.white.withOpacity(0.5),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.black.withAlpha(50),
                          child: ListTile(
                            leading: Column(
                              children: [
                                Image.network(
                                  carList.cars[index].imageUrl,
                                ),
                                Text(carList.cars[index].brand),
                                Text(carList.cars[index].model),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetail(car: carList.cars[index]),
                                ),
                              );
                            },
                          ),
                        )
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CarDetail extends StatelessWidget {
  final Car car;

  CarDetail({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.model),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(car.imageUrl, height: 200, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              car.description,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
