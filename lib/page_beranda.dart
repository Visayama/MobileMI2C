import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:project/model/page_list_berita.dart';
import 'package:project/page_bottom_navigation.dart';
import 'package:project/page_list_user.dart';
import 'package:project/page_navigation_bar.dart';
import 'package:project/page_search_list.dart';

class PageBeranda extends StatelessWidget {
  const PageBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Projek MI 2C'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('gambar/img.png',
                fit: BoxFit.contain,
                height: 150,
                width: 150,
              ),
              SizedBox(height: 8,),
              // const Image(
              //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              //   fit: BoxFit.contain,
              //   height: 150,
              //   width: 150,
              // ),
              Text('Program Studi: Manajemen Informatika'),
              Text('Kampus Politeknik Negeri Padang'),
              SizedBox(height: 10,),
              MaterialButton(onPressed: (){
                showToast('Pindah Ke Page Navigation Drawer',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 20,
                  fullWidth: true,
                );
                //code untuk pindah pager
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageNavigationBar()
                ));
              },

                child: Text('Page Navigation Utama',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                color: Colors.green,
                textColor: Colors.white,
              ),
              SizedBox(height: 8,),
              MaterialButton(onPressed: (){
                showToast(
                  'This is normal',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 20,
                  fullWidth: true,
                );
              },
                child: Text('Explore Here',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                color: Colors.green,
                textColor: Colors.white,
              ),

              SizedBox(height: 8,),
              MaterialButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:  Text('ini adalah pesan snackbar'),
                    backgroundColor: Colors.deepOrange,
                  ),

                );
              },
                child: Text('SnackBar',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                color: Colors.green,
                textColor: Colors.white,
              ),
              SizedBox(height: 8,),
              MaterialButton(onPressed: (){

                //code untuk pindah page
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageBottomNavigationBar()
                ));
              },
                child: Text('Page Bottom Navigation Bar',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                color: Colors.green,
                textColor: Colors.white


              ),
              SizedBox(height: 8,),
              MaterialButton(onPressed: (){
                //code untuk pindah page
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageSearchList()
                ));
              },
                  child: Text('Page Search List',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
                  ),
                  color: Colors.green,
                  textColor: Colors.white
              ),

              SizedBox(height: 8,),
              MaterialButton(onPressed: (){
                //code untuk pindah page
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageListUsers()
                ));
              },
                  child: Text('List User Api',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
                  ),
                  color: Colors.green,
                  textColor: Colors.white
              ),

              SizedBox(height: 8,),
              MaterialButton(onPressed: (){
                //code untuk pindah page
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageListBerita()
                ));
              },
                  child: Text('List Berita',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
                  ),
                  color: Colors.green,
                  textColor: Colors.white
              ),




            ],
          ),
        ) ,
      ),
    );
  }
}