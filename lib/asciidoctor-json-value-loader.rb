require 'asciidoctor'
require 'json'
require 'uri'

class JsonValueLoadInlineMacro < Asciidoctor::Extensions::InlineMacroProcessor
  use_dsl

  named "json-value"
  name_positional_attributes 'volnum'

  def process parent, target, attrs

    path, query = target.split(':')

    query = query.split('.').map do |q|
      decoded = URI.decode_www_form_component(q)
      if decoded.match(/^\d+$/) then
        decoded.to_i
      else
        decoded
      end
    end

    json = JSON.parse(File.open(path, 'r:utf-8', &:read))

    content = json.dig(*query)

    content = case content
    when String
      content
    when Numeric
      content.to_s
    else
      JSON.generate(content)
    end

    create_inline_pass parent, content, attributes: { 'subs' => :normal } 
  end
end

Asciidoctor::Extensions.register do
  inline_macro JsonValueLoadInlineMacro
end 
