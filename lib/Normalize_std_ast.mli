(**************************************************************************)
(*                                                                        *)
(*                              OCamlFormat                               *)
(*                                                                        *)
(*            Copyright (c) Facebook, Inc. and its affiliates.            *)
(*                                                                        *)
(*      This source code is licensed under the MIT license found in       *)
(*      the LICENSE file in the root directory of this source tree.       *)
(*                                                                        *)
(**************************************************************************)

val ast : 'a Std_ast.t -> Conf.t -> 'a -> 'a
(** Normalize an AST fragment. *)

val equal :
  'a Std_ast.t -> ignore_doc_comments:bool -> Conf.t -> 'a -> 'a -> bool
(** Compare fragments for equality up to normalization. *)

val moved_docstrings :
  'a Std_ast.t -> Conf.t -> 'a -> 'a -> Docstring.error list

val diff_docstrings :
  Conf.t -> Cmt.t list -> Cmt.t list -> (string, string) Either.t Sequence.t
(** Difference between two lists of doc comments. *)

val diff_cmts :
  Conf.t -> Cmt.t list -> Cmt.t list -> (string, string) Either.t Sequence.t
(** Difference between two lists of comments. *)
