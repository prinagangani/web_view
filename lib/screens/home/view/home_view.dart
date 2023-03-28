import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_view/screens/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue, homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("All in one shopping app"),centerTitle: true,backgroundColor: Colors.black,),
        body: GridView.builder(itemCount: homeProviderFalse!.Logos.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,), itemBuilder: (context, index) {
          return InkWell(onTap: () {
            Navigator.pushNamed(context, 'webpage');
            homeProviderFalse!.linkurl(index);
          },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                       color: Colors.red,
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset("${homeProviderFalse!.Logos[index]}",fit: BoxFit.cover,)),
                  ),
                  SizedBox(height: 10,),
                  Text("${homeProviderFalse!.Name[index]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1)),
                ],
              )
            ),
          );
        },),
      ),
    );
  }
}
