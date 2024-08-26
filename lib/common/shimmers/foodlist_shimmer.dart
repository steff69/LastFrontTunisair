import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/common/shimmers/shimmer_widget.dart';
import 'package:travel_app/constants/constants.dart';

class FoodsListShimmer extends StatelessWidget {
  const FoodsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 10),
      height: hieght,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          itemCount: 6,
          itemBuilder: (context, index) {
            return ShimmerWidget(
                shimmerWidth: widthh, shimmerHieght: 70.h, shimmerRadius: 12);
          }),
    );
  }
}
