all: lake.rb

cl-repl.rb: homebrew-lake.asd qlfile.lock
	qlot exec bash -c "SBCL_HOME='' cl-brewer --preload quicklisp-starter --formula-name cl-repl homebrew-lake"

qlfile.lock: qlfile
	qlot update || qlot install

install:
	HOMEBREW_NO_AUTO_UPDATE=1 brew install --debug --verbose ./lake.rb
