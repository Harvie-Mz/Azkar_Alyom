import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: "tasbee7",
    home: Seb7a(),
  ),
);

class Seb7a extends StatefulWidget {
  @override
  _Seb7aState createState() => _Seb7aState();
}

class _Seb7aState extends State<Seb7a> {
  int _num = 0;
  String _zkr = "سُبْحَانَ اللهِ";
  Color _back = Colors.blue;

  void counterr() {
    setState(() {
      _num = _num + 1;
      switch (_num) {
        case 30:
          _zkr = 'الحَمْدُ لِلَّهِ';
          _back = Colors.green;

          break;
        case 60:
          _zkr = 'لاَ إلهَ إِلاَّ الله';
          _back = Colors.redAccent;
          break;
        case 90:
          _zkr = 'الله أكْبَرُ';
          _back = Colors.amber;
          break;
        case 120:
          _num = 0;
          _zkr = "سُبْحَانَ اللهِ";
          _back = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "تَسْبِيحٌ",
          style: TextStyle(fontFamily: 'Amiri', fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, top: 18),
                child: Center(
                  child: Text(
                    '{ فَسَبِّحْ بِحَمْدِ رَبِّكَ وَاسْتَغْفِرْهُ إِنَّهُ كَانَ تَوَّابًا }',
                    style: TextStyle(fontFamily: 'Amiri', fontSize: 24),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: queryData.size.width,
                  color: _back,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            '$_zkr',
                            style: TextStyle(fontFamily: 'Amiri', fontSize: 70),
                          ),
                          Container(
                            height: 59,
                            width: 59,
                            child: Container(
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                              ),
                              child: Center(
                                child: Text(
                                  '$_num',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 10, top: 20),
                            child: MaterialButton(
                              height: queryData.size.width,
                              minWidth: queryData.size.width,
                              highlightColor: _back,
                              onPressed: counterr,
                              child: Text(
                                '$_zkr',
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              ),
                              color: Colors.black26.withOpacity(0.1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
