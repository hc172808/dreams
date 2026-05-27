.class public final enum Lcom/hbb20/CountryCodePicker$Language;
.super Ljava/lang/Enum;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum AFRIKAANS:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum ARABIC:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum BENGALI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum CHINESE_SIMPLIFIED:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum CHINESE_TRADITIONAL:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum CZECH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum DANISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum DUTCH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum FARSI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum FRENCH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum GERMAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum GREEK:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum GUJARATI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum HEBREW:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum HINDI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum INDONESIA:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum ITALIAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum JAPANESE:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum KAZAKH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum KOREAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum MARATHI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum POLISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum PORTUGUESE:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum PUNJABI:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum RUSSIAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum SLOVAK:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum SLOVENIAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum SPANISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum SWEDISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum TAGALOG:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum TURKISH:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum UKRAINIAN:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum URDU:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum UZBEK:Lcom/hbb20/CountryCodePicker$Language;

.field public static final enum VIETNAMESE:Lcom/hbb20/CountryCodePicker$Language;


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private script:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 2379
    new-instance v0, Lcom/hbb20/CountryCodePicker$Language;

    const-string v1, "AFRIKAANS"

    const/4 v2, 0x0

    const-string v3, "af"

    invoke-direct {v0, v1, v2, v3}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$Language;->AFRIKAANS:Lcom/hbb20/CountryCodePicker$Language;

    .line 2380
    new-instance v1, Lcom/hbb20/CountryCodePicker$Language;

    const-string v3, "ARABIC"

    const/4 v4, 0x1

    const-string v5, "ar"

    invoke-direct {v1, v3, v4, v5}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hbb20/CountryCodePicker$Language;->ARABIC:Lcom/hbb20/CountryCodePicker$Language;

    .line 2381
    new-instance v3, Lcom/hbb20/CountryCodePicker$Language;

    const-string v5, "BENGALI"

    const/4 v6, 0x2

    const-string v7, "bn"

    invoke-direct {v3, v5, v6, v7}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/hbb20/CountryCodePicker$Language;->BENGALI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2382
    new-instance v5, Lcom/hbb20/CountryCodePicker$Language;

    const-string v9, "CHINESE_SIMPLIFIED"

    const/4 v10, 0x3

    const-string v11, "zh"

    const-string v12, "CN"

    const-string v13, "Hans"

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/hbb20/CountryCodePicker$Language;->CHINESE_SIMPLIFIED:Lcom/hbb20/CountryCodePicker$Language;

    .line 2383
    new-instance v7, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "CHINESE_TRADITIONAL"

    const/16 v16, 0x4

    const-string v17, "zh"

    const-string v18, "TW"

    const-string v19, "Hant"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/hbb20/CountryCodePicker$Language;->CHINESE_TRADITIONAL:Lcom/hbb20/CountryCodePicker$Language;

    .line 2384
    new-instance v8, Lcom/hbb20/CountryCodePicker$Language;

    const-string v9, "CZECH"

    const/4 v10, 0x5

    const-string v11, "cs"

    invoke-direct {v8, v9, v10, v11}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/hbb20/CountryCodePicker$Language;->CZECH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2385
    new-instance v9, Lcom/hbb20/CountryCodePicker$Language;

    const-string v11, "DANISH"

    const/4 v12, 0x6

    const-string v13, "da"

    invoke-direct {v9, v11, v12, v13}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/hbb20/CountryCodePicker$Language;->DANISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2386
    new-instance v11, Lcom/hbb20/CountryCodePicker$Language;

    const-string v13, "DUTCH"

    const/4 v14, 0x7

    const-string v15, "nl"

    invoke-direct {v11, v13, v14, v15}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/hbb20/CountryCodePicker$Language;->DUTCH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2387
    new-instance v13, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "ENGLISH"

    const/16 v14, 0x8

    const-string v12, "en"

    invoke-direct {v13, v15, v14, v12}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2388
    new-instance v12, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "FARSI"

    const/16 v14, 0x9

    const-string v10, "fa"

    invoke-direct {v12, v15, v14, v10}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/hbb20/CountryCodePicker$Language;->FARSI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2389
    new-instance v10, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "FRENCH"

    const/16 v14, 0xa

    const-string v6, "fr"

    invoke-direct {v10, v15, v14, v6}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/hbb20/CountryCodePicker$Language;->FRENCH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2390
    new-instance v6, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "GERMAN"

    const/16 v14, 0xb

    const-string v4, "de"

    invoke-direct {v6, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/hbb20/CountryCodePicker$Language;->GERMAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2391
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "GREEK"

    const/16 v14, 0xc

    const-string v2, "el"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->GREEK:Lcom/hbb20/CountryCodePicker$Language;

    .line 2392
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "GUJARATI"

    const/16 v14, 0xd

    move-object/from16 v20, v4

    const-string v4, "gu"

    invoke-direct {v2, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->GUJARATI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2393
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "HEBREW"

    const/16 v14, 0xe

    move-object/from16 v21, v2

    const-string v2, "iw"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->HEBREW:Lcom/hbb20/CountryCodePicker$Language;

    .line 2394
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "HINDI"

    const/16 v14, 0xf

    move-object/from16 v22, v4

    const-string v4, "hi"

    invoke-direct {v2, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->HINDI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2395
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "INDONESIA"

    const/16 v14, 0x10

    move-object/from16 v23, v2

    const-string v2, "in"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->INDONESIA:Lcom/hbb20/CountryCodePicker$Language;

    .line 2396
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "ITALIAN"

    const/16 v14, 0x11

    move-object/from16 v24, v4

    const-string v4, "it"

    invoke-direct {v2, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->ITALIAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2397
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "JAPANESE"

    const/16 v14, 0x12

    move-object/from16 v25, v2

    const-string v2, "ja"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->JAPANESE:Lcom/hbb20/CountryCodePicker$Language;

    .line 2398
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "KAZAKH"

    const/16 v14, 0x13

    move-object/from16 v26, v4

    const-string v4, "kk"

    invoke-direct {v2, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->KAZAKH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2399
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "KOREAN"

    const/16 v14, 0x14

    move-object/from16 v27, v2

    const-string v2, "ko"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->KOREAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2400
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "MARATHI"

    const/16 v14, 0x15

    move-object/from16 v28, v4

    const-string v4, "mr"

    invoke-direct {v2, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->MARATHI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2401
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "POLISH"

    const/16 v14, 0x16

    move-object/from16 v29, v2

    const-string v2, "pl"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->POLISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2402
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "PORTUGUESE"

    const/16 v14, 0x17

    move-object/from16 v30, v4

    const-string v4, "pt"

    invoke-direct {v2, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->PORTUGUESE:Lcom/hbb20/CountryCodePicker$Language;

    .line 2403
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v15, "PUNJABI"

    const/16 v14, 0x18

    move-object/from16 v31, v2

    const-string v2, "pa"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->PUNJABI:Lcom/hbb20/CountryCodePicker$Language;

    .line 2404
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "RUSSIAN"

    const/16 v15, 0x19

    move-object/from16 v32, v4

    const-string v4, "ru"

    invoke-direct {v2, v14, v15, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->RUSSIAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2405
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "SLOVAK"

    const/16 v15, 0x1a

    move-object/from16 v33, v2

    const-string v2, "sk"

    invoke-direct {v4, v14, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->SLOVAK:Lcom/hbb20/CountryCodePicker$Language;

    .line 2406
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "SLOVENIAN"

    const/16 v15, 0x1b

    move-object/from16 v34, v4

    const-string v4, "si"

    invoke-direct {v2, v14, v15, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->SLOVENIAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2407
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "SPANISH"

    const/16 v15, 0x1c

    move-object/from16 v35, v2

    const-string v2, "es"

    invoke-direct {v4, v14, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->SPANISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2408
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "SWEDISH"

    const/16 v15, 0x1d

    move-object/from16 v36, v4

    const-string v4, "sv"

    invoke-direct {v2, v14, v15, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->SWEDISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2409
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "TAGALOG"

    const/16 v15, 0x1e

    move-object/from16 v37, v2

    const-string v2, "tl"

    invoke-direct {v4, v14, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->TAGALOG:Lcom/hbb20/CountryCodePicker$Language;

    .line 2410
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "TURKISH"

    const/16 v15, 0x1f

    move-object/from16 v38, v4

    const-string v4, "tr"

    invoke-direct {v2, v14, v15, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->TURKISH:Lcom/hbb20/CountryCodePicker$Language;

    .line 2411
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "UKRAINIAN"

    const/16 v15, 0x20

    move-object/from16 v39, v2

    const-string v2, "uk"

    invoke-direct {v4, v14, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->UKRAINIAN:Lcom/hbb20/CountryCodePicker$Language;

    .line 2412
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "URDU"

    const/16 v15, 0x21

    move-object/from16 v40, v4

    const-string v4, "ur"

    invoke-direct {v2, v14, v15, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->URDU:Lcom/hbb20/CountryCodePicker$Language;

    .line 2413
    new-instance v4, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "UZBEK"

    const/16 v15, 0x22

    move-object/from16 v41, v2

    const-string v2, "uz"

    invoke-direct {v4, v14, v15, v2}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->UZBEK:Lcom/hbb20/CountryCodePicker$Language;

    .line 2414
    new-instance v2, Lcom/hbb20/CountryCodePicker$Language;

    const-string v14, "VIETNAMESE"

    const/16 v15, 0x23

    move-object/from16 v42, v4

    const-string v4, "vi"

    invoke-direct {v2, v14, v15, v4}, Lcom/hbb20/CountryCodePicker$Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$Language;->VIETNAMESE:Lcom/hbb20/CountryCodePicker$Language;

    .line 2378
    const/16 v4, 0x24

    new-array v4, v4, [Lcom/hbb20/CountryCodePicker$Language;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v8, v4, v0

    const/4 v0, 0x6

    aput-object v9, v4, v0

    const/4 v0, 0x7

    aput-object v11, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v20, v4, v0

    const/16 v0, 0xd

    aput-object v21, v4, v0

    const/16 v0, 0xe

    aput-object v22, v4, v0

    const/16 v0, 0xf

    aput-object v23, v4, v0

    const/16 v0, 0x10

    aput-object v24, v4, v0

    const/16 v0, 0x11

    aput-object v25, v4, v0

    const/16 v0, 0x12

    aput-object v26, v4, v0

    const/16 v0, 0x13

    aput-object v27, v4, v0

    const/16 v0, 0x14

    aput-object v28, v4, v0

    const/16 v0, 0x15

    aput-object v29, v4, v0

    const/16 v0, 0x16

    aput-object v30, v4, v0

    const/16 v0, 0x17

    aput-object v31, v4, v0

    const/16 v0, 0x18

    aput-object v32, v4, v0

    const/16 v0, 0x19

    aput-object v33, v4, v0

    const/16 v0, 0x1a

    aput-object v34, v4, v0

    const/16 v0, 0x1b

    aput-object v35, v4, v0

    const/16 v0, 0x1c

    aput-object v36, v4, v0

    const/16 v0, 0x1d

    aput-object v37, v4, v0

    const/16 v0, 0x1e

    aput-object v38, v4, v0

    const/16 v0, 0x1f

    aput-object v39, v4, v0

    const/16 v0, 0x20

    aput-object v40, v4, v0

    const/16 v0, 0x21

    aput-object v41, v4, v0

    const/16 v0, 0x22

    aput-object v42, v4, v0

    const/16 v0, 0x23

    aput-object v2, v4, v0

    sput-object v4, Lcom/hbb20/CountryCodePicker$Language;->$VALUES:[Lcom/hbb20/CountryCodePicker$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2427
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    .line 2428
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "country"    # Ljava/lang/String;
    .param p5, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2421
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    .line 2422
    iput-object p4, p0, Lcom/hbb20/CountryCodePicker$Language;->country:Ljava/lang/String;

    .line 2423
    iput-object p5, p0, Lcom/hbb20/CountryCodePicker$Language;->script:Ljava/lang/String;

    .line 2424
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$Language;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2378
    const-class v0, Lcom/hbb20/CountryCodePicker$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 2378
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->$VALUES:[Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 2431
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 2439
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$Language;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 2447
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$Language;->script:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 2435
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$Language;->code:Ljava/lang/String;

    .line 2436
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 2443
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$Language;->country:Ljava/lang/String;

    .line 2444
    return-void
.end method

.method public setScript(Ljava/lang/String;)V
    .locals 0
    .param p1, "script"    # Ljava/lang/String;

    .line 2451
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$Language;->script:Ljava/lang/String;

    .line 2452
    return-void
.end method
