#!/bin/sh
echo '{"greet": "hi"}\n{"greet": "hello"}' | ndjson-format '${this.greet}!' | koopashell equal 'hi!\nhello!\n'
echo '[1,2,3]\n[3,4,0]' | ndjson-format 'v${ this.join(".") }' | koopashell equal 'v1.2.3\nv3.4.0\n'