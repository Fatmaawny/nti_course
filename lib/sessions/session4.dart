// class Student{
//   String name="fatma";
//   String id='1004';
//   void getName( ){
//     print(name);
//   }
//   void getId(){
//     print(id);
//   }
// }
//
// class Shape{
//   String? color;
//   double? area;
//   double? perimeter;
// }
// class circle extends Shape {
//   double? radius;
// }
// class Rectangle extends Shape{}
// class Triangle extends Shape{}
// class Square extends Shape{}
//
// //mixin with classes
//
//
// class Payment{
//   double? amount;
// }
// class Cash extends Payment{
//   double? cashTendered;
// }
// class Check extends Payment{
//   String? name;
//   String? bankId;
//   void authorized(){}
// }
// mixin OrderDetail{
//   int? quantity;
//   String? taxStatus;
//
//   void calcSubTotal(){}
//   void calcWeight(){}
//   void calcTax(){}
// }
// mixin OrderCheckout{
//   int? location;
//   String? deliveryFee;
// }
// class Credit extends Payment with OrderDetail,OrderCheckout{}

//task
class NumberOfObjects {
  static int _numberOfObject = 0;
  NumberOfObjects() {
    _numberOfObject++;
  }
  static int get numberOfObjects => _numberOfObject;
}

void main() {
  Dog bobby = Dog();
  bobby.park();
  bobby.walk();
  // NumberOfObjects obj1 = NumberOfObjects();
  // NumberOfObjects obj2 = NumberOfObjects();
  // NumberOfObjects obj3 = NumberOfObjects();
  // print (NumberOfObjects.numberOfObjects);
}

//1 class extend 1 , mixin with 2 -> //walk//how how
//multiple inheritance
class Animal {}

class Dog extends Animal with Move {}

mixin Move {
  park() {
    print("dog park");
  }

  walk() {
    print("dog walk");
  }
}
