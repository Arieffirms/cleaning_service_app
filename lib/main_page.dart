import 'package:cleaning_service_app/color_schema.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String selectedType = "Bersih";
  String selectedFrequency = "monthly";

  void onChangePaketType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple400,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 50),
          child: Text(
            "Paket Langganan",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              "Pilih Paket",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangePaketType("Bersih");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                            color: deepPurple50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/image/img1.png'))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Paket Bersih',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: deepPurple50,
                        ),
                        child: selectedType == 'Bersih'
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.pink[400],
                                size: 30,
                              )
                            : Container(),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangePaketType("mengkilap");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: deepPurple50,
                          image: DecorationImage(
                            image: AssetImage('assets/image/img2.png'),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Paket Mengkilap',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: deepPurple50,
                        ),
                        child: selectedType == "mengkilap"
                            ? Icon(Icons.check_circle, size: 30, color: pink400)
                            : Container(),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Pilih Langganan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    changeFrequency("weekly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "weekly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: BorderRadius.circular(10),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        "Mingguan",
                        style: TextStyle(
                            color: selectedFrequency == "weekly"
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency("biweekly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "biweekly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "2 Mingguan",
                        style: TextStyle(
                            color: selectedFrequency == "biweekly"
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency("Bulan");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "Bulan"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Bulanan",
                        style: TextStyle(
                            color: selectedFrequency == "Bulan"
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Pilih Tambahan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
