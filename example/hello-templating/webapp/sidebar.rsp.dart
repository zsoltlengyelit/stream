//Auto-generated by RSP Compiler
//Source: example/hello-templating/sidebar.rsp.html
part of hello_templating;

/** Template, sidebar, for rendering the view. */
Future sidebar(HttpConnect connect) { //#2
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = ContentType.parse("""text/html; charset=utf-8""");

  response.write("""
<ul>
  <li>This is a sidebar.</li>
  <li>"""); //#2

  response.write($nns(new DateTime.now())); //#4


  response.write("""
</li>
</ul>
"""); //#4

  return $nnf();
}
