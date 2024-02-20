class LoginModel{
  bool ?status;
  String ?message;
  Data ?data;
  LoginModel.fromJason(dynamic json){
    status=json['status'];
    message=json['message'];
    data=json['data']!=null?Data.fromJason(json['data']):null;
  }
}
class Data{
  int ?id;
  String ?name;
  String ?email;
  String ?phone;
  String ?token;
  Data.fromJason(dynamic json){
    id=json['id'];
    name=json['name'];
    email=json['email'];
    phone=json['phone'];
    token=json['token'];
  }
}