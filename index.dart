import 'package:flutter/material.dart';

class DashboardIndex extends StatefulWidget {
  DashboardIndex({Key key}) : super(key: key);

  _DashboardIndexState createState() => _DashboardIndexState();
}

class _DashboardIndexState extends State<DashboardIndex> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  bool isExpanded = true;
  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 21),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 280),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(34, 34, 34, 1),Color.fromRGBO(24, 24, 24, 1)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              width: isExpanded == true ? 120 : 60,
              child: Column(
                children: <Widget>[
                  IconButton(
                  icon: Icon(Icons.menu,color: Colors.white,),
                  onPressed: (){
                    isExpanded == true ?
                    setState(() {
                     isExpanded = false; 
                    })
                    :
                    setState(() {
                     isExpanded = true; 
                    });
                  }
                ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 6, right: 10),
                          child: IconButton(
                            icon: Icon(Icons.home,color: Colors.white,),
                            padding: EdgeInsets.zero,
                            onPressed: (){

                            },
                          )
                        ),
                        Center(child: Text("Inicio",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey.withOpacity(0.5),),
                   SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 6, right: 10),
                          child: IconButton(
                            icon: Icon(Icons.account_circle,color: Colors.white,),
                            padding: EdgeInsets.zero,
                            onPressed: (){

                            },
                          )
                        ),
                        Center(child: Text("Conta",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey.withOpacity(0.5),),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 6, right: 10),
                          child: IconButton(
                            icon: Icon(Icons.settings,color: Colors.white,),
                            padding: EdgeInsets.zero,
                            onPressed: (){

                            },
                          )
                        ),
                        Center(child: Text("Config",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey.withOpacity(0.5),),
                   SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 6, right: 10),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.white,),
                            padding: EdgeInsets.zero,
                            onPressed: (){

                            },
                          )
                        ),
                        Center(child: Text("Add",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey.withOpacity(0.5),),
                   SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 6, right: 10),
                          child: IconButton(
                            icon: Icon(Icons.store,color: Colors.white,),
                            padding: EdgeInsets.zero,
                            onPressed: (){

                            },
                          )
                        ),
                        Center(child: Text("Store",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey.withOpacity(0.5),),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 8,right: 8),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Meu App",style: TextStyle(fontSize: 28),),
                          IconButton(icon: Icon(Icons.search),onPressed: (){

                          },)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}