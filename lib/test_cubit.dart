import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());
  int numberValue=0;
  add(){
    numberValue++;
    emit(TestChange());
  }
  remove(){
    numberValue=0;
    emit(TestChange());
  }
}
