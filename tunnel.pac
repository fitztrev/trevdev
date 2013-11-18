function FindProxyForURL(url, host) {
	// If on a *.dev site, don't proxy
	if ( shExpMatch(host, "*.dev") ) {
		return "DIRECT";
	}
	return "SOCKS5 127.0.0.1:8527";
}
