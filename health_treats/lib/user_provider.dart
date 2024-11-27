import 'package:flutter/cupertino.dart';
import 'package:health_treats/user.dart';

// ignore: must_be_immutable
class UserProvider extends InheritedWidget{
  @override
  // ignore: overridden_fields
  final Widget child;
  List<Usuario> users = [];

  UserProvider(
    {super.key, 
      required this.child, 
    }
  ) : super(child: child);

  static UserProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<UserProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}