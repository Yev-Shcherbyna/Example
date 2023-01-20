import 'package:equatable/equatable.dart';

class Phone extends Equatable {

  final String name;

  const Phone({required this.name});

  @override
  List<Object?> get props => [name];

}