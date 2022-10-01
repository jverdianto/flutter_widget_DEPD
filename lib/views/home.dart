import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor:  Colors.red,
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          'assets/images/picture1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                )
            ),


            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/picture2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/picture3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/picture4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/picture5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 8)
            ),

            Text(
              "Guitar Yamaha", 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              textAlign: TextAlign.center
            ),

            Flexible(
                flex: 7,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 15),
                  children: [
                    Text(
                      """Merek Yamaha diambil dari nama sang pendiri, yaitu Torakusu Yamaha. Beliau yang sangat mengenal teknologi dan pengetahuan dunia barat sejak masa mudanya, semula menyediakan pelayanan perbaikan alat-alat kedokteran. Dengan keahliannya ini, beliau diminta untuk memperbaiki sebuah organ, sebuah proyek yang akhirnya melahirkan merek Yamaha. Dengan kepercayaan dirinya yang tinggi akan keberhasilan usahanya ini, maka beliau berusaha menghadapi segala kemungkinan untuk mendirikan Yamaha Organ Works. Dengan jiwa wiraswasta, wawasan yang luas, dan kegigihannya untuk mengatasi kesulitan, telah membangkitkan gairah beliau untuk meraih kesuksesan. 

Jiwa dan semangat yang sama yang telah membangun merek Yamaha, dan merupakan warisan yang sangat penting bagi Yamaha Corporation sekarang ini. Tiga buah gambar garputala pada logo Yamaha menggambarkan hubungan kerjasama yang menghubungkan tiga tonggak bisnis kami, yaitu teknologi, produksi, dan penjualan. Garputala tersebut juga mengingatkan kita akan kekuatan energi dari suara dan musik di dunia, yang wilayahnya diindikasikan dengan lingkaran tertutup. Tanda ini juga melambangkan tiga elemen penting musik : melodi, harmoni, dan irama.""", 
                      
                      style: TextStyle(fontSize: 15)
                    ),
                  ],
                )
            ),


          ],
        ),
      ),
    );
  }
}
