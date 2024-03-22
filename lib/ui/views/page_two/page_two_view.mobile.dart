import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'page_two_viewmodel.dart';

class PageTwoViewMobile extends ViewModelWidget<PageTwoViewModel> {
  const PageTwoViewMobile({super.key});

  @override
  Widget build(BuildContext context, PageTwoViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
