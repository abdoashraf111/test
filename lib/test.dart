import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testt/test_cubit.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestCubit,TestState>(
      builder: (context, state) =>
        Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${BlocProvider.of<TestCubit>(context).numberValue}"),
              TextButton(
                child:const Text("add button") ,
                onPressed: (){
                  BlocProvider.of<TestCubit>(context).add();
                },),
              TextButton(
                child:const Text("remove button") ,
                onPressed: (){
                  BlocProvider.of<TestCubit>(context).remove();
                },),
            ],
          ),
        ),
      ),
    );
  }
}
