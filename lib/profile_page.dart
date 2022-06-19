import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/orange.JPG'),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitched ? Colors.green : Colors.grey,
            ),
            onPressed: () {
              debugPrint('ElevatedButton pressed');
            },
            child: const Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('OutlinedButton pressed');
            },
            child: const Text('OutlinedButton'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('TextButton pressed');
            },
            child: const Text('TextButton'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('GestureDetector tapped');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
                Text(
                  'Row widget',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  debugPrint('Switch value: $value');
                  isSwitched = value;
                });
              }),
          Checkbox(
              value: isCheckbox,
              onChanged: (bool? value) {
                setState(() {
                  debugPrint('Checkbox value: $value');
                  isCheckbox = value;
                });
              }),
        ],
      ),
    );
  }
}
