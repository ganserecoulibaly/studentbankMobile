import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
import 'package:story_view/story_view.dart';
import 'package:studentbankmobile/Debut/Home_service.dart';
import 'package:studentbankmobile/Debut/models/Debut_models.dart';

class Debut extends StatefulWidget {
  const Debut({super.key});

  @override
  State<Debut> createState() => _DebutState();
}

bool change = false;

class _DebutState extends State<Debut> {
  final controller = StoryController();
  PageController? _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Container> Screens = [
      Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Image.asset(
                  "images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Image.asset("images/iPhone 12 Pro.png"),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0, bottom: 20),
                    child: Text(
                      'White Mode',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF58220),
                        fontSize: 50,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC1BFBF),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Activer',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Switch.adaptive(
                              value: change,
                              activeColor: Colors.green,
                              inactiveThumbColor: Colors.red,
                              inactiveTrackColor: Colors.transparent,
                              onChanged: (value) {
                                setState(() {
                                  change = value;
                                });
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                    child: Text(
                      'Dark Mode',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF58220),
                        fontSize: 50,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC1BFBF),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Activer',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Switch.adaptive(
                                value: !change,
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.red,
                                inactiveTrackColor: Colors.transparent,
                                onChanged: (value) {
                                  setState(() {
                                    change = !value;
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: StoryView(
                storyItems: storyItems,
                controller: StoryController(),
                progressPosition: ProgressPosition.top,
                repeat: true,
                inline: true,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const home_service()));
              },
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.pink, Colors.orange.shade400],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "View more stories",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/filter_banque_black.png"),
              fit: BoxFit.fill),
        ),
        child: Stack(
          // scrollDirection: Axis.vertical,
          children: [
            PageView(
              controller: _pageController,
              children: Screens,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            Transform.translate(
              offset: const Offset(0, 600),
              child: PageViewIndicator(
                length: Screens.length,
                currentIndex: currentIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
