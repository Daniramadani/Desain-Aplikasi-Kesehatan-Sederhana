import 'package:flutter/material.dart';

void main() {
  runApp(HealthApp());
}

class HealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Welcome to Health App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 48,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Heart Rate',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_run,
                          size: 48,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Steps',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Latest News',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Image.network(
              'https://cdn.pixabay.com/photo/2017/06/02/18/24/watermelon-2367029_640.jpg',
              width: 90,
              height: 90,
            ),
            title: Text('Buah - Buahan yang baik untuk dikonsumsi'),
            subtitle: Text('Buah memiliki berbagai zat gizi yang dapat membantu'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.network(
              'https://cdn.pixabay.com/photo/2017/08/06/12/52/woman-2592247_640.jpg',
              width: 90,
              height: 90,
            ),
            title: Text('Olahraga Baik untuk tubuh'),
            subtitle: Text('Berolahraga secara rutin dapat meningkatkan daya tahan tubuh sehingga '),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.network(
              'https://cdn.pixabay.com/photo/2016/02/20/21/41/vegetables-1212845_640.jpg',
              width: 90,
              height: 90,
            ),
            title: Text('Sayuran membantu menurunkan kelosterol'),
            subtitle: Text('Ada pula jenis sayuran penurun kolesterol yang dapat Anda konsumsi yaitu sayuran berdaun hijau seperti'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.network(
              'https://cdn.pixabay.com/photo/2020/07/07/13/52/woman-5380651_640.jpg',
              width: 90,
              height: 90,
            ),
            title: Text('Yoga dapat membuat tidur lebih baik'),
            subtitle: Text('Melakukan gerakan yoga sebelum tidur dapat meningkatkan kualitas tidur, meredakan stres, serta mengatasi insomnia'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.network(
              'https://cdn.pixabay.com/photo/2015/12/06/18/28/capsules-1079838_640.jpg',
              width: 90,
              height: 90,
            ),
            title: Text('Minum beberapa pil vitamin untuk menjaga kesehatan tubuh'),
            subtitle: Text('Mengonsumsi vitamin tambahan sesuai kebutuhan itu sangat penting.'),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
