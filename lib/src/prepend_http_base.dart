// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
String prependHttp(String url, {bool https = true}) {
    url = url.trim();

    if (RegExp('^\.*\/|^(?!localhost)\w+:').hasMatch(url)) {
		return url;
	}

    if(url.startsWith(RegExp('https?://')) || url.startsWith('mailto:') || url.startsWith('tel:')) {
        return url;
    }

    return url.replaceAll(RegExp('^(?!(?:\w+:)?\/\/)'), https ? 'https://' : 'http://');
}
