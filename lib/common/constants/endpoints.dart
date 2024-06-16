class Endpoints {
  Endpoints._();

  /* -------------------------------- Base URLs ------------------------------- */
  static const String baseUrl = 'https://dmfgr3y72e.ap-south-1.awsapprunner.com/api/v1';

  /* -------------------------------- Auth URL -------------------------------- */
  static const String loginUrl = '$baseUrl/auth/signIn';

  /* ------------------------------- Common URLs ------------------------------ */
  static const String getUserDetails = '$baseUrl/user/getUserDetails';
  static const String getVisitsForUser = '$baseUrl/user/getVisitsForUser';
  static const String createPharmacyVisit = '$baseUrl/user/createPharmacy';
  static const String getPharmacyDetails = '$baseUrl/user/getPharmacyDetails';
}
