Pod::Spec.new do |s|
    s.name = "libjson"
    s.version = "7.6.1"
    s.summary = "A JSON reader and writer which is super-efficient and usually runs circles around other JSON libraries."
    s.description = "A JSON reader and writer which is super-efficient and usually runs circles around other JSON libraries. It's highly customizable to optimize for your particular project, and very lightweight. For Windows, OSX, or Linux. Works in any language."
    s.homepage = "http://libjson.sourceforge.net/"
    s.license = 'Apache 2.0'
    s.author = "Jonathan Wallace"
    s.source = { :http => "https://github.com/sonng/libjson-mirror/releases/download/7.6.1/libjson_7.6.1.zip" }
    s.compiler_flags = "-DNDEBUG"
    s.requires_arc = false
    s.platform = :ios, 5.0
    s.source_files = "libjson/*.h", "libjson/_internal/{Source,Dependencies}/**/*.{h,cpp}"
    s.header_mappings_dir = 'libjson/'
    s.prepare_command = "\tsed -i .orig 's/^\\(#define JSON_LIBRARY\\)$/\\/\\/\\1/' libjson/JSONOptions.h\n\tsed -i .orig 's/^\\(#define JSON_WRITE_PRIORITY MED\\)$/\\/\\/\\1/' libjson/JSONOptions.h\n\tsed -i .orig 's/^\\(#define JSON_COMMENTS\\)$/\\/\\/\\1/' libjson/JSONOptions.h\n\tsed -i .orig 's/^\\(#define JSON_DEPRECATED_FUNCTIONS\\)$/\\/\\/\\1/' libjson/JSONOptions.h\n"
end