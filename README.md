# mastodon

Mastodon API Dart client generated from [mastodon-openapi](https://github.com/abraham/mastodon-openapi).

## Status

`mastodon` is well tested in [Meowstodon](https://abraham.social/@meow) but is subject to breaking changes.

## Packages

- [mastodon](./packages/mastodon/README.md): The main package.
- [mastodon_generator](./packages/mastodon_generator/README.md): The generator for building the API client from the OpenAPI spec.

## Release

1. Run the [update](https://github.com/abraham/mastodon_dart/actions/workflows/update.yml) action and merge the resulting PR.
2. Run the [version bump](https://github.com/abraham/mastodon_dart/actions/workflows/release.yml) action.
3. Edit the `packages/mastodon/CHANGELOG.md` file with the changes in the version bump branch and merge.
4. Run the [tag](https://github.com/abraham/mastodon_dart/actions/workflows/tag.yml) action to publish to pub.dev.
