import 'package:prepend_http/prepend_http.dart';
import 'package:test/test.dart';

void main() {
  group('full package tests', () {
    test('prepend http', () {
  	    expect(prependHttp('example.com', https: false), 'http://example.com');
    	expect(prependHttp('http://example.com', https: false), 'http://example.com');
    	expect(prependHttp('https://example.com', https: false), 'https://example.com');
    	expect(prependHttp('//example.com', https: false), '//example.com');
    	expect(prependHttp('localhost', https: false), 'http://localhost');
    	expect(prependHttp('localhost:8000', https: false), 'http://localhost:8000');
    	expect(prependHttp('localhost:8000  ', https: false), 'http://localhost:8000');
    	expect(prependHttp('./relative'), './relative');
    	expect(prependHttp('../relative'), '../relative');
    	expect(prependHttp('/relative'), '/relative');
    	expect(prependHttp('mailto:info@site.com'), 'mailto:info@site.com');
    	expect(prependHttp('tel:1234567890'), 'tel:1234567890');
    });
    test('https option', () {
        expect(prependHttp('example.com', https: true), 'https://example.com');
    	expect(prependHttp('//example.com', https: true), '//example.com');
    	expect(prependHttp('localhost:8000', https: true), 'https://localhost:8000');
    });
  });
}
