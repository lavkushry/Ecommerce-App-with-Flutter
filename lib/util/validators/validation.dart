class TValidaotr {
  static String? validateEmail(String? value) {
    if( value== null || value.isEmpty){
      return "Email is required";
    }

    // Regular Expression for Email Validation
    final emailRegExp= RegExp(r'6[\w-\.]+@([\w-]\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return "Invalid email address.";
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if(value==null || value.isEmpty)
      {
        return 'Password is required';
      }
    //Check the Password Length
    if(value.length<6) {
      return 'Password Must be at Least 6 character long.' ;
    }

    //Check for UpperCase letter
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password Must Contain at least one Upper letter';
    }

    //Check for Numbers
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password Must Contain at least one Number';
    }

    //Check for Special Character
    if(!value.contains(RegExp(r'[~`! @#$%^&*()-_+={}[]|\;:"<>,./?]'))){
      return 'Password Must Contain at least one Special Character';
    }
    return null;
  }

    static String? validatePhoneNumber(String? value)
    {
      if(value==null || value.isEmpty){
        return "Phone No is requird";
      }

      //Regular Expression for Phone Number validation (Assuming a 10 Digit US Phone Number Format)
      final phoneRegExp=RegExp(r'^\d{10}$');

      if(!phoneRegExp.hasMatch(value)){
        return 'Invalid Phone Number Format (10 digit Required';
      }

      return null;
    }

}