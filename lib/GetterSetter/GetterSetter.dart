
class GetterSetter {

  /*Make Private*/
  late int _paramInt;
  late String _paramString;

  /*Outside class(es) should Set data through either constructor or setter.*/
  /*Outside class(es) should Get data through getter.*/
  /*Get and Set make either public or private as per requirement.*/
  /*Within the class can use internal self parameters for set and get but not for outside class(es).*/
  int get getParamInt => _paramInt;
  set setParamInt(int int) => _paramInt = int;

  String get getParamString => _paramString;
  set setParamString(String string) => _paramString = string;

  GetterSetter(this._paramInt, this._paramString);

  @override
  String toString() => '$getParamInt$getParamString';
}