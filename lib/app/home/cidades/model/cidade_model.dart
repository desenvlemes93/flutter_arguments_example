import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class CidadeModel {
  final String cidade;
  final String estado;
  CidadeModel({
    required this.cidade,
    required this.estado,
  });

  factory CidadeModel.fromMap(Map<String, dynamic> json) {
    return switch (json) {
      {
        'cidade': final String cidade,
        'estado': final String estado,
      } =>
        CidadeModel(
          cidade: cidade,
          estado: estado,
        ),
      _ => throw ArgumentError('invalid Json'),
    };
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidade': cidade,
      'estado': estado,
    };
  }

  String toJson() => json.encode(toMap());

  factory CidadeModel.fromJson(String source) => CidadeModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

      
  @override
  String toString() => 'CidadeModel(cidade: $cidade, estado: $estado)';
}
