class ResponseApi<G, E>{
  G? data;
  E? error;
  int statusCode;

  ResponseApi({this.data,this.error, required this.statusCode});

}