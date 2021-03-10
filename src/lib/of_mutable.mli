(** A functor that uses an implementation of
   {!module-type:Api.MINIMALISTIC_MUTABLE_STRING} to build
   {!module-type:Api.BASIC_STRING}. *)

module Make (S : Api.MINIMALISTIC_MUTABLE_STRING) :
  Api.BASIC_STRING with type character = S.character
