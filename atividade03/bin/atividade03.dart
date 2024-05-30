class Livro {
  String _titulo;
  String _autor;
  String _isbn;
  bool _emprestado;

  // Construtores
  Livro(this._titulo, this._autor, this._isbn): _emprestado = false;
  
  // Getters
  String get titulo => _titulo;
  String get autor => _autor;
  String get isbn => _isbn;
  bool get emprestado => _emprestado;

  // Funções
  void emprestar() {
    _emprestado = true;
    estado();
  }
  
  void devolver() {
    _emprestado = false;
    estado();
  }

  void estado(){
    if (emprestado == false) {
    print('O $_titulo de $_autor (ISBN $_isbn) está disponível para empréstimo!');
  } else {
    print('O $_titulo de $_autor (ISBN $_isbn) não está disponível para empréstimo!');
  }
  }
}

void main () {

  Livro livro1 = Livro("Percy Jackson e o Ladrão de Raios", "Rick Riordan", "9786555606539");
  print("Emprestando livro...");
  livro1.emprestar();
  print("Devolvendo livro...");
  livro1.devolver();
}