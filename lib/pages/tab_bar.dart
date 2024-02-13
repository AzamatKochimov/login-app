import 'package:flutter/material.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/pages/sign_up_page.dart';
class LoginSignUpPage extends StatefulWidget {
  @override
  _LoginSignUpPageState createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 200),
          child: Column(
            children: <Widget>[
              TabBar(
                controller: _tabController,
                tabAlignment: TabAlignment.center,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey.withOpacity(0.4),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.amber,
                tabs: const [
                  Tab(text: 'Login'),
                  Tab(text: 'Sign Up'),
                ],
              ),
              Flexible(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    
                    LoginPage(),
        
                    SignUpPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}