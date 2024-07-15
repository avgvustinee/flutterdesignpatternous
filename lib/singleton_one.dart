class SingletonOne{
  // singleton instance and should be a private variable
  static SingletonOne? _instance;
  // privatized constructor
  SingletonOne._internal(){
    print("Private Constructor ");
  }

  static SingletonOne getInstance(){
    //if (_instance == null){
      //_instance = SingletonOne._internal();
    //}
    _instance ??= SingletonOne._internal();
    return _instance!;
  }
}

SingletonOne singleton1 = SingletonOne.getInstance();

