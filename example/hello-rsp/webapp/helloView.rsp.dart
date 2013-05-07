//Auto-generated by RSP Compiler
//Source: example/hello-rsp/helloView.rsp.html
part of hello_rsp;

/** Template, helloView, for rendering the view. */
Future helloView(HttpConnect connect) { //#2
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = ContentType.parse("""text/html; charset=utf-8""");

  response.write("""

<!DOCTYPE html>
<html>
  <head>
    <title>Stream: Hello RSP</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <h1>Stream: Hello RSP</h1>
    <p>Now is """); //#2

  response.write($nns(new DateTime.now())); //#11


  response.write("""
.</p>
    <p>This page is served by Rikulo Stream """); //#11

  response.write($nns(connect.server.version)); //#12


  response.write("""
.</p>
    <p>Please refer to
  <a href="https://github.com/rikulo/stream/tree/master/example/hello-rsp">Github</a> for how it is implemented.</a>
  </body>
</html>
"""); //#12

  return $nnf();
}
