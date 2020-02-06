import 'package:example_flutter/src/Router/route_generator_work_space.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_bloc.dart';
import 'package:example_flutter/src/components/menu.dart';
import 'package:example_flutter/src/data/repositories/drivers_repositore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkSpaceHoc extends StatefulWidget {
  WorkSpaceHoc({Key key}) : super(key: key);

  @override
  _WorkSpaceState createState() => _WorkSpaceState();
}

class _WorkSpaceState extends State<WorkSpaceHoc>
    with TickerProviderStateMixin {
  double widthTextMenu;
  double widthMenu;
  AnimationController _hover;
  Animation<Color> animationHover;

  @override
  void initState() {
    super.initState();

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

    widthTextMenu = 112.0;
    widthMenu = 240.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Menu(widthMenu: widthMenu, widthTextMenu: widthTextMenu),
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
                Expanded(
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider<DriversBloc>(
                        create: (BuildContext context) => DriversBloc(
                            repository: new DriversRepositoryImpl()),
                      ),
                    ],
                    child: MaterialApp(
                      onGenerateRoute: RouteGeneratorWorkSpace.generateRoute,
                      debugShowCheckedModeBanner: false,
                      initialRoute: '/drivers',
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
