class SingletonTwo{
  // singleton instance and should be a private variable
  static SingletonTwo? _instance;
  // privatized constructor
  SingletonTwo._internal(){
    print("Private Constructor ");
  }

  static get instance {
    //if (_instance == null){
    //_instance = SingletonOne._internal();
    //}
    _instance ??= SingletonTwo._internal();
    return _instance!;
  }
}


