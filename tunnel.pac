function FindProxyForURL(url, host) {
    // If on localhost or *.dev site, don't proxy
    if (
         (host == "localhost") ||
         (host == "127.0.0.1") ||
         (shExpMatch(host, "*.dev")) ||
         (shExpMatch(host, "*.intlbancard.*"))
       )
    {
        return "DIRECT";
    }
    return "SOCKS5 127.0.0.1:8527";
}
