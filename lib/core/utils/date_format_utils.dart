import 'package:intl/intl.dart';

class DateFormatUtils {
  // Retorna a data no formato "dd de mês por extenso de yyyy"
  static String formatDateExtended(DateTime date) {
    String day = DateFormat.d().format(date); // Dia do mês em formato numérico
    String month = DateFormat.MMMM().format(date); // Mês por extenso
    String year = DateFormat.y().format(date); // Ano com quatro dígitos

    String monthPT = _getNameMonthPTBR(month);

    return '$day de $monthPT de $year';
  }

  // Retorna a data no formato "dd/MM/yy"
  static String formatDateShort(DateTime date) {
    return DateFormat('dd/MM/yy').format(date);
  }
}

String _getNameMonthPTBR(String month) {
  switch (month) {
    case 'January':
      return 'Janeiro';
    case 'February':
      return 'Fevereiro';
    case 'March':
      return 'Março';
    case 'April':
      return 'Abril';
    case 'May':
      return 'Maio';
    case 'June':
      return 'Junho';
    case 'July':
      return 'Julho';
    case 'August':
      return 'Agosto';
    case 'September':
      return 'Setembro';
    case 'October':
      return 'Outubro';
    case 'November':
      return 'Novembro';
    case 'December':
      return 'Dezembro';
    default:
      return '';
  }
}
