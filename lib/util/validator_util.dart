import 'package:validators/validators.dart';

Function validateID(){
  return (String value){
    if(value.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if(value.length > 12){
      return "12자 이상은 등록될수 없습니다.";
    }else{
      return null;
    }
  };
}

Function validatePassword(){
  return (String value){
    if(value.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if(value.length > 12){
      return "12자 이상은 등록될수 없습니다.";
     } else if(value.length < 4){
      return "4자 이상은 등록하셔야 됩니다.";
    }else{
      return null;
    }
  };
}

Function validateEmail(){
  return (String value){
    if(value.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if(!isEmail(value)){
      return "이메일 형식이 아닙니다.";
    }else{
      return null;
    }
  };
}

Function validateTitle(){
  return (String value){
    if(value.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if(value.length > 30){
      return "길이를 초과했습니다.";
    }else{
      return null;
    }
  };
}

Function validateContents(){
  return (String value){
    if(value.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if(value.length > 500){
      return "길이를 초과했습니다.";
    }else{
      return null;
    }
  };
}