(tag_name) @tag

(doctype) @tag.doctype

(attribute_name) @attribute

(inline_ruby_block
  [
    "="
    "!="
    "&="
    "~"
  ] @keyword)

(ruby_block_run
  "-" @keyword)

(ruby_block_output
  "=" @keyword)

(ruby_block_output_nuke
  "!=" @keyword)

(ruby_block_sanitized
  "&=" @keyword)

(ruby_block_preserve
  "~" @keyword)

(class) @property

(id) @property

(quoted_attribute_value) @string

(verbatim_string) @string

(comment) @comment

(filter_name) @function

(ruby_constant) @constant

(ruby_local_variable) @variable

[
  (ruby_class_variable)
  (ruby_global_variable)
  (ruby_instance_variable)
] @variable.special

(object_prefix) @string.special.symbol

(ruby_interpolation) @embedded

[
  (nuke_inner_whitespace)
  (nuke_outer_whitespace)
  (self_close_slash)
] @punctuation.special

(attribute
  "=" @punctuation.delimiter)

(object_reference
  "," @punctuation.delimiter)

(filter
  ":" @punctuation.delimiter)

(escaped_text
  "\\" @string.escape)

(html_attributes
  [
    "("
    ")"
  ] @punctuation.bracket)

(object_reference
  [
    "["
    "]"
  ] @punctuation.bracket)

(ruby_expression
  [
    "{"
    "}"
  ] @punctuation.bracket)
