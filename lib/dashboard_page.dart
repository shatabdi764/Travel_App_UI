import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'info_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  listItem(String img, String country, String message) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 400.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.darken)),
            ),
          ),
          Container(
            height: 400.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    country,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    message,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoPage(
                            img: img,
                            country: country,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 70.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Explore now',
                          style: GoogleFonts.montserrat(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              textStyle:
                              TextStyle(color: Colors.pink.shade600)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.pink.shade600),
                child: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                ),
              ),
              Text(
                'HOME',
                style: GoogleFonts.montserrat(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF353535)),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 150.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListView(
                children: <Widget>[
                  listItem('images/japan.jpg', 'Japan',
                      'Explore the land of the rising sun'),
                  listItem('images/canada.jpg', 'Canada',
                      'Explore the vast forests of Canada'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}