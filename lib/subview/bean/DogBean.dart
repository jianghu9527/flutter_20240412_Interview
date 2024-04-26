



/**
 * 创建数据库对象
 */
class DogBean{
   final int id;
  final String name;
  final int age;

    const    DogBean({
    required  this.id ,
    required   this.name,
     required  this.age,
  });

 Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Dog{id: $id, name: $name, age: $age}';
  }

}