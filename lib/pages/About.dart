import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 16, 16, 1),
      body: size.width > 760
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sobre mi',
                        style: GoogleFonts.nunito(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 330,
                      height: 330,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromRGBO(17, 154, 142, 1),
                              Color.fromRGBO(56, 239, 125, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: CircleAvatar(
                            radius: 130,
                            backgroundImage: AssetImage(
                              'assets/images/self.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Hi I'm ",
                                        style: GoogleFonts.nunito(
                                          fontSize: 30,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Luis Mendez",
                                        style: GoogleFonts.nunito(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          "Backend software developer",
                                          style: GoogleFonts.nunito(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.teal[700],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 300,
                                  height: 280,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topRight,
                                          colors: [
                                            Color.fromRGBO(254, 0, 204, 1),
                                            Color.fromRGBO(52, 51, 153, 1),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Sobre mi',
                                              style: GoogleFonts.nunito(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            SizedBox(
                                              width: 200,
                                              height: 70,
                                              child: GestureDetector(
                                                onTap: () {
                                                  String url =
                                                      'https://shanwillpinto.tech';
                                                  launch(url,
                                                      forceSafariVC: true,
                                                      forceWebView: false);
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.purpleAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        '',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.nunito(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                width: 100,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      String url =
                                          'https://www.github.com/data-charya';
                                      launch(url,
                                          forceSafariVC: true,
                                          forceWebView: true);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Image.asset(
                                              'assets/images/git.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                width: 100,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      String url =
                                          'https://www.instagram.com/invites/contact/?i=1xd0tfz7cak94&utm_content=fcu1pij';
                                      launch(url,
                                          forceSafariVC: true,
                                          forceWebView: false);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Image.asset(
                                              'assets/images/insta.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                width: 100,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      String url =
                                          'https://www.linkedin.com/in/shanwill-pinto-b286b7184/';
                                      launch(url,
                                          forceSafariVC: true,
                                          forceWebView: false);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Image.asset(
                                              'assets/images/linkedin.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 500,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color.fromRGBO(42, 9, 70, 1),
                                  Color.fromRGBO(100, 65, 165, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          // child: Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Row(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         Text(
                          //           'This app is built using ',
                          //           style: GoogleFonts.nunito(
                          //             fontSize: 20,
                          //             fontWeight: FontWeight.w600,
                          //             color: Colors.white,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //     Row(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         InkWell(
                          //           onTap: () {
                          //             String url = 'https://flutter.dev';
                          //             launch(url,
                          //                 forceSafariVC: true,
                          //                 forceWebView: false);
                          //           },
                          //           child: SizedBox(
                          //             width: 300,
                          //             height: 130,
                          //             child: Image.asset(
                          //                 'assets/images/flutter.png'),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // )
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sobre mi',
                        style: GoogleFonts.nunito(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromRGBO(17, 154, 142, 1),
                              Color.fromRGBO(56, 239, 125, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: CircleAvatar(
                            radius: 50,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/self.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 170,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Hey I'm ",
                                      style: GoogleFonts.nunito(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                child: Row(
                                  children: [
                                    Text(
                                      "Luis Mendez",
                                      style: GoogleFonts.nunito(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      height: 60,
                                      child: Text(
                                        "Backend software developer",
                                        style: GoogleFonts.nunito(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.teal[700],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SizedBox(
                            width: 100,
                            height: 60,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  String url =
                                      'https://github.com/dluismendezpy';
                                  launch(url,
                                      forceSafariVC: true, forceWebView: true);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child:
                                          Image.asset('assets/images/git.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SizedBox(
                            width: 100,
                            height: 60,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  String url =
                                      'https://www.instagram.com/invites/contact/?i=1xd0tfz7cak94&utm_content=fcu1pij';
                                  launch(url,
                                      forceSafariVC: true, forceWebView: false);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                          'assets/images/instagram.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SizedBox(
                            width: 100,
                            height: 60,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  String url =
                                      'https://www.linkedin.com/in/luismendez-dev/';
                                  launch(url,
                                      forceSafariVC: true, forceWebView: false);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                          'assets/images/linkedin.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 280,
                              height: 200,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Color.fromRGBO(254, 0, 204, 1),
                                        Color.fromRGBO(52, 51, 153, 1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Visita mi web',
                                          style: GoogleFonts.nunito(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 200,
                                          height: 70,
                                          child: GestureDetector(
                                            onTap: () {
                                              String url =
                                                  'https://www.luismendezdev.com/';
                                              launch(url,
                                                  forceSafariVC: true,
                                                  forceWebView: false);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.purpleAccent,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'LuismendezDev',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.nunito(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
