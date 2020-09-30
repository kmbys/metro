(* 駅名のデータ (漢字, ひらがな, ローマ字, 所属路線名) を表す型 *)
type ekimei_t = {
    kanji : string; (* 漢字 *)
    kana : string; (* ひらがな *)
    romaji : string; (* ローマ字 *)
    shozoku : string; (* 所属路線名 *)
}

(* 駅名の例 *)
let teine = {kanji="手稲"; kana="ていね"; romaji="teine"; shozoku="JR函館本線"}

(* 目的：駅名を受け取り「路線名, 駅名（かな）」形式の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
    {kanji=kanji; kana=kana; romaji=romaji; shozoku=shozoku} ->
        shozoku ^ ", " ^ kana

(* テスト *)
let test1 = hyoji teine = "JR函館本線, ていね"
