function FindProxyForURL(url, host) {
    // If on localhost or *.dev site, don't proxy
    if (
            (host == "localhost")
         || (host == "l")
         || (host == "127.0.0.1")
         || (host == "172.27.72.27")
         || (shExpMatch(host, "10.*"))
         || (shExpMatch(host, "192.*"))
         || (shExpMatch(host, "*.dev"))
       )
    {
        return "DIRECT";
    }
    return "SOCKS5 127.0.0.1:8527";
}
