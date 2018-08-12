# A handlebar.js wrapper in **DART**

This is an handlebars.js wrapper for the **DART** developer. Sometime you might need to inject HTML template into the slot of the your web layout without using angular framework. The handlebars.js is a pretty neat template engine, fast, efficient and easy-syntax. There is just no  reason not to use it.

## How to use it in DART


### here is the template

```html

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

```

### here is the context data contract

```dart

class Context{
  List<Blog> blogs;
  Context(this.blogs);
}

class Blog {
  String title;
  String body;
  Blog(this.title, this.body);
}

```

### here is how handlebars is used to compile the template

```dart

    import 'dart:html';
    import 'package:handlebars.js/handlebars.dart' as Handlebars;

    List<Blog> blogs = <Blog>[
        Blog('Science','Science Blogs'),
        Blog('Technology', 'Technology Blogs'),
        Blog('Engineering', 'Engineering Blogs'),
        Blog('Art','Art Blogs'),
        Blog('Maths', 'Maths Blog'),
    ];

    final container = document.querySelector('.container');
    final String content = Handlebars.compile(html)(Context(blogs));
    container.innerHtml = content;

```

**Note** that you have to create context contract to be able to pass blogs to the html template. 
You don't need to do that. you can pass in Map literal object but you have to use package js to wrap around the map literal object as shown below

```dart

    //you have to import this library
    import 'dart:js_util' as js;
    ...
    final String content = Handlebars.compile(html)(js.jsify({
        'blogs': blogs
    }));
    ...    

```

Here is the result on the web page

![Template Result](/images/screen-shot.png)