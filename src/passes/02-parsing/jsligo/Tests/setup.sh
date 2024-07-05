#!/bin/sh

#set -x

\rm -fr lsp included.jsligo includer.jsligo include single.*.jsligo
\rm -f entrypoint_in_module.jsligo type_doc.jsligo
for f in $(find -name '*.jsligo'); do cp "$f" "${f%.jsligo}.ts"; done
for f in $(find -name '*.mligo'); do rm -f $f; done
