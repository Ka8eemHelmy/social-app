import 'package:first_app_122/screens/home/chat_screen.dart';
import 'package:flutter/material.dart';

class Screen12 extends StatelessWidget {
  const Screen12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.ac_unit_rounded,
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/sun-flour.jpg'),
                    radius: 35,
                  ),
                  title: Text(
                    'Kareem Ahmed',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Ka8eem@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Colors.grey[400]!.withOpacity(0.4),
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  subtitle: Text('Update your profile'),
                  trailing: Icon(Icons.add),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  subtitle: Text('Update your profile'),
                  trailing: Icon(Icons.add),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
          ),
        ),
        // child: Column(
        //   children: [
        //     Image.asset(
        //       'assets/images/sun-flour.jpg',
        //       errorBuilder: (context, error, stackTrace) => Icon(
        //         Icons.error_outline_rounded,
        //         color: Colors.red,
        //         size: 50,
        //       ),
        //     ),
        //   ],
        // ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    print('Kareem');
                  },
                  child: Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          padding: EdgeInsets.all(10),
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/sun-flour.jpg',
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Icon(Icons.add),
                              Icon(Icons.ac_unit_rounded),
                              Icon(Icons.abc_outlined),
                              Icon(Icons.access_alarm),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.access_time_outlined),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('Image tapped');
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/sun-flour.jpg'),
                            // child: Image.asset(
                            //   'assets/images/sun-flour.jpg',
                            //   errorBuilder: (context, error, stackTrace) => Icon(
                            //     Icons.error_outline_rounded,
                            //     color: Colors.red,
                            //     size: 50,
                            //   ),
                            // ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_down,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Download'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Welcome',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Welcome',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Welcome',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Welcome',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Welcome',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
