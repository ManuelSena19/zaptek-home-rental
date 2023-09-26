import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightRatio = height / 812;
    double widthRatio = width / 375;

    double paddingVertical = heightRatio * 20;
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            paddingHorizontal, paddingVertical, paddingHorizontal, 0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Image.asset('assets/dreamsville_details.png'),
            ),
            Text(
              'Description',
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(height: verticalConverter(20)),
            SizedBox(
              height: verticalConverter(36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The 3 level house that has a modern design, has a large pool',
                    style: GoogleFonts.raleway(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(133, 133, 133, 1),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'and a garage that fits up to four cars...',
                        style: GoogleFonts.raleway(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(133, 133, 133, 1)),
                      ),
                      Text(
                        'Show More',
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(10, 142, 217, 1)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: verticalConverter(24)),
            SizedBox(
              height: verticalConverter(40),
              child: Row(
                children: [
                  Image.asset('assets/gary.png'),
                  SizedBox(width: horizontalConverter(16)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Garry Allen',
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text(
                        'Owner',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(133, 133, 133, 1),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Image.asset('assets/phone.png'),
                  SizedBox(width: horizontalConverter(16)),
                  Image.asset('assets/message.png'),
                ],
              ),
            ),
            SizedBox(height: verticalConverter(32)),
            SizedBox(
              height: verticalConverter(111),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gallery',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(height: verticalConverter(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/image_1.png'),
                      Image.asset('assets/image_2.png'),
                      Image.asset('assets/image_3.png'),
                      Image.asset('assets/image_4.png'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: verticalConverter(32)),
            Stack(
              children: [
                Image.asset('assets/map.png'),
                Positioned(
                  bottom: 10,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(133, 133, 133, 1),
                            ),
                          ),
                          Text(
                            'Rp. 2.500.000.000 / Year',
                            style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: horizontalConverter(20)),
                      Container(
                        width: horizontalConverter(122),
                        height: verticalConverter(43),
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
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent),
                          child: Text(
                            'Rent Now',
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
