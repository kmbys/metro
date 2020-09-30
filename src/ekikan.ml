(* 駅と駅の接続情報を表す型 *)
type t ={
    kiten : string; (* 起点の駅名 *)
    shuten : string; (* 終点の駅名 *)
    keiyu : string; (* 経由する路線名 *)
    kyori : float; (* 2駅間の距離 / km *)
    jikan : int; (* 2駅間の所要時間 / 分 *)
}
