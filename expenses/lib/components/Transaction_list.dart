// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import '../Utilitarios.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions; 

  TransactionList({
    required this.transactions
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (ctx, index){
                final tr = transactions[index];
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        )),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "R\$ ${tr.value.toString()}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            Utilitarios.refactorDate(tr.date.toString()),
                            style: TextStyle(
                              color: Color.fromARGB(255, 100, 100, 100),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}