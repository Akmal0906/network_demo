class User{


  late String name;
  late String salary;
  late int age;
  late int id;
  User({required this.name,required this.salary,required this.age,required this.id});
  User.fromJson(Map<String,dynamic> json):
        name=json['name'],
        id=json['id'],
        salary=json['salary'],
        age=json['age'];


  Map<String,dynamic> toJson()=>{
  'age':age,
    'id':id,
  'name':name,
  'salary':salary,

  };

}