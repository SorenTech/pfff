module Date = Common2
(*****************************************************************************)
(* Prelude *)
(*****************************************************************************)

(*****************************************************************************)
(* Wrappers *)
(*****************************************************************************)
let pr2, pr2_once = Common2.mk_pr2_wrappers Flag_version_control.verbose

  let xs = Common.split "/" file in
        Date.DMY (Date.Day (s_to_i day),
            Date.Year (s_to_i year)
let grep ~basedir str =
  let cmd = (goto_dir basedir ^
               (spf "git grep --files-with-matches %s" str)) in
  let xs = Common.cmd_to_list cmd in
  xs

let show ~basedir file commitid =
  let tmpfile = Common.new_temp_file "git_show" ".cat" in
  let str_commit = Lib_vcs.s_of_versionid commitid in
  let cmd = (spf "git show %s:%s > %s" str_commit file tmpfile) in
  exec_cmd ~basedir cmd;
  tmpfile
  
  commits +> Common.index_list_1 +> List.iter (fun (vid, cnt) ->