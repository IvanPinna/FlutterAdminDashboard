import 'package:admin_dashboard/ui/layouts/auth/widgets/background_twitter.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_title.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/links_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AuthLayout extends StatelessWidget{

  final Widget child;
  
  const AuthLayout({
    Key? key,
    required this.child
  }):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          _DesktopBody(child: child),

          //Mobile

          //LinksBar
          LinkBar()
        ],
      )
    );
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;

  const _DesktopBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    return Container(
      width: size.width,
      height: size.height*0.95,
      color: Colors.red,
      child: Row(
        children: [
          //Twitter background
          BackgroundTwitter(),

          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 20),
                CustomTitle(),
                SizedBox(height: 50),
                Expanded(child: child)
              ],
            ),
          )
        ],
      ),
    );
  }
}