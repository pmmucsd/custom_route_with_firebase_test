import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'page_two_view.desktop.dart';
import 'page_two_view.tablet.dart';
import 'page_two_view.mobile.dart';
import 'page_two_viewmodel.dart';

class PageTwoView extends StackedView<PageTwoViewModel> {
  const PageTwoView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PageTwoViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const PageTwoViewMobile(),
      tablet: (_) => const PageTwoViewTablet(),
      desktop: (_) => const PageTwoViewDesktop(),
    );
  }

  @override
  PageTwoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PageTwoViewModel();
}
