import 'package:flutter/material.dart';
import 'package:ex43_multiprovider/data.dart';
import 'package:ex43_multiprovider/repo.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Repo>(
      builder: (context,repo,_){
        return Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(repo.value),
            SizedBox(height: 50.0,),
            TextField(
              onChanged: (value){
                repo.changeValue(value);
              },
            ),
          ],
        ));
      },
    );
  }
}