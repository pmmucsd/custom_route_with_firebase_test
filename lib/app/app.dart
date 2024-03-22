import 'package:simple_route_text/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:simple_route_text/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:simple_route_text/ui/views/home/home_view.dart';
import 'package:simple_route_text/ui/views/page_two/page_two_view.dart';
import 'package:simple_route_text/ui/views/startup/startup_view.dart';
import 'package:simple_route_text/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(page: HomeView, path: '/home'),
    CustomRoute(page: PageTwoView, path: '/page-two'),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
