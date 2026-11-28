import 'package:dio/dio.dart';
import 'package:mastodon/mastodon.dart';
import 'package:test/test.dart';

void main() {
  late Dio dio;

  setUp(() {
    dio = Dio(BaseOptions(baseUrl: 'https://mastodon.example'));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          handler.resolve(Response<Object>(requestOptions: options));
        },
      ),
    );
  });

  test('encodes a tag name as a single path segment', () async {
    final response = await TagsApi(dio).getTag(name: 'hello /?#%é');
    final uri = response.requestOptions.uri;

    expect(
      uri.toString(),
      'https://mastodon.example/api/v1/tags/hello%20%2F%3F%23%25%C3%A9',
    );
    expect(uri.pathSegments, ['api', 'v1', 'tags', 'hello /?#%é']);
    expect(uri.hasQuery, isFalse);
    expect(uri.hasFragment, isFalse);
  });

  test('encodes each parameter in a multi-parameter path', () async {
    final response = await CollectionsApi(
      dio,
    ).deleteCollectionItem(collectionId: 'group/{id}', id: 'user/name?x=1');

    expect(response.requestOptions.uri.pathSegments, [
      'api',
      'v1',
      'collections',
      'group/{id}',
      'items',
      'user/name?x=1',
    ]);
    expect(response.requestOptions.uri.hasQuery, isFalse);
  });
}
