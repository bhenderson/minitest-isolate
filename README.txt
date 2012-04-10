= minitest-isolate

* https://github.com/bhenderson/minitest-isolate

== DESCRIPTION:

Run compatibility tests against multiple versions of a gem isolated in a sandbox.

== FEATURES/PROBLEMS:

* currently assumes your test task is just named 'test' with no way to change it.

== SYNOPSIS:

in Rakefile:

  require 'minitest/isolate/rake'
  isolate_task :this do
    gem 'this'
  end

  isolate_task :that do
    gem 'that'
  end

This will create three tasks for you:
* test:isolate:this # will isolate `this' gem and run your tests
* test:isolate:that # will isolate `that' gem and run your tests
* test:isolate # will run both tests

== REQUIREMENTS:

* isolate

== INSTALL:

* gem install minitest-isolate

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

(The MIT License)

Copyright (c) 2012 bhenderson

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
