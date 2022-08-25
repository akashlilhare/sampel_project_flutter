import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminStats extends StatelessWidget {
  const AdminStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildStats(
        {required String title,
        required String data,
        required IconData icon,
        required Color color}) {
      return Expanded(
        child: InkWell(
          onTap: () {},
          child: Material(
            elevation: 0,
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(Radius.circular(18)),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.grey.withOpacity(.1),   ),
                    padding: EdgeInsets.all(8),
                    child: Icon(icon,color: color.withOpacity(.7),),),

                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    data,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: Colors.grey.withOpacity(.8),fontSize: 13,fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          buildStats(
              data: "1,345",
              title: "New Sales",
              icon: Icons.note_outlined,
              color: Colors.blue),
          SizedBox(
            width: 12,
          ),
          buildStats(
              data: "2,890",
              title: "New Leads",
              icon: Icons.person_add_alt_1_outlined,
              color: Colors.green),
          SizedBox(
            width: 12,
          ),
          buildStats(
              data: "30",
              title: "Total Income",
              color: Colors.purple,
              icon: Icons.add_chart)
        ],
      ),
    );
  }
}
