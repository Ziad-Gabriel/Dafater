import 'package:dafater/core/models/product_model.dart';

class BillModel {
  final String id;// the date of the bill and the bill number in the day are used as the id [2006-5-4-1]
  final double totalPrice;
  final DateTime date;
  final List<ProductModel> products;

  BillModel({
    required this.id,
    required this.totalPrice,
    required this.date,
    required this.products,
  });
}