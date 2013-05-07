//Auto-generated by RSP Compiler
//Source: example/hello-mvc/listView.rsp.html
part of hello_mvc;

/** Template, listView, for rendering the view. */
Future listView(HttpConnect connect, {String path, List<FileInfo> infos}) { //#2
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = ContentType.parse("""text/html; charset=utf-8""");

  response.write("""

<!DOCTYPE html>
<html>
  <head>
    <title>Stream: Hello MVC</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <h1>Directory: """); //#2

  response.write($nns(path)); //#10


  response.write("""
</h1>

    <table border="1px" cellspacing="0">
      <tr>
        <th>Type</th>
        <th>Name</th>
      </tr>
"""); //#10

  for (var info in infos) { //for#17

    response.write("""

      <tr>
        <td><img src=\""""); //#17

    response.write($nns(info.isDirectory ? 'file.png': 'directory.png')); //#19


    response.write("""
"/></td>
        <td>"""); //#19

    response.write($nns(info.name)); //#20


    response.write("""
</td>
      </tr>
"""); //#20
  } //for

  response.write("""

    </table>

    <ul>
      <li>Please refer to
  <a href="https://github.com/rikulo/stream/tree/master/example/hello-mvc">Github</a> for how it is implemented.</a></li></ul>
  </body>
</html>
"""); //#22

  return $nnf();
}
