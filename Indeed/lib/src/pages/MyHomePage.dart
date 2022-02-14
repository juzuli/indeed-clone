import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String dropdownvalue = 'Inbox';
  var items = ['Inbox','Archive','Spam'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Indeed_logo.svg/2560px-Indeed_logo.svg.png",scale: 30)),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0,
                      actions: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.home))
                      ],
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(80.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SafeArea(
                            child:
                            DropdownButton(
                              isDense: true,
                              borderRadius: BorderRadius.circular(16),
                              alignment: Alignment.center,
                              isExpanded: true,

                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Builder(
                                    builder: (context) {
                                      return Text(items);
                                    }
                                  ),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                            // TextFormField(
                            //   item
                            //   decoration: InputDecoration(
                            //       prefixIcon: Icon(Icons.search),
                            //       labelText: "Find a Job",
                            //       contentPadding: EdgeInsets.all(16),
                            //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                            // ),
                          ),
                        ),
                      ),
                        ),
                    body: Center(
                      child: Image.asset('assets/images/messages.jpg',scale: 1,),
                    )
                  );
                },
              ));
            }, icon: Icon(Icons.chat_rounded,color: Colors.black),),
            SizedBox(width: 35,),
            IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return DefaultTabController(
                        initialIndex: 1,
                        length: 3,
                        child: Scaffold(
                          appBar: AppBar(
                            elevation: 0,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              title: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Indeed_logo.svg/2560px-Indeed_logo.svg.png",scale: 30)),
                              actions: [
                                IconButton(
                                    onPressed: (){

                                    },
                                    icon: Icon(Icons.home))
                              ],
                            bottom: TabBar(
                              tabs: <Widget>[
                                Tab(
                                  child: Icon(Icons.chat_rounded,color: Colors.black),
                                ),
                                Tab(
                                  child: Icon(Icons.notifications,color: Colors.black),
                                ),
                                Tab(
                                  child: Builder(
                                      builder: (context) {
                                        return IconButton(
                                            onPressed: (){
                                              Scaffold.of(context).openEndDrawer();
                                            },
                                            icon: Icon(Icons.dehaze_rounded,color: Colors.black));
                                      }
                                  ),
                                ),
                              ],
                            ),
                          ),
                          body: TabBarView(
                            children: <Widget>[
                              Center(
                                child: Text("It's cloudy here"),
                              ),
                              Center(
                                child: ListView(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 500,
                                          color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset('assets/images/notification.jpg',scale: 3,),
                                                Container(
                                                  width: 250,
                                                    child: Text("Welcome to your notification box!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                                                ),
                                                SizedBox(height: 8,),
                                                Text("Once you begin a job search,we'll notify you here about maching jobs, the application status, resume tips, and helpful interview advice.",
                                                textAlign: TextAlign.center,style: TextStyle(fontSize: 16),
                                                ),
                                                SizedBox(height: 16,),
                                                Center(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text("Find jobs",style: TextStyle(color: Colors.indigo,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                      Icon(Icons.arrow_forward,color: Colors.indigo,)
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 16,),
                                              ],
                                            ),
                                          ),
                                      ),
                                    ),
                                    SizedBox(height: 230,),
                                    Divider(),
                                    ListTile(
                                      title: Text("juzulitry@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                                    ),
                                    Divider(),
                                    ListTile(
                                      title: Text("job Seekers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                      trailing: Icon(Icons.keyboard_arrow_down_sharp),
                                    ),
                                    Divider(),
                                    ListTile(
                                      title: Text("Employers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                      trailing: Icon(Icons.keyboard_arrow_down_sharp),
                                    ),
                                    Divider(),
                                    ListTile(
                                      title: Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                      trailing: Icon(Icons.keyboard_arrow_down_sharp),
                                    ),
                                    Divider(),
                                    SizedBox(height: 18),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("©2022 Indeed"),
                                    ),
                                    SizedBox(height: 12),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Wrap(
                                        alignment: WrapAlignment.center,
                                        spacing: 12,
                                        runSpacing: 12,
                                        children: [
                                          Text("Accessibility at Indeed"),
                                          Text("Privacy Center"),
                                          Text("Cookies"),
                                          Text("Privacy"),
                                          Text("Terms"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text("It's sunny here"),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ));
                },
                icon: Icon(Icons.notifications,color: Colors.black),),
            SizedBox(width: 14,),
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: (){
                      Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.dehaze_rounded,color: Colors.black));
              }
            ),
            SizedBox(width: 4,)
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child:
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: "Find a Job",
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ),
          ),
        ),
        endDrawer: Drawer(
          child: SafeArea(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Find Jobs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Company reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Salary Guide",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Employers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("My jobs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("My reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("My subscriptions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Country and language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.flag),
                      Text("India")
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Help Centre",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
                ListTile(
                  title: Text("Sign out",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  subtitle: Text("juzulitry@gmail.com"),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                ),
                Divider(),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
            children :[TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("Job feed",style: TextStyle(color: Colors.black),),
                ),
                Tab(
                  child: Text("Recent searches",style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                        children: [
                          Text("Jobs based on your searches • Updated 2 min ago"),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Material(
                              color: Colors.white,
                              elevation: 4,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("new",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 8,),
                                        Text("Jr. Flutter Developer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                        SizedBox(height: 4,),
                                        Text("NdiamensionZ",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 4,),
                                        Text("Kochi, Kerala",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 8,),
                                        Text("Visited 2 days ago",style: TextStyle(color: Colors.black45,fontSize: 12),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.favorite_border),
                                        SizedBox(height: 12,),
                                        Icon(Icons.do_disturb),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Material(
                              color: Colors.white,
                              elevation: 4,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("new",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 8,),
                                        Text("Flutter/Ionic Developer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                        SizedBox(height: 4,),
                                        Text("JR Boon Solutions",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 4,),
                                        Text("Kochi, Kerala • Temporarily remote",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 8,),
                                        Container(
                                          width: 225,
                                          height: 28,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                                            color: Colors.black12,
                                          ),padding: EdgeInsets.all(4),
                                          child: Row(
                                            children: [
                                              Icon(Icons.payments_sharp,color: Colors.black87,size: 20,),
                                              Text(" ₹13,410 - ₹59,319 a month",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 12,),
                                        Row(
                                          children: [
                                            Icon(Icons.send,size: 16,color: Colors.indigo,),
                                            SizedBox(width: 8,),
                                            Text("Apply from your phone",style: TextStyle(fontSize: 16))
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Text("Active 5 days ago",style: TextStyle(color: Colors.black45,fontSize: 12),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.favorite_border),
                                        SizedBox(height: 12,),
                                        Icon(Icons.do_disturb),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Material(
                              color: Colors.white,
                              elevation: 4,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("new",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 8,),
                                        Text("FLEXO PRINTING OPERATORS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                        SizedBox(height: 4,),
                                        Text("Connect Plus Pvt Ltd",style: TextStyle(fontSize: 16),),
                                        SizedBox(height: 4,),
                                        Text("Ernakulam, Kerala",style: TextStyle(fontSize: 16),),
                                        SizedBox(height: 8,),
                                        Text("Hiring ongoing 	• From Kochi, Kerala",style: TextStyle(color: Colors.black45,fontSize: 12),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.favorite_border),
                                        SizedBox(height: 12,),
                                        Icon(Icons.do_disturb),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Material(
                              color: Colors.white,
                              elevation: 4,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("new",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 8,),
                                        Text("Sales Exicutive",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                        SizedBox(height: 4,),
                                        Text("Bizzaro Uniforms Pvt Ltd",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 4,),
                                        Text("Kochi, Kerala",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 8,),
                                        Container(
                                          width: 225,
                                          height: 28,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                                            color: Colors.black12,
                                          ),padding: EdgeInsets.all(4),
                                          child: Row(
                                            children: [
                                              Icon(Icons.payments_sharp,color: Colors.black87,size: 20,),
                                              Text(" ₹18,000 - ₹22,000 a month",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 12,),
                                        Row(
                                          children: [
                                            Icon(Icons.send,size: 16,color: Colors.indigo,),
                                            SizedBox(width: 8,),
                                            Text("Apply from your phone",style: TextStyle(fontSize: 16))
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Icon(Icons.hourglass_top,size: 20,color: Colors.deepPurple,),
                                            SizedBox(width: 8,),
                                            Text("Be an early applicant",style: TextStyle(fontSize: 16))
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Icon(Icons.person_add_alt_1,size: 20,color: Colors.deepOrange,),
                                            SizedBox(width: 8,),
                                            Text("Hiring Multiple candidates",style: TextStyle(fontSize: 16))
                                          ],
                                        ),
                                        SizedBox(height: 12,),
                                        Text("Today • From Kochi, Kerala",style: TextStyle(color: Colors.black45,fontSize: 12),)
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.favorite_border),
                                        SizedBox(height: 12,),
                                        Icon(Icons.do_disturb),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Material(
                              color: Colors.white,
                              elevation: 4,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("new",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 8,),
                                        Text("Driver",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                        SizedBox(height: 4,),
                                        Text("Heaven's Manpower Solutions",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 4,),
                                        Text("Ernakulam, Kerla",style: TextStyle(fontSize: 18),),
                                        SizedBox(height: 8,),
                                        Container(
                                          width: 225,
                                          height: 28,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                                            color: Colors.black12,
                                          ),padding: EdgeInsets.all(4),
                                          child: Row(
                                            children: [
                                              Icon(Icons.payments_sharp,color: Colors.black87,size: 20,),
                                              Text(" ₹12,000 - ₹18,000 a month",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Icon(Icons.send,size: 16,color: Colors.indigo,),
                                            SizedBox(width: 8,),
                                            Text("Apply from your phone",style: TextStyle(fontSize: 16))
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Icon(Icons.person_add_alt_1,size: 20,color: Colors.deepOrange,),
                                            SizedBox(width: 8,),
                                            Text("Hiring multiple candidates",style: TextStyle(fontSize: 16))
                                          ],
                                        ),
                                        SizedBox(height: 12,),
                                        Text("Today • From Kochi, Kerala",style: TextStyle(color: Colors.black45,fontSize: 12),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.favorite_border),
                                        SizedBox(height: 12,),
                                        Icon(Icons.do_disturb),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(22.0),
                                child: Text("Create your profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                              Icon(Icons.keyboard_arrow_right_sharp,color: Colors.black26,)
                            ],
                          ),
                          Divider(),
                          ListTile(
                            title: Text("juzulitry@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            trailing: Icon(Icons.keyboard_arrow_right_sharp),
                          ),
                          Divider(),
                          ListTile(
                            title: Text("job Seekers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            trailing: Icon(Icons.keyboard_arrow_down_sharp),
                          ),
                          Divider(),
                          ListTile(
                            title: Text("Employers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            trailing: Icon(Icons.keyboard_arrow_down_sharp),
                          ),
                          Divider(),
                          ListTile(
                            title: Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            trailing: Icon(Icons.keyboard_arrow_down_sharp),
                          ),
                          Divider(),
                          SizedBox(height: 18),
                          Text("©2022 Indeed"),
                          SizedBox(height: 12),
                          Wrap(
                            spacing: 12,
                            runSpacing: 12,
                            children: [
                              Text("Accessibility at Indeed"),
                              Text("Privacy Center"),
                              Text("Cookies"),
                              Text("Privacy"),
                              Text("Terms"),
                            ],
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                          Text("Recent searches",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("Edit",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),),
                        ], ),
                        SizedBox(height: 12,),
                        ListTile(
                          title: Text("Junior flutter developer"),
                          subtitle: Text("in Kochi, Kerala"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        SizedBox(height: 12,),
                        ListTile(
                          title: Text("Kochi, Kerala"),
                          subtitle: Text("934 new in Kochi, Kerala"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Text("Create your profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Icon(Icons.keyboard_arrow_right_sharp,color: Colors.black26,)
                          ],
                        ),
                        Divider(),
                        ListTile(
                          title: Text("juzulitry@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          trailing: Icon(Icons.keyboard_arrow_right_sharp),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("job Seekers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          trailing: Icon(Icons.keyboard_arrow_down_sharp),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Employers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          trailing: Icon(Icons.keyboard_arrow_down_sharp),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          trailing: Icon(Icons.keyboard_arrow_down_sharp),
                        ),
                        Divider(),
                        SizedBox(height: 18),
                        Text("©2022 Indeed"),
                        SizedBox(height: 12),
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            Text("Accessibility at Indeed"),
                            Text("Privacy Center"),
                            Text("Cookies"),
                            Text("Privacy"),
                            Text("Terms"),
                          ],
                        ),
                        SizedBox(height: 12),
                      ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),


      ),
    );
  }
}