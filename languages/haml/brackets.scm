("(" @open
  ")" @close)

("[" @open
  "]" @close)

; Ruby attribute hashes are handled by the injected Ruby grammar.
("{" @open
  "}" @close)

(("\"" @open
  "\"" @close)
  (#set! rainbow.exclude))

(("'" @open
  "'" @close)
  (#set! rainbow.exclude))
