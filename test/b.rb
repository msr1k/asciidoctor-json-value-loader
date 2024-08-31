require 'asciidoctor'
# require 'asciidoctor-json-value-loader'
require_relative '../lib/asciidoctor-json-value-loader'

Asciidoctor.convert_file 'b/b.adoc', safe: :safe

