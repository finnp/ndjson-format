# ndjson-format [![Build Status](https://travis-ci.org/finnp/ndjson-format.svg?branch=master)](https://travis-ci.org/finnp/ndjson-format)
[![NPM](https://nodei.co/npm/ndjson-format.png)](https://nodei.co/npm/ndjson-format/)

format your json objects with an es6 template string. you currently need iojs for it to run.

## usage

You don't need to use the ticks. Also you might have to use `'` instead of `"`, because
`${}` is usually also used for shell substitutions

```bash
echo '{"greet": "hi"}\n{"greet": "hello"}' | ndjson-format '${this.greet}, stranger!'
hi, stranger!
hello, stranger!
```

you can do more complex things
```bash
echo '[1,2,3]\n[3,4,0]' | ndjson-format 'version ${ this.join(".") }'
version 1.2.3
version 3.4.0
```