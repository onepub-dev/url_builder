// ignore_for_file: always_put_control_body_on_new_line

/// Join parts of a url path into a url
///
/// Typically part1 will be a http://xxx type prefix
/// and part2-part(n) are paths to be appended to the part1
/// When concatenating parts the '/' separator will be stripped or
/// added as necessary to unsure there is just one '/' between parts.
String urlJoin(String part1, String part2,
    [String? part3,
    String? part4,
    String? part5,
    String? part6,
    String? part7,
    String? part8,
    String? part9]) {
  var endpoint = _urlStrip(part1);

  endpoint = _urlJoin2(endpoint, part2);
  if (part3 != null) endpoint = _urlJoin2(endpoint, part3);
  if (part4 != null) endpoint = _urlJoin2(endpoint, part4);
  if (part5 != null) endpoint = _urlJoin2(endpoint, part5);
  if (part6 != null) endpoint = _urlJoin2(endpoint, part6);
  if (part7 != null) endpoint = _urlJoin2(endpoint, part7);
  if (part8 != null) endpoint = _urlJoin2(endpoint, part8);
  if (part9 != null) endpoint = _urlJoin2(endpoint, part9);
  return endpoint;
}

String _urlJoin2(String part1, String part2) =>
    '${_urlStrip(part1)}/${_urlStrip(part2)}';

String _urlStrip(String part1) {
  String endpoint;
  if (part1.startsWith('/')) {
    endpoint = part1.substring(1);
  } else {
    endpoint = part1;
  }
  if (endpoint.endsWith('/')) {
    endpoint = endpoint.substring(0, endpoint.length - 1);
  }
  return endpoint;
}
