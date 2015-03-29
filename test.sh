#!/bin/sh
echo '{"greet": "hi"}\n{"greet": "hello"}' | ndjson-format '${this.greet}, stranger!'
echo '[1,2,3]\n[3,4,0]' | ndjson-format 'version ${ this.join(".") }'