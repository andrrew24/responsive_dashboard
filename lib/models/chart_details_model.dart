import 'package:flutter/material.dart';

class ChartDetailsModel {
  final Color color;
  final String title, trail;

  ChartDetailsModel(
      {required this.color, required this.title, required this.trail});
}

List<ChartDetailsModel> chartDetailsList = [
  ChartDetailsModel(
      color: const Color(0xff208CC8), title: "Design service", trail: "40%"),
  ChartDetailsModel(
      color: const Color(0xff4EB7F2), title: "Design product", trail: "25%"),
  ChartDetailsModel(
      color: const Color(0xff064061), title: "Product royalti", trail: "20%"),
  ChartDetailsModel(
      color: const Color(0xffE2DECD), title: "Other", trail: "22%"),
];
