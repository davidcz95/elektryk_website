import 'package:auto_route/auto_route.dart';
import 'package:elektryk_website/app/layout.dart';
import 'package:elektryk_website/features/first_main_page/view/first_main_page_widget.dart';

export 'router.gr.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute<dynamic>(page: SiteLayout, initial: true),
  AutoRoute<dynamic>(page: FirstMainPageWidget),
])
class $AppRouter {}
