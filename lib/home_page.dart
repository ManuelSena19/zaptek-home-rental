import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color grey = const Color.fromRGBO(131, 131, 131, 1);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightRatio = height / 812;
    double widthRatio = width / 375;

    double paddingVertical = heightRatio * 24;
    double paddingHorizontal = widthRatio * 20;

    double verticalConverter(double value) {
      double newValue = heightRatio * value;
      return newValue;
    }

    double horizontalConverter(double value) {
      double newValue = widthRatio * value;
      return newValue;
    }

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontal, paddingVertical, paddingHorizontal, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: GoogleFonts.raleway(
                        color: grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Jakarta',
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: verticalConverter(7)),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: grey,
                        )
                      ],
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Image.asset('assets/notification.png')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontal, verticalConverter(22), paddingHorizontal, 0),
            child: SizedBox(
              height: verticalConverter(48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: horizontalConverter(279),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            SizedBox(width: horizontalConverter(16.47)),
                            Icon(
                              Icons.search,
                              color: grey,
                              size: 16,
                            ),
                            SizedBox(width: horizontalConverter(10.82)),
                            Text(
                              'Search address, or near you',
                              style: GoogleFonts.raleway(
                                color: const Color.fromRGBO(133, 133, 133, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: horizontalConverter(8)),
                  Image.asset('assets/filter.png')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontal, verticalConverter(18), 0, 0),
            child: SizedBox(
              height: verticalConverter(41),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: verticalConverter(34),
                    width: horizontalConverter(69),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(160, 218, 251, 1),
                            Color.fromRGBO(10, 142, 217, 1)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        'House',
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: horizontalConverter(14)),
                  Container(
                    height: verticalConverter(34),
                    width: horizontalConverter(69),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        'Apartment',
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: grey),
                      ),
                    ),
                  ),
                  SizedBox(width: horizontalConverter(12)),
                  Container(
                    height: verticalConverter(34),
                    width: horizontalConverter(69),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        'Hotel',
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: grey),
                      ),
                    ),
                  ),
                  SizedBox(width: horizontalConverter(12)),
                  Container(
                    height: verticalConverter(34),
                    width: horizontalConverter(69),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        'Villa',
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: grey),
                      ),
                    ),
                  ),
                  SizedBox(width: horizontalConverter(12)),
                  Container(
                    height: verticalConverter(34),
                    width: horizontalConverter(69),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        'Condo',
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontal, verticalConverter(27), paddingHorizontal, 0),
            child: SizedBox(
              height: verticalConverter(19),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Near from you',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'See more',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400, fontSize: 12, color: grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, verticalConverter(24), 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/dreamsville_home.png',
                ),
                SizedBox(width: horizontalConverter(10)),
                Image.asset(
                  'assets/ascot_home.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontal, 0, paddingHorizontal, 0),
            child: SizedBox(
              height: verticalConverter(19),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Best for you',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'See more',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400, fontSize: 12, color: grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontal, verticalConverter(24), paddingHorizontal, 0),
            child: const HouseCard(
              assetName: 'assets/orchad.png',
              houseName: 'Orchad House',
              housePrice: 'Rp. 2.500.000.000 / Year',
              bedroomNum: '6 Bedroom',
              bathroomNum: '4 Bathroom',
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontal, verticalConverter(24), paddingHorizontal, 0),
            child: const HouseCard(
              assetName: 'assets/hollies.png',
              houseName: 'The Hollies House',
              housePrice: 'Rp. 2.000.000.000 / Year',
              bedroomNum: '5 Bedroom',
              bathroomNum: '2 Bathroom',
            ),
          )
        ],
      ),
    );
  }
}

class HouseCard extends StatelessWidget {
  const HouseCard(
      {super.key,
      required this.assetName,
      required this.houseName,
      required this.housePrice,
      required this.bedroomNum,
      required this.bathroomNum});

  final String assetName;
  final String houseName;
  final String housePrice;
  final String bedroomNum;
  final String bathroomNum;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightRatio = height / 812;
    double widthRatio = width / 375;

    double verticalConverter(double value) {
      double newValue = heightRatio * value;
      return newValue;
    }

    double horizontalConverter(double value) {
      double newValue = widthRatio * value;
      return newValue;
    }

    return SizedBox(
      height: verticalConverter(70),
      width: horizontalConverter(305),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            assetName,
            width: horizontalConverter(74),
            height: verticalConverter(70),
            fit: BoxFit.cover,
          ),
          SizedBox(width: horizontalConverter(24)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                houseName,
                style: GoogleFonts.raleway(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                housePrice,
                style: GoogleFonts.raleway(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(10, 142, 217, 1)),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/bed.png'),
                  SizedBox(width: horizontalConverter(8)),
                  Text(
                    bedroomNum,
                    style: GoogleFonts.raleway(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(133, 133, 133, 1)),
                  ),
                  SizedBox(width: horizontalConverter(19)),
                  Image.asset('assets/bath.png'),
                  SizedBox(width: horizontalConverter(8)),
                  Text(
                    bathroomNum,
                    style: GoogleFonts.raleway(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(133, 133, 133, 1)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
