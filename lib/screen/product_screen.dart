import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myfirstapp/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductModel>? productModel;
  var isLoading = false;
  Future<List<ProductModel>?> getProduct() async {
    try {
      setState(() {
        isLoading = true;
      });
      var url = Uri.parse("https://fakestoreapi.com/products");
      var response = await http.get(url, headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      });

      if (response.statusCode == 200) {
        return productModelFromJson(response.body);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
  }

  Future getdata() async {
    productModel = await getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Container(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: productModel!.length,
                // separatorBuilder: (BuildContext context, int index) {
                //   return Divider(
                //     thickness: 2.0,
                //   );
                // },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Card(
                      elevation: 8.0,
                      child: ListTile(
                        leading: Container(
                          width: 100.0,
                          height: 100.0,
                          child: ClipOval(
                            child: Image.network(
                              "${productModel?[index].image ?? "https://techcrunch.com/wp-content/uploads/2018/07/logo-2.png?w=300"}",
                            ),
                          ),
                        ),
                        title: Text(
                          "${productModel?[index].title ?? "Untitled"}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "${productModel?[index].description ?? "No Description"}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        trailing: Text(
                          "Rs.${productModel?[index].price}",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
