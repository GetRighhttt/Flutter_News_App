import 'package:dio/dio.dart';

/*
Network state class
 */

abstract class DataState<T>{
  final T ? data;
  final DioError ? error;
  final T ? loading;

  const DataState({this.data, this.error, this.loading});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}

class DataLoading<T> extends DataState<T> {
  const DataLoading(T loading) : super(loading: loading);
}