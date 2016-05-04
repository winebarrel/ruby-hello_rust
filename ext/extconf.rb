open("Makefile", "w") do |f|
	src = File.expand_path("../hello_rust.rs", __FILE__)
	lib = File.expand_path("../../lib", __FILE__)

  f << <<-EOS
all: dylib

dylib:
	rustc #{src}

install: all
	cp -f libhello_rust.* #{lib}

clean:
	rm -f *.so *.dylib
	EOS
end
