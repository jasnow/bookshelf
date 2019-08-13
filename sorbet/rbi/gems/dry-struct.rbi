# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-struct/all/dry-struct.rbi
#
# dry-struct-0.3.1
module Dry
end
class Dry::Struct
  def [](name); end
  def __new__(changeset); end
  def initialize(attributes); end
  def new(changeset); end
  def to_h; end
  def to_hash; end
  extend Anonymous_Module_105
  extend Anonymous_Module_106
  extend Anonymous_Module_107
  extend Anonymous_Module_108
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  extend Dry::Struct::ClassInterface
  include Dry::Core::Constants
end
class Dry::Struct::Error < TypeError
end
class Dry::Struct::RepeatedAttributeError < ArgumentError
  def initialize(key); end
end
class Dry::Struct::Constructor
  def [](input); end
  def call(input); end
  def fn; end
  def initialize(type, options = nil, &block); end
  def type; end
  include Anonymous_Dry_Equalizer_109
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_109
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Dry::Struct::ClassInterface
  def [](attributes = nil); end
  def argument_error_msg(keys); end
  def attribute(name, type); end
  def attribute?(key); end
  def attribute_names; end
  def attributes(new_schema); end
  def call(attributes = nil); end
  def check_invalid_schema_keys; end
  def check_schema_duplication(new_schema); end
  def constrained?; end
  def constructor(constructor = nil, **_options, &block); end
  def default?; end
  def default_attributes; end
  def failure(*args); end
  def inherited(klass); end
  def new(attributes = nil); end
  def optional?; end
  def primitive; end
  def result(klass, *args); end
  def success(*args); end
  def try(input); end
  def valid?(value); end
  include Dry::Core::ClassAttributes
  include Dry::Types::Builder
end
module Dry::Struct::Hashify
  def self.[](value); end
end
module Anonymous_Dry_Equalizer_110
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Struct::Value < Dry::Struct
  def self.new(*arg0); end
  include Anonymous_Dry_Equalizer_110
  include Dry::Equalizer::Methods
end
module Anonymous_Module_105
  def inherited(klass); end
  def input(value = nil); end
end
module Anonymous_Module_106
  def inherited(klass); end
  def schema(value = nil); end
end
module Anonymous_Module_107
  def constructor_type(value = nil); end
  def inherited(klass); end
end
module Anonymous_Module_108
  def equalizer(value = nil); end
  def inherited(klass); end
end
