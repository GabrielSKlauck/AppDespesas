class Utilitarios{
  static String refactorDate(String date){
    final String ano = date.substring(0,4);
    final String mes = date.substring(5,7);
    final String dia = date.substring(8,10);
    return "${dia}-${mes}-${ano}";
  }
}