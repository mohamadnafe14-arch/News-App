import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsByCategoryShimmerItem extends StatelessWidget {
  const NewsByCategoryShimmerItem({super.key});

  Widget _box({required double height, required double width}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _box(height: 220, width: double.infinity),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _box(height: 12, width: 80),

                  const SizedBox(height: 12),

                  _box(height: 18, width: double.infinity),

                  const SizedBox(height: 8),

                  _box(height: 18, width: 250),

                  const SizedBox(height: 12),

                  _box(height: 14, width: double.infinity),

                  const SizedBox(height: 8),

                  _box(height: 14, width: 200),

                  const SizedBox(height: 12),

                  _box(height: 12, width: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
