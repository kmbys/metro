(* 駅名のデータ (漢字, ひらがな, ローマ字, 所属路線名) を表す型 *)
type ekimei_t = {
    kanji : string; (* 漢字 *)
    kana : string; (* ひらがな *)
    romaji : string; (* ローマ字 *)
    shozoku : string; (* 所属路線名 *)
}

(* 駅名の例 *)
let teine = {kanji="手稲"; kana="ていね"; romaji="teine"; shozoku="JR函館本線"}
