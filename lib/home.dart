import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerex/homeprovider.dart';


class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider() ,
            child: Consumer<HomeProvider>(
              builder: (context, provider, child){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(provider.elgibilityMsg.toString()),
                    TextField(
                      onChanged: (val) {
                        provider.check(int.parse(val));
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter your age',
                      ),
                    )
                  ],
                );
              },
            ),
            ),
        )
        ),      
    );
  }
}