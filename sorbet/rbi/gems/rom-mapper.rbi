# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rom-mapper/all/rom-mapper.rbi
#
# rom-mapper-0.5.1
module ROM
end
class ROM::Header
  def [](name); end
  def aliased?; end
  def attributes; end
  def by_type(*types); end
  def combined; end
  def copy_keys; end
  def each; end
  def initialize(attributes, options = nil); end
  def initialize_mapping; end
  def initialize_pop_keys; end
  def initialize_tuple_keys; end
  def keys; end
  def mapping; end
  def model; end
  def non_primitives; end
  def pop_keys; end
  def postprocessed; end
  def preprocessed; end
  def primitives; end
  def reject_keys; end
  def self.coerce(input, options = nil); end
  def tuple_keys; end
  def wraps; end
  include Anonymous_Dry_Equalizer_74
  include Dry::Equalizer::Methods
  include Enumerable
end
class ROM::Header::Attribute
  def aliased?; end
  def initialize(name, meta); end
  def key; end
  def mapping; end
  def meta; end
  def name; end
  def self.[](meta); end
  def self.coerce(input); end
  def type; end
  def typed?; end
  def union?; end
  include Anonymous_Dry_Equalizer_75
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_75
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Header::Embedded < ROM::Header::Attribute
  def header; end
  def initialize(*arg0); end
  def pop_keys; end
  def tuple_keys; end
  include Anonymous_Dry_Equalizer_76
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_76
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Header::Array < ROM::Header::Embedded
end
class ROM::Header::Hash < ROM::Header::Embedded
end
class ROM::Header::Combined < ROM::Header::Embedded
end
class ROM::Header::Wrap < ROM::Header::Hash
end
class ROM::Header::Unwrap < ROM::Header::Hash
end
class ROM::Header::Group < ROM::Header::Array
end
class ROM::Header::Ungroup < ROM::Header::Array
end
class ROM::Header::Fold < ROM::Header::Array
end
class ROM::Header::Unfold < ROM::Header::Array
end
class ROM::Header::Exclude < ROM::Header::Attribute
end
module Anonymous_Dry_Equalizer_74
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::ModelBuilder
  def call(attrs); end
  def const_name; end
  def define_const; end
  def initialize(options = nil); end
  def klass; end
  def name; end
  def namespace; end
  def self.[](type); end
  def self.call(*args); end
end
class ROM::ModelBuilder::PORO < ROM::ModelBuilder
  def define_class(attrs); end
end
class ROM::Mapper
  def call(relation); end
  def header; end
  def initialize(header, processor = nil); end
  def model; end
  def self.build(header = nil, processor = nil); end
  def self.headers(header); end
  def self.processors; end
  def self.register_processor(processor); end
  def self.registry(descendants); end
  def transformers; end
  extend Anonymous_Module_78
  extend Dry::Core::ClassAttributes
  extend ROM::Mapper::DSL::ClassMethods
  include Anonymous_Dry_Equalizer_77
  include Dry::Core::Constants
  include Dry::Equalizer::Methods
  include ROM::Mapper::DSL
end
module ROM::Mapper::ModelDSL
  def attributes; end
  def build_class; end
  def builder; end
  def klass; end
  def model(options = nil); end
end
class ROM::Mapper::AttributeDSL
  def add_attribute(name, options); end
  def attribute(name, options = nil, &block); end
  def attributes; end
  def attributes_from_block(name, options, &block); end
  def attributes_from_hash(hash, options); end
  def attributes_from_mapper(mapper, name, options); end
  def combine(name, options, &block); end
  def copy_keys; end
  def dsl(name_or_attrs, options, &block); end
  def embedded(name, options, &block); end
  def ensure_mapper_configuration(method_name, args, block_present); end
  def exclude(name); end
  def fold(*args, &block); end
  def group(*args, &block); end
  def header; end
  def initialize(attributes, options); end
  def new(options, &block); end
  def options; end
  def prefix(value = nil); end
  def prefix_separator(value = nil); end
  def reject_keys; end
  def remove(*names); end
  def step(options = nil, &block); end
  def steps; end
  def symbolize_keys; end
  def unfold(name, options = nil); end
  def ungroup(*args, &block); end
  def unwrap(*args, &block); end
  def with_attr_options(name, options = nil); end
  def with_name_or_options(*args); end
  def wrap(*args, &block); end
  include ROM::Mapper::ModelDSL
end
module ROM::Mapper::DSL
  def self.included(klass); end
end
module ROM::Mapper::DSL::ClassMethods
  def attributes; end
  def base_relation; end
  def dsl; end
  def header; end
  def inherited(klass); end
  def method_missing(name, *args, &block); end
  def options; end
  def respond_to_missing?(name, _include_private = nil); end
  def use(plugin, options = nil); end
end
module Anonymous_Dry_Equalizer_77
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_78
  def copy_keys(value = nil); end
  def inherit_header(value = nil); end
  def inherited(klass); end
  def prefix(value = nil); end
  def prefix_separator(value = nil); end
  def register_as(value = nil); end
  def reject_keys(value = nil); end
  def relation(value = nil); end
  def symbolize_keys(value = nil); end
end
class ROM::Processor
  def self.build; end
  def self.inherited(processor); end
end
class ROM::Processor::Transproc < ROM::Processor
  def combined_args(attribute); end
  def header; end
  def initialize(mapper, header); end
  def initialize_row_proc; end
  def mapper; end
  def mapping; end
  def model; end
  def new(*args); end
  def process_header_keys(ops); end
  def row_proc; end
  def row_proc_from(attribute); end
  def self.build(mapper, header); end
  def t(*args); end
  def to_transproc; end
  def visit(attribute, *args); end
  def visit_array(attribute); end
  def visit_attribute(attribute); end
  def visit_combined(attribute); end
  def visit_exclude(attribute); end
  def visit_fold(attribute, preprocess = nil); end
  def visit_group(attribute, preprocess = nil); end
  def visit_hash(attribute); end
  def visit_unfold(attribute, preprocess = nil); end
  def visit_ungroup(attribute, preprocess = nil); end
  def visit_unwrap(attribute); end
  def visit_wrap(attribute); end
  def with_row_proc(attribute); end
  include Transproc::Composer
end
module ROM::Processor::Transproc::Functions
  def self.filter_empty(arr); end
  def self.identity(tuple); end
  def self.inject_union_value(tuple, name, keys, coercer); end
  extend Transproc::Registry
end
class ROM::MapperMisconfiguredError < StandardError
end
