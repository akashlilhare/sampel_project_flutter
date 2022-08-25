
import 'package:flutter/material.dart';
import 'package:project_setup/screen/admin/widget/admin_stats.dart';
import 'package:project_setup/screen/admin/widget/latest_sales.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildIcon({required  IconData icon}){
      return
        InkWell(
          onTap: (){},
          child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.grey.withOpacity(.1),   ),
      padding: EdgeInsets.all(10),
          child: Icon(icon,color: Colors.black.withOpacity(.8),),),
        );
    }
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(

          preferredSize: Size(100,500),
          child:
          Container(
            color: Theme.of(context).appBarTheme.backgroundColor,
            padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16,bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              buildIcon(icon: Icons.search),
              Text("Admin",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              buildIcon(icon: Icons.add_circle_outline),

            ],),

          ),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 18,),
              AdminStats(),
              SizedBox(height: 18,),
              LatestSales(),

            ],
          ),
        ),

      ),
    );
  }
}
