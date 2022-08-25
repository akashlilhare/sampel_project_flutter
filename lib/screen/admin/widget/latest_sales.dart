import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_setup/model/sales_model.dart';

class LatestSales extends StatelessWidget {
  const LatestSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Sale> latestSales = [
      Sale(
          imgSrc: "https://m.media-amazon.com/images/I/71vFKBpKakL._SX679_.jpg",
          id: "ID 10-2020-08",
          title: "Macbook Pro",
          price: 89000),
      Sale(
          imgSrc:
              "https://m.media-amazon.com/images/I/71bhWgQK-cL._AC_SX960_.jpg",
          id: "ID 11-2020-09",
          title: "AirPods Pro",
          price: 19000),
      Sale(
          imgSrc: "https://m.media-amazon.com/images/I/81Y8+2cuWEL._SX679_.jpg",
          id: "ID 110-2020-08",
          title: "Oneplus TV",
          price: 49000),
      Sale(
          imgSrc:
              "https://images-eu.ssl-images-amazon.com/images/I/31C3wENzu-L._SX300_SY300_QL70_FMwebp_.jpg",
          id: "ID 10-2021-08",
          title: "Iphone Cover",
          price: 4000),
      Sale(
          imgSrc: "https://m.media-amazon.com/images/I/51AxH6YRZvL._UY675_.jpg",
          id: "ID 20-2020-08",
          title: "Puma Shoes",
          price: 80000),
        Sale(imgSrc: "https://images-eu.ssl-images-amazon.com/images/I/418rmVFVCAL._SX300_SY300_QL70_FMwebp_.jpg", id: "ID 10-2020-08", title: "OnePlus 10 Pro", price: 29000),
        Sale(imgSrc: "https://m.media-amazon.com/images/I/510B7v93YKL._SX679_.jpg", id: "ID 10-2020-08", title: "JBL Earpods", price: 19000),
        Sale(imgSrc: "https://images-eu.ssl-images-amazon.com/images/I/313ozYKeZTL._AC_SR400,600_.jpg", id: "ID 10-2020-08", title: "Hp Printer", price: 19000),
    ];

    buildCard(Sale item) {
      return Container(
        padding: EdgeInsets.only(left: 12, bottom: 10, right: 12),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: Colors.grey.withOpacity(.3),
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Image.network(
                    item.imgSrc,
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              SizedBox(width: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 2,),
                  Text(
                    item.id,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(.8)),
                  ),
                ],
              ),
              Spacer(),
              Text("\$${item.price.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 16),)
            ],
          ),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0,bottom: 8),
          child: Text(
            "Latest Sales",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
          ),
        ),
        ...latestSales.map((item) => buildCard(item)).toList()
      ],
    );
  }
}
