import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/functions/dimentions.dart';
import 'package:news_app/features/home/data/models/news_article.dart';
import 'package:url_launcher/url_launcher.dart';

class HottestNewsItem extends StatelessWidget {
  const HottestNewsItem({super.key, required this.newsArticle});
  final NewsArticle newsArticle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        width: getWidth(context) * .75,
        child: GestureDetector(
          onTap: () async {
            final uri = Uri.parse(newsArticle.url);
            await launchUrl(uri);
          },
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: newsArticle.urlToImage,
                      height: getHeight(context) / 6,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error, color: Colors.red),
                      placeholder: (context, url) => const Center(
                        child: Icon(Icons.image, color: Colors.grey),
                      ),
                    ),
                  ),
                  Text(
                    newsArticle.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    newsArticle.description,
                    style: const TextStyle(fontSize: 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
