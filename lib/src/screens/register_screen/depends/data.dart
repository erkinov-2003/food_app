List<Map<String,Object?>> database=[{"name":"yunusov@gmail.com","password":"food_app_password"}];

class Account{
  String name;
  String password;
  Account({required this.name, required this.password}){
    Map<String,Object?> map={"name":this.name, "password":this.password};
    database.add(map);
}
}