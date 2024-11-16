class Produtos {
  final String nome;
  final String valor;
  final String foto;
  final String desc;
  final List<Comentario> comentarios;

  Produtos({
    required this.nome,
    required this.valor,
    required this.foto,
    required this.desc,
    required this.comentarios,
  });
}

class Comentario {
  final String nome;
  final String desc;
  final int rating;

  Comentario({
    required this.nome,
    required this.desc,
    required this.rating,
  });
}