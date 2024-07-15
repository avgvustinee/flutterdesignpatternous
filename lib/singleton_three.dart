class SingletonThree{
  // singleton instance and should be a private variable
  static SingletonThree? _instance;
  // privatized constructor
  SingletonThree._internal(){
    print("Private Constructor ");
  }

  factory SingletonThree(){
    _instance ??= SingletonThree._internal();
    return _instance!;
  }
}


