
class AppConfigs {
  AppConfigs._();

  static const String appName = "shoppe";

  static const String fontFamily = "Poppins";

  ///Paging
  static const pageSize = 40;
  static const pageSizeMax = 1000;


  ///DateFormat

  static const dateDisplayFormat = 'dd/MM/yyyy';
  static const dateTimeDisplayFormat = 'dd/MM/yyyy HH:mm';

  static const dateTimeAPIFormat =
      "YYYY-MM-DDThh:mm:ssTZD"; //Use DateTime.parse(date) instead of ...
  static const dateAPIFormat = 'dd/MM/yyyy';

  ///Date range
  static final identityMinDate = DateTime(1900, 1, 1);
  static final identityMaxDate = DateTime.now();
  static final birthMinDate = DateTime(1900, 1, 1);
  static final birthMaxDate = DateTime.now();

  ///Max file
  static const maxAttachFile = 5;

  static const scrollThreshold = 500.0;
}

class FirebaseConfig {
  //Todo
}

class DatabaseConfig {
  //Todo
  static const int version = 1;
}


