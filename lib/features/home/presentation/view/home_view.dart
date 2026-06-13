import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/functions/dimentions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'News',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: const [
              TextSpan(
                text: ' App',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                'Hottest news',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/news1.jpg',
                    height: getHeight(context) / 5,
                    width: getWidth(context) / 2,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: getHeight(context) / 2.9,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'The first title of the news',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Image(
                              image: AssetImage('assets/images/news1.jpg'),
                              height: getHeight(context) / 6,
                            ),
                            Text(
                              'The second title of the news',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
