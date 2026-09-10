import 'package:dafater/core/models/company_model.dart';
import 'package:dafater/core/models/department_model.dart';

class ProductModel{
  final String id;
  final String name;
  final double price;
  final int stock;
  final CompanyModel company;
  final DepartmentModel department;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
    required this.company,
    required this.department,
  });
}