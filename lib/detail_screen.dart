import 'package:flutter/material.dart';
import 'package:submission/model/jujutsu_char.dart';

class DetailScreen extends StatelessWidget {
  final JujutsuCharacter char;

  const DetailScreen({super.key, required this.char});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: const Color(0xFFED0000),
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                char.name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              background: Image.network(char.profileImage),
            ),
          ),
          //3
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        buildCustomCard('Description', char.description),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.blue),
                              right: BorderSide(color: Colors.blue),
                              bottom: BorderSide(color: Colors.blue),
                            ),
                          ),
                          child: Column(
                            children: [
                              buildDataRow('kenji', char.kenji),
                              buildDataRow('name', char.name),
                              buildDataRow('species', char.species),
                              buildDataRow('birthday', char.birthday),
                              buildDataRow('gender', char.gender.value),
                              buildDataRow('grade', char.grade?.value ?? '-'),
                            ],
                          ),
                        ),
                        buildCustomCard(
                          'Appearance',
                          char.appearance,
                          additionalChild: Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: char.appearanceImages.map((url) {
                                return SizedBox(
                                  width: 180,
                                  child: Container(
                                      margin: const EdgeInsets.only(left: 15),
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child:
                                                    Image.asset(url['image']!),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Text(
                                                url['title']!,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ))
                                        ],
                                      )),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    )),
                // Add more information as needed
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDataRow(String title, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              color: const Color(0xFFED0000),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Spacer(flex: 1),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCustomCard(String title, String description,
      {Border? customBorder, Widget? additionalChild}) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: customBorder ?? Border.all(color: Colors.blue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            description,
            style: const TextStyle(fontSize: 16.0),
            textAlign: TextAlign.justify,
          ),
          if (additionalChild != null) additionalChild,
        ],
      ),
    );
  }
}
