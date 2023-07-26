(asdf:defsystem "homebrew-lake"
  :description "A thin wrapper to package https://github.com/takagi/lake for OSX using Homebrew."
  :version "0.1.0"
  :defsystem-depends-on ("deploy")
  :serial t
  :depends-on ("quicklisp" ;; some Lakefiles can use quicklisp to retrieve additional libs
               "lake")
  :build-operation "deploy-op"
  :build-pathname "lake"
  :entry-point "lake/main:uiop-main"
  :homepage "https://github.com/40ants/homebrew-lake")
