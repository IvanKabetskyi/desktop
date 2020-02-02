import 'package:flutter/material.dart';


class InputFormContainer extends StatefulWidget {
  final String title;
  final TextEditingController myController;
  
  InputFormContainer({
    Key key, 
    @required this.title, 
    @required this.myController,
  }) : super(key: key);


  @override
  _InputFormContainerState createState() => _InputFormContainerState();
}

class _InputFormContainerState extends State<InputFormContainer> {
  IconData suffixIcon;
  bool obscureText;
  bool hover;
  bool pwdIconShow;


  @override
  void initState() {
    super.initState();

    suffixIcon = Icons.visibility;

    if (widget.title == 'PASSWORD') {
      obscureText = true;
    } else {
      obscureText = false;
    }
    hover = false;
    pwdIconShow = false;
  }

  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children:  <Widget>[
      SizedBox(height: 10,),
      Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xFF2f333e),
        ),
        textAlign: TextAlign.start,
      ),
      SizedBox(height: 10,),
      SizedBox(
        height: 34.0,
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              hover = true;
            });
          },
          onExit: (event) {
            setState(() {
              hover = false;
            });
          },
          child: TextField(
            onChanged: _controlerListener,
            maxLines: 1,
            controller: widget.myController,
            obscureText: obscureText,
            decoration: InputDecoration(
              hoverColor: Colors.black,
              suffixIcon: pwdIconShow
                ? IconButton(
                    iconSize: 14,
                    icon: Icon(
                      suffixIcon,
                      color: Color(0xFF039be5),
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                        suffixIcon = obscureText
                            ? Icons.visibility
                            : Icons.visibility_off;
                      });
                    },
                  )
                : null,
              contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: hover ? Color(0xFF353a45) : Color(0xFFb0bec6))),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: Color(0xFFb0bec6)),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: Color(0xFF039be5)))),
              style: TextStyle(fontSize: 14, height: 1),
            ),
        ),
      )
     ],
   );
  }

  void _controlerListener(String event){
    setState(() {
      if(widget.title == 'PASSWORD' && event.isNotEmpty){
        pwdIconShow = true;
      }else{
        pwdIconShow = false;
      }
    });
  }
}