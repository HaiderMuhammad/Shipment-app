import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final controller = PageController(
  viewportFraction: 1,
  keepPage: true,
);

final pages = List.generate(
    6,
    (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.only(right: 8.w),
          child: SizedBox(
            height: 150.h,
            child: Center(
                child: Text(
              "Page $index",
              style: const TextStyle(color: Colors.indigo),
            )),
          ),
        )
);

class ListImg extends StatelessWidget {
  const ListImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 170.h,
          width: 1.sw,
          child: PageView.builder(
            controller: controller,
            // itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
          child: SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: WormEffect(
              dotHeight: 8.h,
              dotWidth: 8.w,
              type: WormType.thin,
              // strokeWidth: 5,
            ),
          ),
        ),
      ],
    );
  }
}
