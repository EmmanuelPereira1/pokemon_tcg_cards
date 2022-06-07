class Resource<S, F> {
  S? data;
  F? error;
  Status status;

  bool get hasError => error != null;

  Resource.loading({this.data, this.error, this.status = Status.loading});
  Resource.success({this.data, this.error, this.status = Status.success});
  Resource.failed({this.data, this.error, this.status = Status.failed});
}

enum Status { loading, failed, success }