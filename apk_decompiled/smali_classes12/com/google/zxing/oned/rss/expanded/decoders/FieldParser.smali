.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 39
    const/16 v1, 0x18

    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 39
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "00"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 44
    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    aput-object v4, v1, v6

    new-array v4, v2, [Ljava/lang/Object;

    const-string v9, "01"

    aput-object v9, v4, v6

    .line 45
    const/16 v9, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v8

    aput-object v4, v1, v8

    new-array v4, v2, [Ljava/lang/Object;

    const-string v11, "02"

    aput-object v11, v4, v6

    .line 46
    aput-object v10, v4, v8

    aput-object v4, v1, v2

    const/4 v4, 0x3

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 46
    new-array v12, v4, [Ljava/lang/Object;

    const-string v13, "10"

    aput-object v13, v12, v6

    aput-object v0, v12, v8

    .line 48
    const/16 v13, 0x14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v2

    aput-object v12, v1, v4

    new-array v12, v2, [Ljava/lang/Object;

    const-string v15, "11"

    aput-object v15, v12, v6

    .line 49
    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v8

    const/16 v17, 0x4

    aput-object v12, v1, v17

    new-array v12, v2, [Ljava/lang/Object;

    const-string v18, "12"

    aput-object v18, v12, v6

    .line 50
    aput-object v16, v12, v8

    const/16 v18, 0x5

    aput-object v12, v1, v18

    new-array v12, v2, [Ljava/lang/Object;

    const-string v19, "13"

    aput-object v19, v12, v6

    .line 51
    aput-object v16, v12, v8

    aput-object v12, v1, v15

    new-array v12, v2, [Ljava/lang/Object;

    const-string v19, "15"

    aput-object v19, v12, v6

    .line 52
    aput-object v16, v12, v8

    const/16 v19, 0x7

    aput-object v12, v1, v19

    new-array v12, v2, [Ljava/lang/Object;

    const-string v20, "17"

    aput-object v20, v12, v6

    .line 53
    aput-object v16, v12, v8

    const/16 v20, 0x8

    .line 59
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 53
    aput-object v12, v1, v20

    new-array v12, v2, [Ljava/lang/Object;

    const-string v22, "20"

    aput-object v22, v12, v6

    .line 55
    aput-object v3, v12, v8

    const/16 v22, 0x9

    aput-object v12, v1, v22

    new-array v12, v4, [Ljava/lang/Object;

    const-string v23, "21"

    aput-object v23, v12, v6

    aput-object v0, v12, v8

    .line 56
    aput-object v14, v12, v2

    const/16 v23, 0xa

    .line 171
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 56
    aput-object v12, v1, v23

    new-array v12, v4, [Ljava/lang/Object;

    const-string v25, "22"

    aput-object v25, v12, v6

    aput-object v0, v12, v8

    .line 57
    const/16 v25, 0x1d

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v12, v2

    const/16 v25, 0xb

    aput-object v12, v1, v25

    new-array v12, v4, [Ljava/lang/Object;

    const-string v26, "30"

    aput-object v26, v12, v6

    aput-object v0, v12, v8

    .line 59
    aput-object v21, v12, v2

    const/16 v26, 0xc

    aput-object v12, v1, v26

    new-array v12, v4, [Ljava/lang/Object;

    const-string v27, "37"

    aput-object v27, v12, v6

    aput-object v0, v12, v8

    .line 60
    aput-object v21, v12, v2

    const/16 v21, 0xd

    .line 90
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 60
    aput-object v12, v1, v21

    new-array v12, v4, [Ljava/lang/Object;

    const-string v28, "90"

    aput-object v28, v12, v6

    aput-object v0, v12, v8

    .line 63
    const/16 v28, 0x1e

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v12, v2

    aput-object v12, v1, v9

    new-array v12, v4, [Ljava/lang/Object;

    const-string v30, "91"

    aput-object v30, v12, v6

    aput-object v0, v12, v8

    .line 64
    aput-object v29, v12, v2

    const/16 v30, 0xf

    .line 96
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 64
    aput-object v12, v1, v30

    new-array v12, v4, [Ljava/lang/Object;

    const-string v32, "92"

    aput-object v32, v12, v6

    aput-object v0, v12, v8

    .line 65
    aput-object v29, v12, v2

    const/16 v32, 0x10

    aput-object v12, v1, v32

    new-array v12, v4, [Ljava/lang/Object;

    const-string v33, "93"

    aput-object v33, v12, v6

    aput-object v0, v12, v8

    .line 66
    aput-object v29, v12, v2

    const/16 v33, 0x11

    .line 83
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 66
    aput-object v12, v1, v33

    new-array v12, v4, [Ljava/lang/Object;

    const-string v35, "94"

    aput-object v35, v12, v6

    aput-object v0, v12, v8

    .line 67
    aput-object v29, v12, v2

    aput-object v12, v1, v5

    new-array v12, v4, [Ljava/lang/Object;

    const-string v35, "95"

    aput-object v35, v12, v6

    aput-object v0, v12, v8

    .line 68
    aput-object v29, v12, v2

    const/16 v35, 0x13

    aput-object v12, v1, v35

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "96"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 69
    aput-object v29, v12, v2

    aput-object v12, v1, v13

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "97"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 70
    aput-object v29, v12, v2

    const/16 v36, 0x15

    aput-object v12, v1, v36

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "98"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 71
    aput-object v29, v12, v2

    const/16 v36, 0x16

    aput-object v12, v1, v36

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "99"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 72
    aput-object v29, v12, v2

    const/16 v36, 0x17

    aput-object v12, v1, v36

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 75
    const/16 v1, 0x17

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "240"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 78
    aput-object v29, v12, v2

    aput-object v12, v1, v6

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "241"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 79
    aput-object v29, v12, v2

    aput-object v12, v1, v8

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "242"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 80
    aput-object v16, v12, v2

    aput-object v12, v1, v2

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "250"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 81
    aput-object v29, v12, v2

    aput-object v12, v1, v4

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "251"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 82
    aput-object v29, v12, v2

    aput-object v12, v1, v17

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "253"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 83
    aput-object v34, v12, v2

    aput-object v12, v1, v18

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "254"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 84
    aput-object v14, v12, v2

    aput-object v12, v1, v15

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "400"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 86
    aput-object v29, v12, v2

    aput-object v12, v1, v19

    new-array v12, v4, [Ljava/lang/Object;

    const-string v36, "401"

    aput-object v36, v12, v6

    aput-object v0, v12, v8

    .line 87
    aput-object v29, v12, v2

    aput-object v12, v1, v20

    new-array v12, v2, [Ljava/lang/Object;

    const-string v36, "402"

    aput-object v36, v12, v6

    .line 88
    aput-object v34, v12, v8

    aput-object v12, v1, v22

    new-array v12, v4, [Ljava/lang/Object;

    const-string v34, "403"

    aput-object v34, v12, v6

    aput-object v0, v12, v8

    .line 89
    aput-object v29, v12, v2

    aput-object v12, v1, v23

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "410"

    aput-object v34, v12, v6

    .line 90
    aput-object v27, v12, v8

    aput-object v12, v1, v25

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "411"

    aput-object v34, v12, v6

    .line 91
    aput-object v27, v12, v8

    aput-object v12, v1, v26

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "412"

    aput-object v34, v12, v6

    .line 92
    aput-object v27, v12, v8

    aput-object v12, v1, v21

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "413"

    aput-object v34, v12, v6

    .line 93
    aput-object v27, v12, v8

    aput-object v12, v1, v9

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "414"

    aput-object v34, v12, v6

    .line 94
    aput-object v27, v12, v8

    aput-object v12, v1, v30

    new-array v12, v4, [Ljava/lang/Object;

    const-string v34, "420"

    aput-object v34, v12, v6

    aput-object v0, v12, v8

    .line 95
    aput-object v14, v12, v2

    aput-object v12, v1, v32

    new-array v12, v4, [Ljava/lang/Object;

    const-string v34, "421"

    aput-object v34, v12, v6

    aput-object v0, v12, v8

    .line 96
    aput-object v31, v12, v2

    aput-object v12, v1, v33

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "422"

    aput-object v34, v12, v6

    .line 97
    aput-object v11, v12, v8

    aput-object v12, v1, v5

    new-array v12, v4, [Ljava/lang/Object;

    const-string v34, "423"

    aput-object v34, v12, v6

    aput-object v0, v12, v8

    .line 98
    aput-object v31, v12, v2

    aput-object v12, v1, v35

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "424"

    aput-object v34, v12, v6

    .line 99
    aput-object v11, v12, v8

    aput-object v12, v1, v13

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "425"

    aput-object v34, v12, v6

    .line 100
    aput-object v11, v12, v8

    const/16 v34, 0x15

    aput-object v12, v1, v34

    new-array v12, v2, [Ljava/lang/Object;

    const-string v34, "426"

    aput-object v34, v12, v6

    .line 101
    aput-object v11, v12, v8

    const/16 v11, 0x16

    aput-object v12, v1, v11

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 104
    const/16 v1, 0x39

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "310"

    aput-object v12, v11, v6

    .line 107
    aput-object v16, v11, v8

    aput-object v11, v1, v6

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "311"

    aput-object v12, v11, v6

    .line 108
    aput-object v16, v11, v8

    aput-object v11, v1, v8

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "312"

    aput-object v12, v11, v6

    .line 109
    aput-object v16, v11, v8

    aput-object v11, v1, v2

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "313"

    aput-object v12, v11, v6

    .line 110
    aput-object v16, v11, v8

    aput-object v11, v1, v4

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "314"

    aput-object v12, v11, v6

    .line 111
    aput-object v16, v11, v8

    aput-object v11, v1, v17

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "315"

    aput-object v12, v11, v6

    .line 112
    aput-object v16, v11, v8

    aput-object v11, v1, v18

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "316"

    aput-object v12, v11, v6

    .line 113
    aput-object v16, v11, v8

    aput-object v11, v1, v15

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "320"

    aput-object v12, v11, v6

    .line 114
    aput-object v16, v11, v8

    aput-object v11, v1, v19

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "321"

    aput-object v12, v11, v6

    .line 115
    aput-object v16, v11, v8

    aput-object v11, v1, v20

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "322"

    aput-object v12, v11, v6

    .line 116
    aput-object v16, v11, v8

    aput-object v11, v1, v22

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "323"

    aput-object v12, v11, v6

    .line 117
    aput-object v16, v11, v8

    aput-object v11, v1, v23

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "324"

    aput-object v12, v11, v6

    .line 118
    aput-object v16, v11, v8

    aput-object v11, v1, v25

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "325"

    aput-object v12, v11, v6

    .line 119
    aput-object v16, v11, v8

    aput-object v11, v1, v26

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "326"

    aput-object v12, v11, v6

    .line 120
    aput-object v16, v11, v8

    aput-object v11, v1, v21

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "327"

    aput-object v12, v11, v6

    .line 121
    aput-object v16, v11, v8

    aput-object v11, v1, v9

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "328"

    aput-object v12, v11, v6

    .line 122
    aput-object v16, v11, v8

    aput-object v11, v1, v30

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "329"

    aput-object v12, v11, v6

    .line 123
    aput-object v16, v11, v8

    aput-object v11, v1, v32

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "330"

    aput-object v12, v11, v6

    .line 124
    aput-object v16, v11, v8

    aput-object v11, v1, v33

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "331"

    aput-object v12, v11, v6

    .line 125
    aput-object v16, v11, v8

    aput-object v11, v1, v5

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "332"

    aput-object v12, v11, v6

    .line 126
    aput-object v16, v11, v8

    aput-object v11, v1, v35

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "333"

    aput-object v12, v11, v6

    .line 127
    aput-object v16, v11, v8

    aput-object v11, v1, v13

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "334"

    aput-object v12, v11, v6

    .line 128
    aput-object v16, v11, v8

    const/16 v12, 0x15

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "335"

    aput-object v12, v11, v6

    .line 129
    aput-object v16, v11, v8

    const/16 v12, 0x16

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "336"

    aput-object v12, v11, v6

    .line 130
    aput-object v16, v11, v8

    const/16 v12, 0x17

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "340"

    aput-object v12, v11, v6

    .line 131
    aput-object v16, v11, v8

    const/16 v12, 0x18

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "341"

    aput-object v12, v11, v6

    .line 132
    aput-object v16, v11, v8

    const/16 v12, 0x19

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "342"

    aput-object v12, v11, v6

    .line 133
    aput-object v16, v11, v8

    const/16 v12, 0x1a

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "343"

    aput-object v12, v11, v6

    .line 134
    aput-object v16, v11, v8

    const/16 v12, 0x1b

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "344"

    aput-object v12, v11, v6

    .line 135
    aput-object v16, v11, v8

    const/16 v12, 0x1c

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "345"

    aput-object v12, v11, v6

    .line 136
    aput-object v16, v11, v8

    const/16 v12, 0x1d

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "346"

    aput-object v12, v11, v6

    .line 137
    aput-object v16, v11, v8

    aput-object v11, v1, v28

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "347"

    aput-object v12, v11, v6

    .line 138
    aput-object v16, v11, v8

    const/16 v12, 0x1f

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "348"

    aput-object v12, v11, v6

    .line 139
    aput-object v16, v11, v8

    const/16 v12, 0x20

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "349"

    aput-object v12, v11, v6

    .line 140
    aput-object v16, v11, v8

    const/16 v12, 0x21

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "350"

    aput-object v12, v11, v6

    .line 141
    aput-object v16, v11, v8

    const/16 v12, 0x22

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "351"

    aput-object v12, v11, v6

    .line 142
    aput-object v16, v11, v8

    const/16 v12, 0x23

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "352"

    aput-object v12, v11, v6

    .line 143
    aput-object v16, v11, v8

    const/16 v12, 0x24

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "353"

    aput-object v12, v11, v6

    .line 144
    aput-object v16, v11, v8

    const/16 v12, 0x25

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "354"

    aput-object v12, v11, v6

    .line 145
    aput-object v16, v11, v8

    const/16 v12, 0x26

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "355"

    aput-object v12, v11, v6

    .line 146
    aput-object v16, v11, v8

    const/16 v12, 0x27

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "356"

    aput-object v12, v11, v6

    .line 147
    aput-object v16, v11, v8

    const/16 v12, 0x28

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "357"

    aput-object v12, v11, v6

    .line 148
    aput-object v16, v11, v8

    const/16 v12, 0x29

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "360"

    aput-object v12, v11, v6

    .line 149
    aput-object v16, v11, v8

    const/16 v12, 0x2a

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "361"

    aput-object v12, v11, v6

    .line 150
    aput-object v16, v11, v8

    const/16 v12, 0x2b

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "362"

    aput-object v12, v11, v6

    .line 151
    aput-object v16, v11, v8

    const/16 v12, 0x2c

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "363"

    aput-object v12, v11, v6

    .line 152
    aput-object v16, v11, v8

    const/16 v12, 0x2d

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "364"

    aput-object v12, v11, v6

    .line 153
    aput-object v16, v11, v8

    const/16 v12, 0x2e

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "365"

    aput-object v12, v11, v6

    .line 154
    aput-object v16, v11, v8

    const/16 v12, 0x2f

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "366"

    aput-object v12, v11, v6

    .line 155
    aput-object v16, v11, v8

    const/16 v12, 0x30

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "367"

    aput-object v12, v11, v6

    .line 156
    aput-object v16, v11, v8

    const/16 v12, 0x31

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "368"

    aput-object v12, v11, v6

    .line 157
    aput-object v16, v11, v8

    const/16 v12, 0x32

    aput-object v11, v1, v12

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "369"

    aput-object v12, v11, v6

    .line 158
    aput-object v16, v11, v8

    const/16 v12, 0x33

    aput-object v11, v1, v12

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "390"

    aput-object v12, v11, v6

    aput-object v0, v11, v8

    .line 159
    aput-object v31, v11, v2

    const/16 v12, 0x34

    aput-object v11, v1, v12

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "391"

    aput-object v12, v11, v6

    aput-object v0, v11, v8

    .line 160
    aput-object v7, v11, v2

    const/16 v12, 0x35

    aput-object v11, v1, v12

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "392"

    aput-object v12, v11, v6

    aput-object v0, v11, v8

    .line 161
    aput-object v31, v11, v2

    const/16 v12, 0x36

    aput-object v11, v1, v12

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "393"

    aput-object v12, v11, v6

    aput-object v0, v11, v8

    .line 162
    aput-object v7, v11, v2

    const/16 v12, 0x37

    aput-object v11, v1, v12

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "703"

    aput-object v12, v11, v6

    aput-object v0, v11, v8

    .line 163
    aput-object v29, v11, v2

    const/16 v12, 0x38

    aput-object v11, v1, v12

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    new-array v1, v5, [[Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v11, "7001"

    aput-object v11, v5, v6

    .line 169
    aput-object v27, v5, v8

    aput-object v5, v1, v6

    new-array v5, v4, [Ljava/lang/Object;

    const-string v11, "7002"

    aput-object v11, v5, v6

    aput-object v0, v5, v8

    .line 170
    aput-object v29, v5, v2

    aput-object v5, v1, v8

    new-array v5, v2, [Ljava/lang/Object;

    const-string v11, "7003"

    aput-object v11, v5, v6

    .line 171
    aput-object v24, v5, v8

    aput-object v5, v1, v2

    new-array v5, v2, [Ljava/lang/Object;

    const-string v11, "8001"

    aput-object v11, v5, v6

    .line 173
    aput-object v10, v5, v8

    aput-object v5, v1, v4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "8002"

    aput-object v10, v5, v6

    aput-object v0, v5, v8

    .line 174
    aput-object v14, v5, v2

    aput-object v5, v1, v17

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "8003"

    aput-object v10, v5, v6

    aput-object v0, v5, v8

    .line 175
    aput-object v29, v5, v2

    aput-object v5, v1, v18

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "8004"

    aput-object v10, v5, v6

    aput-object v0, v5, v8

    .line 176
    aput-object v29, v5, v2

    aput-object v5, v1, v15

    new-array v5, v2, [Ljava/lang/Object;

    const-string v10, "8005"

    aput-object v10, v5, v6

    .line 177
    aput-object v16, v5, v8

    aput-object v5, v1, v19

    new-array v5, v2, [Ljava/lang/Object;

    const-string v10, "8006"

    aput-object v10, v5, v6

    .line 178
    aput-object v7, v5, v8

    aput-object v5, v1, v20

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "8007"

    aput-object v10, v5, v6

    aput-object v0, v5, v8

    .line 179
    aput-object v29, v5, v2

    aput-object v5, v1, v22

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "8008"

    aput-object v10, v5, v6

    aput-object v0, v5, v8

    .line 180
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v2

    aput-object v5, v1, v23

    new-array v5, v2, [Ljava/lang/Object;

    const-string v10, "8018"

    aput-object v10, v5, v6

    .line 181
    aput-object v7, v5, v8

    aput-object v5, v1, v25

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "8020"

    aput-object v7, v5, v6

    aput-object v0, v5, v8

    .line 182
    const/16 v7, 0x19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    aput-object v5, v1, v26

    new-array v5, v2, [Ljava/lang/Object;

    const-string v7, "8100"

    aput-object v7, v5, v6

    .line 183
    aput-object v16, v5, v8

    aput-object v5, v1, v21

    new-array v5, v2, [Ljava/lang/Object;

    const-string v7, "8101"

    aput-object v7, v5, v6

    .line 184
    aput-object v24, v5, v8

    aput-object v5, v1, v9

    new-array v5, v2, [Ljava/lang/Object;

    const-string v7, "8102"

    aput-object v7, v5, v6

    .line 185
    aput-object v3, v5, v8

    aput-object v5, v1, v30

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "8110"

    aput-object v5, v3, v6

    aput-object v0, v3, v8

    .line 186
    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v3, v1, v32

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "8200"

    aput-object v4, v3, v6

    aput-object v0, v3, v8

    .line 187
    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    aput-object v3, v1, v33

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    return-object v1

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_f

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "firstTwoDigits":Ljava/lang/String;
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v5, v4

    move-object v7, v1

    const/4 v6, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v5, :cond_3

    aget-object v9, v4, v6

    .line 207
    .local v7, "dataLength":[Ljava/lang/Object;
    move-object v7, v9

    aget-object v9, v9, v0

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 208
    aget-object v0, v7, v8

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 209
    aget-object v0, v7, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :cond_1
    aget-object v0, v7, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    .end local v7    # "dataLength":[Ljava/lang/Object;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_e

    .line 219
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "firstThreeDigits":Ljava/lang/String;
    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v7, v6

    move-object v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_6

    aget-object v11, v6, v9

    .line 222
    .local v10, "dataLength":[Ljava/lang/Object;
    move-object v10, v11

    aget-object v11, v11, v0

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 223
    aget-object v0, v10, v8

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 224
    aget-object v0, v10, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_4
    aget-object v0, v10, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    .end local v10    # "dataLength":[Ljava/lang/Object;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 231
    :cond_6
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    const/4 v9, 0x4

    if-ge v7, v6, :cond_9

    aget-object v11, v5, v7

    .line 232
    .restart local v10    # "dataLength":[Ljava/lang/Object;
    move-object v10, v11

    aget-object v11, v11, v0

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 233
    aget-object v0, v10, v8

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v1, :cond_7

    .line 234
    aget-object v0, v10, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_7
    aget-object v0, v10, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    .end local v10    # "dataLength":[Ljava/lang/Object;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_d

    .line 244
    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "firstFourDigits":Ljava/lang/String;
    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v7, v6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_c

    aget-object v11, v6, v10

    .line 247
    .local v1, "dataLength":[Ljava/lang/Object;
    move-object v1, v11

    aget-object v11, v11, v0

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 248
    aget-object v0, v1, v8

    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v6, :cond_a

    .line 249
    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 251
    :cond_a
    aget-object v0, v1, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    .end local v1    # "dataLength":[Ljava/lang/Object;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 255
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 241
    .end local v5    # "firstFourDigits":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 216
    .end local v4    # "firstThreeDigits":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 201
    .end local v3    # "firstTwoDigits":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "aiSize"    # I
    .param p1, "fieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, p0, p1

    if-lt v1, v2, :cond_1

    .line 269
    add-int v1, p0, p1

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "field":Ljava/lang/String;
    add-int v2, p0, p1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "remaining":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "result":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 273
    .local v5, "parsedAI":Ljava/lang/String;
    move-object v5, v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 266
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v5    # "parsedAI":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 260
    .end local v0    # "ai":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "aiSize"    # I
    .param p1, "variableFieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, p0, p1

    if-ge v1, v2, :cond_0

    .line 281
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "maxSize":I
    goto :goto_0

    .line 283
    .end local v1    # "maxSize":I
    :cond_0
    add-int v1, p0, p1

    .line 285
    .restart local v1    # "maxSize":I
    :goto_0
    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "remaining":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "result":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 289
    .local v6, "parsedAI":Ljava/lang/String;
    move-object v6, v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
