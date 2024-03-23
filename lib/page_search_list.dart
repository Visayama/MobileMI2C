import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSearchList extends StatefulWidget {
  const PageSearchList({super.key});

  @override
  State<PageSearchList> createState() => _PageSearchListState();
}

class _PageSearchListState extends State<PageSearchList> {
  List<String> listDevice=[
    "Iphone",
    "Xiaomi",
    "Oppo",
    "Vivo",
    "Samsung",
    "Sony",
    "Ipad",
    "Iwatch",
    "Macbook",
    "Lenovo Thinkpad",
  ];
  bool isCari = true;
  List<String> FilterDevice=[];
  TextEditingController txtCari = TextEditingController();

  _PageSearchListState(){
    txtCari.addListener(() {
      if(txtCari.text.isEmpty){
        setState(() {
          isCari = true;
          txtCari.text = "";
        });
      } else{
        setState(() {
          isCari = false;
          txtCari.text != "";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: txtCari,
              decoration: InputDecoration(
                  hintText: "Search....",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.green.withOpacity(0.1)
              ),
            ),
            //Kondisi untuk data list
            isCari
                ? Expanded(
                child: ListView.builder(
                    itemCount: listDevice.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(listDevice[index]),
                      );
                    }))
                : CreateFilterList()
          ],
        ),
      ),
    );
  }

  Widget CreateFilterList(){
    FilterDevice = [];
    for(int i = 0; i<listDevice.length; i++){
      var item = listDevice[i];
      if(item.toLowerCase().contains(txtCari.text.toLowerCase())){
        FilterDevice.add(item);
      }
    }
    return HasilSearch();
  }

  Widget HasilSearch(){
    return Expanded(
      child: ListView.builder(
        itemCount: FilterDevice.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(FilterDevice[index]),
          );
        },
      ),
    );
}
}
