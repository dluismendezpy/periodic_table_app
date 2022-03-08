import './Element.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/Data.dart';
import 'package:random_color/random_color.dart';

class ElementGrid extends StatefulWidget {
  const ElementGrid({Key? key}) : super(key: key);

  @override
  _ElementGridState createState() => _ElementGridState();
}

periodic_table_data period = periodic_table_data();
List data = period.period;
bool isLoading = true;

class _ElementGridState extends State<ElementGrid> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(56, 50, 50, 1.0),
      body: AnimatedSwitcher(
        duration: Duration(seconds: 5),
        child: Elements(),
      ),
    );
  }
}

class Elements extends StatefulWidget {
  const Elements({Key? key}) : super(key: key);

  @override
  _ElementsState createState() => _ElementsState();
}

class _ElementsState extends State<Elements> {
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    var responsive = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: const Color.fromRGBO(24, 24, 24, 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: responsive.width > 720
                        ? GridView.count(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            shrinkWrap: true,
                            key: UniqueKey(),
                            children: List.generate(
                              period.period.length,
                              (index) {
                                Color _color = _randomColor.randomColor(
                                    colorHue: ColorHue.green,
                                    colorBrightness: ColorBrightness.light);
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ElementPage(
                                            atomicnum: index,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: _color,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data[index]['atomicNumber'],
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 60),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Center(
                                                      child: Text(
                                                        data[index]['symbol'],
                                                        style:
                                                            GoogleFonts.nunito(
                                                          fontSize: 40,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      data[index]['name'],
                                                      style: GoogleFonts.nunito(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            shrinkWrap: true,
                            key: UniqueKey(),
                            children: List.generate(
                              period.period.length,
                              (index) {
                                Color _color = _randomColor.randomColor(
                                    colorHue: ColorHue.green,
                                    colorBrightness: ColorBrightness.light);
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ElementPage(
                                            atomicnum: index,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: _color,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data[index]['atomicNumber'],
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Center(
                                                child: Text(
                                                  data[index]['symbol'],
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                data[index]['name'],
                                                style: GoogleFonts.nunito(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
