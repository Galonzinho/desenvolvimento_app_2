
class Aluno {

  final String nome;
  final String email;
  final int idade;

  Aluno(
      this.nome,
      this.email,
      this.idade
      );

  @override
  String toString() {
    return "Aluno{Nome: $nome, E-mail: $email, Idade: $idade}";
  }
}