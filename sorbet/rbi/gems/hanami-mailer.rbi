# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/hanami-mailer/all/hanami-mailer.rbi
#
# hanami-mailer-1.3.1
module Hanami
end
module Hanami::Mailer
  def __dsl(method_name); end
  def __part(format); end
  def __part?(format); end
  def build; end
  def charset; end
  def deliver; end
  def initialize(locals = nil); end
  def mail; end
  def method_missing(method_name); end
  def prepare; end
  def render(format); end
  def respond_to_missing?(method_name, _include_all); end
  def self.configuration; end
  def self.configuration=(arg0); end
  def self.configure(&blk); end
  def self.deliveries; end
  def self.included(base); end
  def self.load!; end
  extend Hanami::Utils::ClassAttribute::ClassMethods
  include Hanami::Utils::ClassAttribute
end
class Hanami::Mailer::Configuration
  def add_mailer(mailer); end
  def copy!(base); end
  def default_charset(value = nil); end
  def default_charset=(arg0); end
  def delivery_method(method = nil, options = nil); end
  def delivery_method=(arg0); end
  def duplicate; end
  def initialize; end
  def load!; end
  def mailers; end
  def modules; end
  def modules=(arg0); end
  def namespace(value = nil); end
  def namespace=(arg0); end
  def prepare(&blk); end
  def reset!; end
  def root(value = nil); end
  def root=(arg0); end
  def unload!; end
end
module Hanami::Mailer::Rendering
end
class Hanami::Mailer::Rendering::TemplateName
  def compile!(namespace); end
  def initialize(name, namespace); end
  def replace!(token); end
  def to_s; end
  def tokens(namespace); end
end
class Hanami::Mailer::Template
  def file; end
  def initialize(template); end
  def render(scope = nil, locals = nil); end
end
class Hanami::Mailer::Rendering::TemplatesFinder
  def _find(lookup = nil); end
  def engines; end
  def find; end
  def format; end
  def initialize(mailer); end
  def recursive; end
  def root; end
  def search_path; end
  def separator; end
  def template_name; end
end
module Hanami::Mailer::Dsl
  def bcc(value = nil); end
  def cc(value = nil); end
  def from(value = nil); end
  def load!; end
  def reply_to(value = nil); end
  def self.extended(base); end
  def subject(value = nil); end
  def template(value = nil); end
  def templates(format = nil); end
  def to(value = nil); end
end
class Hanami::Mailer::Error < StandardError
end
class Hanami::Mailer::MissingDeliveryDataError < Hanami::Mailer::Error
  def initialize; end
end
module Hanami::Mailer::ClassMethods
  def deliver(locals = nil); end
end
