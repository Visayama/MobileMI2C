import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:project/navigation_pnp.dart';
import 'package:project/navigation_tekkom.dart';

class Poli extends StatelessWidget {
  const Poli({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('gambar/poli.png',
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),
              SizedBox(height: 30,),
              Text('Selamat Datang di Politeknik Negeri Padang',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.orange
              ),),
              Text('Limau Manih, Padang, Sumbar'),
              SizedBox(height: 30,),

              MaterialButton(onPressed: (){
                showToast(
                'Pindah ke Page Navigation Drawer',
                context: context,
                axis: Axis.horizontal,
                alignment: Alignment.center,
                position: StyledToastPosition.bottom,
                toastHorizontalMargin: 20,
                fullWidth: true,
              );
              //ini code untuk pindah page
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => NavigationPoli()
              ));
              },
                child: Text('Manjamen Informatika',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),),
                color: Colors.orange,
                textColor: Colors.white,

              ),
              SizedBox(height: 30,),
              MaterialButton(onPressed: (){
                showToast(
                  'Pindah ke Page Navigation Drawer',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 20,
                  fullWidth: true,
                );
                //ini code untuk pindah page
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => NavigationTekkom()
                ));
              },
                child: Text('Teknik Komputer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),),
                color: Colors.orange,
                textColor: Colors.white,

              )
            ],
          ),
        ),
      ),
    );
  }
}
