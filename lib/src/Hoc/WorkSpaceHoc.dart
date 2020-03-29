import 'package:example_flutter/src/Router/router_generator_workspace.dart';
import 'package:example_flutter/src/components/menu.dart';
import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class WorkSpaceHoc extends StatefulWidget {
  @override
  _WorkSpaceState createState() => _WorkSpaceState();
}

class _WorkSpaceState extends State<WorkSpaceHoc>
    with TickerProviderStateMixin {
  double widthTextMenu;
  double widthMenu;
  AnimationController _hover;
  Animation<Color> animationHover;
  bool toggle;

  NavigatorObserver appNavigator;

  @override
  void initState() {
    super.initState();

    toggle = true;

    _hover = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    animationHover = ColorTween(
      begin: Colors.transparent,
      end: Color(0xFF039be5),
    ).animate(_hover)
      ..addListener(() {
        setState(() {});
      });

    appNavigator = new NavigatorObserver();

    widthTextMenu = toggle ? 112.0 : 0.0;
    widthMenu = toggle ? 240.0 : 64.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Menu(
              widthMenu: widthMenu,
              widthTextMenu: widthTextMenu,
              appNavigator: appNavigator),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  color: Color(0xFF40c4ff),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          InkWell(
                            onHover: (event) {
                              if (event) {
                                _hover.forward();
                              } else {
                                _hover.reverse();
                              }
                            },
                            onTap: () {
                              setState(() {
                                widthMenu = widthMenu == 64.0 ? 240.0 : 64.0;
                                widthTextMenu =
                                    widthTextMenu > 0.0 ? 0.0 : 112.0;
                              });
                            },
                            child: Container(
                              color: animationHover.value,
                              width: 54.0,
                              height: 60.0,
                              child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Icon(
                                  Icons.dehaze,
                                  color: Colors.white,
                                  size: 21.0,
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                Flexible(
                  child: Stack(children: <Widget>[
                    Navigator(
                      observers: [appNavigator],
                      initialRoute: 'app/drivers',
                      onGenerateRoute: RouteGeneratorWorkSpace.generateRoute,
                    ),
                    StoreConnector<AppState, bool>(
                      converter: (store) => store.state.syncLoad,
                      builder: (context, state) {
                        if (state) {
                          return Container(
                            alignment: Alignment(-0.9, -0.9),
                            child: FractionallySizedBox(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Container(
                                  alignment: Alignment.center,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  child: SpinKitFadingCircle(
                                    color: Colors.black,
                                    size: 50.0,
                                  )),
                            ),
                          );
                        }

                        return SizedBox();
                    })
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
