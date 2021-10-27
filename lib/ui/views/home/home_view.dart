import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/ui/views/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(model.title),
                    Text(model.counter.toString(),
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 44,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => model.updateCounter(),
                child: Icon(Icons.add),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
