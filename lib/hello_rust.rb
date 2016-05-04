require "ffi"
require "hello_rust/version"

module HelloRust
  extend FFI::Library
  ffi_lib Dir.glob(File.expand_path("../libhello_rust.*", __FILE__)).first
  attach_function :hello_rust, [], :void
end
