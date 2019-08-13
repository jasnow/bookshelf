# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-container/all/dry-container.rbi
#
# dry-container-0.7.2
module Dry
end
class Dry::Container
  def config; end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  include Dry::Container::Mixin
end
class Dry::Container::Error < StandardError
end
class Dry::Container::Namespace
  def block; end
  def initialize(name, &block); end
  def name; end
end
class Dry::Container::Item
  def call; end
  def callable?; end
  def initialize(item, options = nil); end
  def item; end
  def map(func); end
  def options; end
  def value?; end
end
class Dry::Container::Item::Memoizable < Dry::Container::Item
  def call; end
  def initialize(item, options = nil); end
  def memoize_mutex; end
  def raise_not_supported_error; end
end
class Dry::Container::Item::Callable < Dry::Container::Item
  def call; end
end
class Dry::Container::Item::Factory
  def call(item, options = nil); end
end
class Dry::Container::Registry
  def call(container, key, item, options); end
  def factory; end
  def initialize; end
end
class Dry::Container::Resolver
  def call(container, key); end
  def each(container, &block); end
  def each_key(container, &block); end
  def key?(container, key); end
  def keys(container); end
end
class Dry::Container::NamespaceDSL < SimpleDelegator
  def import(namespace); end
  def initialize(container, namespace, namespace_separator, &block); end
  def namespace(namespace, &block); end
  def namespaced(key); end
  def register(key, *args, &block); end
  def resolve(key); end
end
module Dry::Container::Mixin
  def [](key); end
  def _container; end
  def clone; end
  def decorate(key, with: nil, &block); end
  def dup; end
  def each(&block); end
  def each_key(&block); end
  def freeze; end
  def import(namespace); end
  def key?(key); end
  def keys; end
  def merge(other, namespace: nil); end
  def namespace(namespace, &block); end
  def register(key, contents = nil, options = nil, &block); end
  def resolve(key, &block); end
  def self.extended(base); end
  def self.included(base); end
end
module Dry::Container::Mixin::Initializer
  def initialize(*args, &block); end
end
