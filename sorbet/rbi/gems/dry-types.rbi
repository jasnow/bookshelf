# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-types/all/dry-types.rbi
#
# dry-types-0.11.1
module Dry
end
module Dry::Types
  def self.Rule(options); end
  def self.[](name); end
  def self.container; end
  def self.define_constants(namespace, identifiers); end
  def self.finalize; end
  def self.identifier(klass); end
  def self.module; end
  def self.register(name, type = nil, &block); end
  def self.register_class(klass, meth = nil); end
  def self.registered?(class_or_identifier); end
  def self.rule_compiler; end
  def self.type_keys; end
  def self.type_map; end
  extend Dry::Configurable
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  extend Dry::Configurable::ClassMethods
  extend Dry::Core::Extensions
  include Dry::Core::Constants
end
class Dry::Types::Container
  def config; end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  include Dry::Container::Mixin
end
module Dry::Types::Type
end
module Dry::Types::Options
  def initialize(*args, meta: nil, **options); end
  def meta(data = nil); end
  def options; end
  def pristine; end
  def with(new_options); end
end
module Dry::Types::Decorator
  def constrained?; end
  def constructor; end
  def decorate?(response); end
  def default?; end
  def initialize(type, *arg1); end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  def try(input, &block); end
  def type; end
  def valid?(value); end
  include Dry::Types::Options
end
class Dry::Types::Default
  def [](input); end
  def call(input); end
  def constrained(*args); end
  def default?; end
  def evaluate; end
  def initialize(type, value, *arg2); end
  def self.[](value); end
  def try(input); end
  def value; end
  include Anonymous_Dry_Equalizer_8
  include Dry::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Type
end
module Anonymous_Dry_Equalizer_8
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Default::Callable < Dry::Types::Default
  def evaluate; end
  include Anonymous_Dry_Equalizer_9
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_9
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Constrained
  def ===(value); end
  def [](input); end
  def call(input); end
  def constrained(options); end
  def constrained?; end
  def decorate?(response); end
  def initialize(type, options); end
  def rule; end
  def to_ast(meta: nil); end
  def try(input, &block); end
  def valid?(value); end
  include Anonymous_Dry_Equalizer_10
  include Dry::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Type
  include Dry::Types::Type
end
class Dry::Types::Constrained::Coercible < Dry::Types::Constrained
  def try(input, &block); end
end
module Anonymous_Dry_Equalizer_10
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Enum
  def [](input); end
  def call(input); end
  def default(*arg0); end
  def initialize(type, options); end
  def mapping; end
  def to_ast(meta: nil); end
  def values; end
  include Anonymous_Dry_Equalizer_11
  include Dry::Equalizer::Methods
  include Dry::Types::Decorator
  include Dry::Types::Type
end
module Anonymous_Dry_Equalizer_11
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Safe
  def [](input); end
  def call(input); end
  def decorate?(response); end
  def safe; end
  def to_ast(meta: nil); end
  def try(input, &block); end
  include Anonymous_Dry_Equalizer_12
  include Dry::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Decorator
  include Dry::Types::Type
end
module Anonymous_Dry_Equalizer_12
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Sum
  def [](input); end
  def call(input); end
  def constrained?; end
  def default?; end
  def initialize(left, right, options = nil); end
  def left; end
  def maybe?; end
  def name; end
  def optional?; end
  def primitive?(value); end
  def right; end
  def to_ast(meta: nil); end
  def try(input, &block); end
  def valid?(value); end
  include Anonymous_Dry_Equalizer_13
  include Dry::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Options
  include Dry::Types::Type
end
module Anonymous_Dry_Equalizer_13
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Sum::Constrained < Dry::Types::Sum
  def [](input); end
  def call(input); end
  def constrained?; end
  def rule; end
end
module Dry::Types::Builder
  def constrained(options); end
  def constrained_type; end
  def constructor(constructor = nil, **options, &block); end
  def default(input = nil, &block); end
  def enum(*values); end
  def optional; end
  def safe; end
  def |(other); end
  include Dry::Core::Constants
end
class Dry::Types::Result
  def initialize(input); end
  def input; end
  include Anonymous_Dry_Equalizer_14
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_14
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Result::Success < Dry::Types::Result
  def failure?; end
  def success?; end
end
class Dry::Types::Result::Failure < Dry::Types::Result
  def error; end
  def failure?; end
  def initialize(input, error); end
  def success?; end
  def to_s; end
  include Anonymous_Dry_Equalizer_15
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_15
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Array < Dry::Types::Definition
  def member(type); end
  def of(type); end
end
class Dry::Types::Array::Member < Dry::Types::Array
  def [](input, meth = nil); end
  def call(input, meth = nil); end
  def initialize(primitive, options = nil); end
  def member; end
  def to_ast(meta: nil); end
  def try(input, &block); end
  def valid?(value); end
end
class Dry::Types::Hash < Dry::Types::Definition
  def permissive(type_map); end
  def resolve_missing_value(_result, _key, _type); end
  def schema(type_map, klass = nil); end
  def strict(type_map); end
  def strict_with_defaults(type_map); end
  def symbolized(type_map); end
  def weak(type_map); end
end
class Dry::Types::Hash::Schema < Dry::Types::Hash
  def [](hash); end
  def call(hash); end
  def coerce(hash); end
  def hash_type; end
  def initialize(_primitive, options); end
  def member_types; end
  def resolve(hash); end
  def resolve_missing_value(result, key, type); end
  def to_ast(meta: nil); end
  def try(hash, &block); end
  def try_coerce(hash); end
end
class Dry::Types::Hash::Permissive < Dry::Types::Hash::Schema
  def hash_type; end
  def resolve_missing_value(_, key, _); end
end
class Dry::Types::Hash::Strict < Dry::Types::Hash::Permissive
  def hash_type; end
  def resolve(hash); end
end
class Dry::Types::Hash::StrictWithDefaults < Dry::Types::Hash::Strict
  def hash_type; end
  def resolve_missing_value(result, key, type); end
end
class Dry::Types::Hash::Weak < Dry::Types::Hash::Schema
  def hash_type; end
  def self.new(primitive, options); end
  def try(value, &block); end
end
class Dry::Types::Hash::Symbolized < Dry::Types::Hash::Weak
  def hash_type; end
  def resolve(hash); end
end
class Dry::Types::Definition
  def ===(value); end
  def [](input); end
  def call(input); end
  def constrained?; end
  def default?; end
  def failure(input, error); end
  def initialize(primitive, options = nil); end
  def name; end
  def optional?; end
  def options; end
  def primitive; end
  def primitive?(value); end
  def result(klass, *args); end
  def self.[](primitive); end
  def success(input); end
  def to_ast(meta: nil); end
  def try(input, &block); end
  def valid?(value); end
  include Anonymous_Dry_Equalizer_16
  include Dry::Equalizer::Methods
  include Dry::Types::Builder
  include Dry::Types::Options
  include Dry::Types::Type
end
module Anonymous_Dry_Equalizer_16
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::Constructor < Dry::Types::Definition
  def [](input); end
  def call(input); end
  def constrained_type; end
  def constructor(new_fn = nil, **options, &block); end
  def fn; end
  def initialize(type, options = nil, &block); end
  def method_missing(meth, *args, &block); end
  def name; end
  def primitive; end
  def register_fn(fn); end
  def respond_to_missing?(meth, include_private = nil); end
  def self.new(input, options = nil, &block); end
  def to_ast(meta: nil); end
  def try(input, &block); end
  def type; end
  def valid?(value); end
  include Anonymous_Dry_Equalizer_17
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_17
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Types::FnContainer
  def self.[](function_name); end
  def self.container; end
  def self.register(function); end
  def self.register_name(function); end
end
class Dry::Types::SchemaError < TypeError
  def initialize(key, value, result); end
end
class Dry::Types::SchemaKeyError < KeyError
end
class Dry::Types::MissingKeyError < Dry::Types::SchemaKeyError
  def initialize(key); end
end
class Dry::Types::UnknownKeysError < Dry::Types::SchemaKeyError
  def initialize(*keys); end
end
class Dry::Types::ConstraintError < TypeError
  def initialize(result, input); end
  def input; end
  def result; end
  def to_s; end
end
module Dry::Types::Coercions
  def empty_str?(value); end
  def to_date(input); end
  def to_date_time(input); end
  def to_nil(input); end
  def to_time(input); end
  include Dry::Core::Constants
end
module Dry::Types::Coercions::Form
  def self.to_ary(input); end
  def self.to_decimal(input); end
  def self.to_false(input); end
  def self.to_float(input); end
  def self.to_hash(input); end
  def self.to_int(input); end
  def self.to_true(input); end
  extend Dry::Types::Coercions
end
module Dry::Types::Coercions::JSON
  def self.to_decimal(input); end
  extend Dry::Types::Coercions
end
class Dry::Types::Compiler
  def call(ast); end
  def initialize(registry); end
  def merge_with(hash_id, constructor, schema); end
  def registry; end
  def visit(node); end
  def visit_array(node); end
  def visit_constructor(node); end
  def visit_definition(node); end
  def visit_form_array(node); end
  def visit_form_hash(node); end
  def visit_hash(node); end
  def visit_json_array(node); end
  def visit_json_hash(node); end
  def visit_member(node); end
  def visit_safe(node); end
  def visit_sum(node); end
end
