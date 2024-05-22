import '../entities/user_entity.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUser(
      {required this.userId,
      required this.email,
      required this.name,
      required this.hasActiveCart});
  static final empty =
      MyUser(userId: "", email: "", name: "", hasActiveCart: false);

  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart,
    );
  }

  static MyUser fromEntity(MyUserEntity userEntity) {
    return MyUser(
        userId: userEntity.userId,
        email: userEntity.email,
        name: userEntity.name,
        hasActiveCart: userEntity.hasActiveCart);
  }

  @override
  String toString() {
    return 'MyUser : $userId, $email, $name, $hasActiveCart';
  }
}
