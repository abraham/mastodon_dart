// Openapi Generator last run: : 2026-08-19T11:18:23.296220
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'mastodon',
    pubDescription:
        'Mastodon API client generated from the unofficial OpenAPI specification.',
    pubHomepage: 'https://github.com/abraham/mastodon-dart',
    pubVersion: '1.0.0-beta.20',
    pubAuthor: 'Abraham Williams',
    serializationLibrary: DioSerializationLibrary.jsonSerializable,
  ),
  inputSpec: InputSpec(path: 'mastodon_openapi.json'),
  apiPackage: 'mastodon',
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  nameMappings: {'update': 'edit'},
  typeMappings: {'null': 'Object', 'string+uri': 'Uri'},
  importMappings: {
    'Uri': 'dart:core',
    'CreateStatus200Response':
        'package:mastodon/create_status200_response.dart',
    'CreateStatusRequest': 'package:mastodon/create_status_request.dart',
  },
  outputDirectory: '../mastodon',
  cleanSubOutputDirectory: ['lib/src', 'doc', 'test'],
  // debugLogging: true,
)
class MastodonClient {}
