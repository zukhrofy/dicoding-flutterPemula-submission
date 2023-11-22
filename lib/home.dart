import 'package:flutter/material.dart';
import 'package:submission/detail_screen.dart';
import 'package:submission/model/jujutsu_char.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController scrollController = ScrollController();
  bool showbtn = false;

  @override
  void initState() {
    scrollController.addListener(() {
      const double showoffset = 10.0;
      if (scrollController.offset > showoffset) {
        setState(() {
          showbtn = true;
        });
      } else {
        setState(() {
          showbtn = false;
        });
      }
    });
    super.initState();
  }

  void _scrollToTop() {
    scrollController.animateTo(0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Jujutsu Kaisen Wiki',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFED0000),
        ),
        floatingActionButton: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: showbtn ? 1.0 : 0.0,
          child: FloatingActionButton(
            onPressed: () => _scrollToTop(),
            backgroundColor: const Color(0xFFED0000),
            child: const Icon(Icons.arrow_upward),
          ),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFED0000))),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(2.0),
                      color: const Color(0xFFED0000),
                      transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                      child: const Text(
                        'Welcome to Jujutsu Kaisen Wiki',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      )),
                  const CarouselWidget(),
                  const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text.rich(
                          textAlign: TextAlign.justify,
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: '\t\t Welcome to the '),
                              TextSpan(
                                  text: 'Jujutsu Kaisen Wiki, ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'a community created by the fans, for the fans, and is dedicated to housing everything about Jujutsu Kaisen created by Gege Akutami. Our goal is to become the best source of information on the series. Please help us by creating or editing any of our articles! We currently have '),
                              TextSpan(
                                  text: '55,506 ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'edits to '),
                              TextSpan(
                                  text: '854 articles ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'and '),
                              TextSpan(
                                  text: '4918 images ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'on the wiki.'),
                            ],
                          ))),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Color(0xFFED0000)),
                  right: BorderSide(color: Color(0xFFED0000)),
                  bottom: BorderSide(color: Color(0xFFED0000)),
                ),
              ),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(2.0),
                      color: const Color(0xFFED0000),
                      transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                      child: const Text(
                        'Story',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  Image.network(
                    'https://static.wikia.nocookie.net/jujutsu-kaisen/images/3/39/Shonen_Jump_2021-26_%28Artwork%29.png/revision/latest?cb=20220419192722.webp',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text.rich(
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 17),
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: '\t\t The story of '),
                              TextSpan(
                                  text: 'Jujutsu Kaisen ',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue)),
                              TextSpan(text: 'is set in a world where '),
                              TextSpan(
                                  text: 'Cursed Spirits ',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue)),
                              TextSpan(
                                  text:
                                      'feed on unsuspecting humans and fragments of the legendary and feared demon '),
                              TextSpan(
                                  text: 'Ryomen Sukuna ',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue)),
                              TextSpan(
                                  text:
                                      'have been lost and scattered about. Should any curse consume Sukuna\'s body parts, the power they gain could destroy the world as we know it. Fortunately, there exists a mysterious school of '),
                              TextSpan(
                                  text: 'Jujutsu Sorcerers ',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue)),
                              TextSpan(
                                  text:
                                      'who exist to protect the precarious existence of the living from the supernatural! '),
                            ],
                          ))),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.redAccent),
                  right: BorderSide(color: Colors.redAccent),
                  bottom: BorderSide(color: Colors.redAccent),
                ),
              ),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: const BoxDecoration(color: Color(0xFFED0000)),
                      transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                      child: const Text(
                        'Characters',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                    children: jujutsuCharList.map((char) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(char: char);
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFFED0000))),
                          child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                Image.network(char.profileImage),
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 1, horizontal: 2),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        color: Color(0xFFED0000)),
                                    transform: Matrix4.translationValues(
                                        0.0, 8.0, 0.0),
                                    child: Text(
                                      char.name,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ))
                              ]),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            viewportFraction: 1.0,
            autoPlayAnimationDuration: const Duration(milliseconds: 100),
          ),
          items: jujutsuHeroCarousel
              .map((i) => Builder(builder: (BuildContext context) {
                    return Image.asset(i, fit: BoxFit.cover);
                  }))
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  _controller.previousPage();
                },
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward),
                color: Colors.black,
                onPressed: () {
                  _controller.nextPage();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
