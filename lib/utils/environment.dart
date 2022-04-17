class Environment {
  static const APP_ENV = String.fromEnvironment('APP_ENV');
  static const HASURA_URL = String.fromEnvironment('HASURA_URL');
  static const HASURA_SECRET = String.fromEnvironment('HASURA_SECRET');
  static const TWO_FACTOR_KEY = String.fromEnvironment('TWO_FACTOR_KEY');
  static const TWO_FACTOR_URL =
      "https://2factor.in/API/V1/$TWO_FACTOR_KEY/SMS/";
  static const TWO_FACTOR_VERIFY_URL =
      "https://2factor.in/API/V1/$TWO_FACTOR_KEY/SMS/VERIFY/";
}
