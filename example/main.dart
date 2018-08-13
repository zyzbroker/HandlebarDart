import 'dart:html';

import 'package:handlebars/handlebars.dart' as Handlebars;

void main(){
  var container = document.querySelector('.container');
  
  String html = '''
    {{#each blogs}}
      <div class="entry">
        <h1>{{title}}</h1>
        <div class="body">
          {{body}}
        </div>
      </div>
    {{/each}}
  ''';

  List<Blog> blogs = <Blog>[
    Blog('Science','Science Blogs'),
    Blog('Technology', 'Technology Blogs'),
    Blog('Engineering', 'Engineering Blogs'),
    Blog('Art','Art Blogs'),
    Blog('Maths', 'Maths Blog'),
  ];
  
  final String content = Handlebars.compile(html)(Context(blogs));
  container.innerHtml = content;
}

class Context{
  List<Blog> blogs;
  Context(this.blogs);
}

class Blog {
  String title;
  String body;
  Blog(this.title, this.body);
}