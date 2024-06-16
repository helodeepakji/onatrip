import 'package:form_field_validator/form_field_validator.dart';

class Validators {
  Validators._();

  static final emailValidator = MultiValidator([
    EmailValidator(errorText: "Invalid Email"),
    RequiredValidator(errorText: "This Field is required"),
  ]);

  static final requiredValidator = MultiValidator([
    RequiredValidator(errorText: "This field is Required"),
  ]);
}