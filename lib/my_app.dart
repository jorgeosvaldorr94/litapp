import 'package:flutter/material.dart';
import 'package:lit_app/comercio/inicio/i0_inicirsesion/i0_inicirsesion_widget.dart';
import 'package:lit_app/influencers/entrada/i00inicio/i00inicio_widget.dart';
import 'package:lit_app/sprint1/homelit.dart';
import 'package:lit_app/sprint2/i50selector/i50selector_widget.dart';
import 'flutter_flow/internationalization.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';
import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'routes/app_routes.dart';
import 'routes/routes.dart';
class MyApp extends StatefulWidget {
 const MyApp();
  

    @override
  State<MyApp> createState() => MyAppState();
   }

class MyAppState extends State<MyApp>{
  
  final delegate = MyRouterDelegate(
    pages:[
MyPage((_) => I50selectorWidget(),
path: '/'
),
MyPage((_) => I0InicirsesionWidget(),
path: '/i0Inicirsesion')
    ]
    ) ;
  
  
  Widget build(BuildContext context) {
  return  MaterialApp.router(
    routerDelegate: delegate ,
    routeInformationParser: MyRouteInformationParser(),
     /* home: Navigator(
        onPopPage: (route, result){
          return route.didPop(result);
        },
       pages: [
        MaterialPage(child: I50selectorWidget() ),
        MaterialPage(child: I0InicirsesionWidget())
       ], 
      ),*/
    /*initialRoute: Routes.initialize,
     routes: appRoutes,*/
    );
  }
  
}
class MyPage{
  final String path;
  
  final Widget Function(Map<String,String> data) builder;
  
 
  MyPage(this.builder, {required this.path});
}
class MyRouterDelegate extends RouterDelegate<Uri> 
with ChangeNotifier, PopNavigatorRouterDelegateMixin{ 
 final List<MyPage> pages;

 late List<Page> _navigatorPages;
MyRouterDelegate(
   {required this.pages}
   ){
   final initialPage = pages.firstWhere((element) => element.path == '/');
  
   _navigatorPages = [
    MaterialPage(
      name: '/',
      child: initialPage.builder(
        {

        }
    ))
   ]; 
   }
 
  Widget build(BuildContext context) {
     return Navigator(
        pages: _navigatorPages,
        onPopPage: (route, result) {
          if(route.didPop(result)){
          _navigatorPages.removeWhere((element) => element.name == route.settings.name);
          return true;
          }
          return false;
        }, 
     );
  }

  @override
  Future<bool> popRoute() {
    // TODO: implement popRoute
    throw UnimplementedError();
  }

 

  @override
  Future<void> setNewRoutePath(Uri configuration) async{
    final path = configuration.path;
    final data = <String,String>{};
   final index = pages.indexWhere(
    (e) {
      if(e.path == path){
        return true;
      }
  if (e.path.contains('/:')){
    final lastIndex = e.path.indexOf('/:');
    final substring = e.path.substring(0, lastIndex);
  if(path.startsWith(substring)){
   final key = e.path.substring(lastIndex+2,e.path.length);
     final value = path.substring(lastIndex+1,path.length);
     data[key] = value;
    return true;
  }
  }
 
      return false;
    });
  if(index == -1){
    _navigatorPages= [..._navigatorPages, MaterialPage(child: pages[index].builder(data),
      )];
notifyListeners();
  }
  

}   
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

}


class MyRouteInformationParser extends RouteInformationParser<Uri>{
 
@override
  Future<Uri> parseRouteInformation(RouteInformation routeInformation) {
     return Future.value(
  Uri.parse(routeInformation.location?? ''),

     );
}
  
  
}
 
 
  
  
 