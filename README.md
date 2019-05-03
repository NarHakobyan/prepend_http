> Prepend `https://` to humanized URLs like `example.com` and `localhost`.
> Inspired from [sindresorhus](https://github.com/sindresorhus/prepend-http)

## Install

```
$ npm install prepend_http
```


## Usage

```dart
import 'package:prepend_http/prepend_http.dart';

main() {
  prependHttp('localhost', https: false);
  //=> 'http://localhost'
  prependHttp('example.com');
  //=> 'https://example.com'
  prependHttp('https://example.com');
  //=> 'https://example.com'
}
```

## API

### prependHttp(url, [options])

#### url

Type: `String`

URL to prepend `https://` to.

#### https

Type: `boolean`<br>
Default: `true`

Prepend `https://` instead of `http://`.


## License

MIT ©
