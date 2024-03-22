import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'page_two_viewmodel.dart';

class PageTwoViewDesktop extends ViewModelWidget<PageTwoViewModel> {
  const PageTwoViewDesktop({super.key});

  @override
  Widget build(BuildContext context, PageTwoViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, PAGE TWO DESKTOP UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
