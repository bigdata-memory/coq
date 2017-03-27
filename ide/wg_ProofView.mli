(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

class type proof_view =
  object
    inherit GObj.widget
    method buffer : GText.buffer
    method refresh : force:bool -> unit
    method clear : unit -> unit
    method set_goals : Interface.goals option -> unit
    method set_evars : Interface.evar list option -> unit
  end

val proof_view : unit -> proof_view
