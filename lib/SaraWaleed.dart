import 'dart:io';

main() {
  // Q1
  List myList = [8, 12, 18, 20, 24, 26, 30];
  for (int x = 3; x < myList.length; x++) {
    print(myList[x]);
  }
  print("...............................................");

  //*********** Q2
  List s1 = [10, 20, 30, 40, 50, 55, 65, 75];
  List s2 = [20, 25, 35, 65, 50, 55, 75, 80];
  Set mySet = {};
  //mySet.addAll(s1);
  //mySet.addAll(s2);
  mySet.addAll(s1 + s2);
  print(mySet);

  print("...............................................");

  //Q3
  C1 obj = C1();
  obj.latitude = '180';
  obj.longitude = '110';
  obj.printData();

  print("...............................................");

  //  Q4
  fun();

  print("...............................................");

  // Another Solution For Q4
  List myList2 = [
    "email@email",
    "emailemail@",
    "email@email.com",
    "email.com@email"
  ];
  for (var x = 0; x < myList2.length; x++) {
    String mail = "email@email.com";
    print(" ${myList2[x]} :");
    if (myList2[x] == mail) {
      print("This Email Is Valid");
    } else {
      print("This Email Is Not Valid");
    }
  }
}

void fun() {
  print("Enter an Available Email.");
  String? mail = stdin.readLineSync();
  String x = 'email@email.com';
  if (x == mail) {
    print("This Email Is Valid");
  } else {
    print("This Email Is Not Valid");
  }
}

class C1 extends C2 {
  @override
  printData() {
    print("latitude Is $latitude");
    print("longitude Is $longitude");
    // TODO: implement printData
  }
}

abstract class C2 {
  String latitude = '';
  String longitude = '';

  printData();
}
