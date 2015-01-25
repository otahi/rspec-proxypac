function FindProxyForURL(url, host) {
    if(shExpMatch ( url, "*example.org*")) return "DIRECT";
    return "PROXY proxy.example.org:3128";
}
