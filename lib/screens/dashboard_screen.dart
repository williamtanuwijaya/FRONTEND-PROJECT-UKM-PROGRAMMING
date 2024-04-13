import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/dashboardScreen';

 const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final String nama='Joko Petualang';
  final List<Map<String, String>> items = [
    {'title': 'Matematika', 'tanggal': 'Jumat 5 April 2024', 'waktu':'15.00-17.00'},
    {'title': 'Fisika', 'tanggal': 'Jumat 5 April 2024', 'waktu':'17.00-19.00'},
    {'title': 'kimia', 'tanggal': 'Jumat 6 April 2024', 'waktu':'13.00-15.00'},
    {'title': 'Biologi', 'tanggal': 'Jumat 6 April 2024', 'waktu':'15.00-17.00'},
    {'title': 'Agama', 'tanggal': 'Jumat 6 April 2024', 'waktu':'17.00-19.00'},
   
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color(0xFFDDD0BD),
        title: Align(
          child: Text('Halo, ${nama} !!!',
          style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
               ),
                 ),
          alignment: Alignment.bottomLeft,
          
        ),
        
      ),
      backgroundColor: const Color(0xFFDDD0BD),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemCard(
            title: items[index]['title']!,
            tanggal: items[index]['tanggal']!,
            waktu: items[index]['waktu']!,
            onPressed: () {
              print('Button Pressed for ${items[index]['title']}');
            },
          );
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title;
  final String tanggal;
  final String waktu;
  final VoidCallback onPressed;

  const ItemCard({
    Key? key,
    required this.title,
    required this.tanggal,
    required this.waktu,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: Container(
        color: Color.fromARGB(119, 221, 208, 189),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        tanggal,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        waktu,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: onPressed,
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 22, 37, 63), 
                      fixedSize: Size.fromRadius(30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10)
                    ),
                    
                      child: Image.asset("assets/images/Play.png", height: 30, width: 30,)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}