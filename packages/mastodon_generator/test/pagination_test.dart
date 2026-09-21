import 'package:dio/dio.dart';
import 'package:mastodon/mastodon.dart';
import 'package:test/test.dart';

void main() {
  group('PaginationLinks', () {
    test('parses Mastodon next and previous links', () {
      final pagination = PaginationLinks.parse(
        '<https://mastodon.example/api/v1/endpoint?max_id=7163058>; '
        'rel="next", '
        '<https://mastodon.example/api/v1/endpoint?min_id=7275607>; '
        'rel="prev"',
      );

      expect(
        pagination.next?.uri,
        Uri.parse('https://mastodon.example/api/v1/endpoint?max_id=7163058'),
      );
      expect(
        pagination.previous?.uri,
        Uri.parse('https://mastodon.example/api/v1/endpoint?min_id=7275607'),
      );
      expect(pagination.next?.maxId, '7163058');
      expect(pagination.previous?.minId, '7275607');
      expect(pagination.prev?.uri, pagination.previous?.uri);
    });

    test('handles multiple fields and quoted delimiters', () {
      final pagination = PaginationLinks.fromHeaderValues(<String>[
        '<https://mastodon.example/items?cursor=a,b>; '
            'title="commas, and; semicolons"; rel="next alternate"',
        '<https://mastodon.example/items?cursor=z>; rel=prev',
      ]);

      expect(pagination['next'], <Uri>[
        Uri.parse('https://mastodon.example/items?cursor=a,b'),
      ]);
      expect(pagination['alternate'], pagination['next']);
      expect(
        pagination.previous?.uri,
        Uri.parse('https://mastodon.example/items?cursor=z'),
      );
    });

    test('ignores malformed or unrelated link values', () {
      final pagination = PaginationLinks.parse(
        'not-a-link, <https://mastodon.example/without-relation>',
      );

      expect(pagination, same(PaginationLinks.empty));
    });
  });

  test('Response pagination reads all Link header values', () {
    final response = Response<void>(
      headers: Headers.fromMap(<String, List<String>>{
        'Link': <String>[
          '<https://mastodon.example/items?max_id=2>; rel="next"',
          '<https://mastodon.example/items?min_id=3>; rel="PREV"',
        ],
      }),
      requestOptions: RequestOptions(path: '/items'),
    );

    expect(
      response.pagination.next?.uri,
      Uri.parse('https://mastodon.example/items?max_id=2'),
    );
    expect(
      response.pagination.previous?.uri,
      Uri.parse('https://mastodon.example/items?min_id=3'),
    );
  });
}
