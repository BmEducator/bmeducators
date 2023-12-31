import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';


class developersInformation extends StatefulWidget {
  const developersInformation({Key? key}) : super(key: key);

  @override
  State<developersInformation> createState() => _developersInformationState();
}

class _developersInformationState extends State<developersInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70,),
              InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
              Center(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(75),
                    elevation: 20,
                    child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/dev.jpg"),

                          radius: 70,
                        ))),
              ),
              SizedBox(height: 15,),
              Center(child: Text("Usman Ali",style: TextStyle(fontFamily: "Poppins",fontSize: 22),)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Row(children: [
                Icon(Icons.call,color: Colors.blue,),
                SizedBox(width: 20,),
                Text("+92-336-6587277",style: TextStyle(fontFamily: "PoppinRegular",fontSize: 17),)
              ],),
              Divider(thickness: 2),
              SizedBox(height: 30,),
              Row(children: [
                Icon(Icons.mail,color: Colors.blue,),
                SizedBox(width: 20,),
                Text("maan.8767@gmail.com",style: TextStyle(fontFamily: "PoppinRegular",fontSize: 17),)
              ],),
              Divider(thickness: 2),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () async {
                        try {
                          await launchUrlString(
                              "whatsapp://send?phone=03366587277");
                        } catch (e) {
                          print('Error Launching WhatsApp');
                        }
                      },

                    child: Material(
                      color: Colors.green,
                      elevation: 10,
                      borderRadius: BorderRadius.circular(70),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.whatsapp_rounded,size: 30,color: Colors.white,),
                      )
                      ,
                    ),
                  ),

                  SizedBox(width: 20,),

                  ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
