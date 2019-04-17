{-# LANGUAGE OverloadedStrings #-}

import CountVonCount.Persistence

main :: IO ()
main = do
    db <- newDatabase "count-von-count.db"
    deleteAll db
    t1 <- addTeam db "Baton A"
    t2 <- addTeam db "Baton B"
    t3 <- addTeam db "Baton C"
    t4 <- addTeam db "Baton D"
    t5 <- addTeam db "Baton E"
    t6 <- addTeam db "Baton F"
    t7 <- addTeam db "Baton G"
    t8 <- addTeam db "Baton H"
    t9 <- addTeam db "Baton I"
    t10 <- addTeam db "Baton J"
    t11 <- addTeam db "Baton K"
    t12 <- addTeam db "Baton L"
    t13 <- addTeam db "Baton M"
    t14 <- addTeam db "Baton N"
    t15 <- addTeam db "Baton O"
    t16 <- addTeam db "Baton P"
    t17 <- addTeam db "Baton Q"
    t18 <- addTeam db "Baton R"
    t19 <- addTeam db "Baton S"
    t20 <- addTeam db "Baton T"
    t21 <- addTeam db "Baton U"
    t22 <- addTeam db "Baton V"
    t23 <- addTeam db "Baton W"
    t24 <- addTeam db "Baton X"
    t25 <- addTeam db "Baton Y"
    t26 <- addTeam db "Baton Z"
    -- b1 <- addBaton db "GEEN BEDRADING" "Baton A"
    b2 <- addBaton db "20:13:01:30:03:69" "Baton B"
    b3 <- addBaton db "20:13:12:06:90:51" "Baton C"
    -- b4 <- addBaton db "GEEN BATTERIJEN" "Baton D"
    b5 <- addBaton db "20:13:01:24:10:46" "Baton E"
    b6 <- addBaton db "20:13:01:24:00:43" "Baton F"
    b7 <- addBaton db "00:11:11:22:07:59" "Baton G"
    b8 <- addBaton db "20:13:02:18:02:86" "Baton H"
    b9 <- addBaton db "20:13:02:19:15:17" "Baton I"
    b10 <- addBaton db "20:13:01:31:01:32" "Baton J"
    b11 <- addBaton db "00:13:12:06:43:71" "Baton K"
    b12 <- addBaton db "20:13:01:24:00:28" "Baton L"
    -- b13 <- addBaton db "GEEN BEDRADING" "Baton M"
    -- b14 <- addBaton db "DRAAD GEBROKEN" "Baton N"
    -- b15 <- addBaton db "GEEN BATTERIJ BEDRADING" "Baton O"
    b16 <- addBaton db "00:00:12:06:61:63" "Baton P"
    b17 <- addBaton db "00:12:02:01:08:76" "Baton Q"
    b18 <- addBaton db "20:11:02:15:01:93" "Baton R"
    -- b19 <- addBaton db "KAPOTTE BATTERIJ BEDRADING" "Baton S"
    b20 <- addBaton db "20:11:02:15:01:77" "Baton T"
    b21 <- addBaton db "20:13:12:05:07:89" "Baton U"
    b22 <- addBaton db "00:13:12:06:50:94" "Baton V"
    b23 <- addBaton db "00:12:02:01:06:25" "Baton W"
    -- b24 <- addBaton db "KWIJT" "Baton X"
    b25 <- addBaton db "20:11:02:15:01:79" "Baton Y"
    b26 <- addBaton db "20:13:12:06:90:49" "Baton Z"
    -- setTeamBaton db t1 $ Just b1
    setTeamBaton db t2 $ Just b2
    setTeamBaton db t3 $ Just b3
    -- setTeamBaton db t4 $ Just b4
    setTeamBaton db t5 $ Just b5
    setTeamBaton db t6 $ Just b6
    setTeamBaton db t7 $ Just b7
    setTeamBaton db t8 $ Just b8
    setTeamBaton db t9 $ Just b9
    setTeamBaton db t10 $ Just b10
    setTeamBaton db t11 $ Just b11
    setTeamBaton db t12 $ Just b12
    -- setTeamBaton db t13 $ Just b13
    -- setTeamBaton db t14 $ Just b14
    -- setTeamBaton db t15 $ Just b15
    setTeamBaton db t16 $ Just b16
    setTeamBaton db t17 $ Just b17
    setTeamBaton db t18 $ Just b18
    -- setTeamBaton db t19 $ Just b19
    setTeamBaton db t20 $ Just b20
    setTeamBaton db t21 $ Just b21
    setTeamBaton db t22 $ Just b22
    setTeamBaton db t23 $ Just b23
    -- setTeamBaton db t24 $ Just b24
    setTeamBaton db t25 $ Just b25
    setTeamBaton db t26 $ Just b26