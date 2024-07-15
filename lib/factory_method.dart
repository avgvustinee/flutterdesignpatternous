// DART EXAMPLE
// better code using enum
enum EmployeeType {programmer,hr, boss}
abstract class Employee {
  void work();
  // Factory Method Pattern
    /*factory Employee(EmployeeType type){
      switch(type){
        case EmployeeType.programmer:
          return Programmer();
        case EmployeeType.hr:
          return HRManager();
        case EmployeeType.boss:
          return Boss();
        default:
          return Programmer();
      }
    }*/
}

class Programmer implements Employee{
  @override
  void work(){
    print("coding an app");
  }
}

class HRManager implements Employee{
  @override
  void work(){
    print("recruiting people");
  }
}

class Boss implements Employee{
  @override
  void work(){
    print("leading the people");
  }
}

// another method
class FactoryMethod {
  // Factory Method Pattern
  static Employee getEmployee(EmployeeType type){
      switch(type){
        case EmployeeType.programmer:
          return Programmer();
        case EmployeeType.hr:
          return HRManager();
        case EmployeeType.boss:
          return Boss();
        default:
          return Programmer();
      }
    }
}