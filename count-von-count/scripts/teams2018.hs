--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import CountVonCount.Persistence


--------------------------------------------------------------------------------
main :: IO ()
main = do
    db <- newDatabase "count-von-count.db"
    deleteAll db

    -- Define stations: gyrid name and MAC-address of its bluetooth stick and distance
    addStation db "gyrid111" "00:01:95:0d:cf:d7" 1
    addStation db "gyrid101" "00:01:95:0d:d1:f0" 48
    addStation db "gyrid102" "00:01:95:0a:56:3b" 111
    addStation db "gyrid103" "00:01:95:0a:cc:3f" 185
    addStation db "gyrid105" "00:01:95:0d:cf:e4" 230
    addStation db "gyrid106" "00:01:95:0b:ad:8e" 283

    -- Define teams
    t1  <- addTeam db "HILOK"
    t2  <- addTeam db "VTK"
    t3  <- addTeam db "VEK"
    t4  <- addTeam db "VGK"
    t5  <- addTeam db "Hermes, Veto & Lila"
    t6  <- addTeam db "SK"
    t7  <- addTeam db "WVK"
    t8  <- addTeam db "HK"
    t9  <- addTeam db "Politeia"
    t10  <- addTeam db "VPPK & Moeder Lies"
    t11  <- addTeam db "Wetenschappen & VLAK"
    t12  <- addTeam db "VRG"
    t13  <- addTeam db "CHARPA"
    t14  <- addTeam db "VLK"
    t15  <- addTeam db "VDK & Pharma"
    t16  <- addTeam db "VBK"
    t17  <- addTeam db "Blandinia"

    -- Define batons (tested 18/04/2018)
    -- Broken
    -- b1  <- addBaton db "20:13:01:24:11:15" "Baton A"
    -- b19 <- addBaton db "30:14:08:18:31:46" "Baton S"
    -- b13 <- addBaton db "20:13:12:05:07:54" "Baton M"
    -- b14 <- addBaton db "20:11:02:15:01:67" "Baton N"

    -- Lost?
    -- b12 <- addBaton db "20:13:01:24:00:28" "Baton L"
    -- b24 <- addBaton db "00:12:02:01:07:82" "Baton X"

    -- Working
    b1  <- addBaton db "20:13:01:30:03:69" "Baton B"
    b2  <- addBaton db "20:13:12:06:90:51" "Baton C"
    b3  <- addBaton db "20:13:02:20:15:11" "Baton D"
    b4  <- addBaton db "20:13:01:24:10:46" "Baton E"
    b5  <- addBaton db "20:13:01:24:00:43" "Baton F"
    b6  <- addBaton db "00:11:11:22:07:59" "Baton G"
    b7  <- addBaton db "20:13:02:18:02:86" "Baton H"
    b8  <- addBaton db "20:13:02:19:15:17" "Baton I"
    b9  <- addBaton db "20:13:01:31:01:32" "Baton J"
    b10 <- addBaton db "00:13:12:06:43:71" "Baton K"
    b11 <- addBaton db "00:13:12:06:62:95" "Baton O"
    b12 <- addBaton db "00:00:12:06:61:63" "Baton P"
    b13 <- addBaton db "00:12:02:01:08:76" "Baton Q"
    b14 <- addBaton db "20:11:02:15:01:93" "Baton R"
    b15 <- addBaton db "20:11:02:15:01:77" "Baton T"
    b16 <- addBaton db "20:13:12:05:07:89" "Baton U"
    b17 <- addBaton db "00:13:12:06:50:94" "Baton V"
    b18 <- addBaton db "00:12:02:01:06:25" "Baton W"
    b19 <- addBaton db "20:11:02:15:01:79" "Baton Y"
    b20 <- addBaton db "20:13:12:06:90:49" "Baton Z"

    -- Connect teams to batons
    setTeamBaton db t1  $ Just b1
    setTeamBaton db t2  $ Just b2
    setTeamBaton db t3  $ Just b3
    setTeamBaton db t4  $ Just b4
    setTeamBaton db t5  $ Just b5
    setTeamBaton db t6  $ Just b6
    setTeamBaton db t7  $ Just b7
    setTeamBaton db t8  $ Just b8
    setTeamBaton db t9  $ Just b9
    setTeamBaton db t10 $ Just b10
    setTeamBaton db t11 $ Just b11
    setTeamBaton db t12 $ Just b12
    setTeamBaton db t13 $ Just b13
    setTeamBaton db t14 $ Just b14
    setTeamBaton db t15 $ Just b15
    setTeamBaton db t16 $ Just b16
    setTeamBaton db t17 $ Just b17

    closeDatabase db
