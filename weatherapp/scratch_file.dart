import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String r=await task2();
  task3(r);
}

void task1() {

  String result = 'task 1';
  print('Task 1 done');
}

Future <String> task2() async{
  Duration d=Duration(seconds: 5);
  String result='hiii';
  await Future.delayed(d,(){
    String result = 'task 2';
    print('Task 2 done');
  });
  return result;

}

void task3(String resultof2) {
  String result = 'task 3';
  print('Task 3 done $resultof2');
}