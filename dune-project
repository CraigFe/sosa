(lang dune 2.7)
(generate_opam_files true)

(name sosa)
(source (github hammerlab/sosa))
(license ISC)

(package
  (name sosa)
  (synopsis "Sane OCaml String API")
  (description "\
The Sosa library is a set of APIs (module types) that define what a string of
characters should be, and a set of modules and functors that implement them.
")
  (authors
   "Sebastien Mondet <seb@mondet.org>"
   "Leonid Rozenberg <leonidr@gmail.com>"
   "Isaac Hodes <isaachodes@gmail.com>"
   "Jeff Hammerbacher <jeff.hammerbacher@gmail.com>")
  (maintainers "seb@mondet.org")
  (depends
   (ocaml (>= 4.02.0))
   stdlib-shims
   (bigarray-compat :with-test)
   (bisect_ppx (and :dev (>= 2.5.0)))
   (nonstd :with-test)))
