.class public final Lcom/facebook/appevents/ml/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/facebook/appevents/ml/Utils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,137:1\n45#2:138\n17#2,22:139\n37#3,2:161\n*E\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/facebook/appevents/ml/Utils\n*L\n54#1:138\n54#1,22:139\n55#1,2:161\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J\u001e\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\u0006H\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/Utils;",
        "",
        "()V",
        "DIR_NAME",
        "",
        "getMlDir",
        "Ljava/io/File;",
        "normalizeString",
        "str",
        "parseModelWeights",
        "",
        "Lcom/facebook/appevents/ml/MTensor;",
        "file",
        "vectorize",
        "",
        "texts",
        "maxLen",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "facebook_ml/"

.field public static final INSTANCE:Lcom/facebook/appevents/ml/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/facebook/appevents/ml/Utils;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/Utils;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/Utils;->INSTANCE:Lcom/facebook/appevents/ml/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMlDir()Ljava/io/File;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 61
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FacebookSdk.getApplicationContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "facebook_ml/"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    move-object v2, v1

    .line 62
    :goto_1
    return-object v2

    .end local v1    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final parseModelWeights(Ljava/io/File;)Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v3, p0

    .local v3, "file":Ljava/io/File;
    :try_start_0
    const-string v0, "file"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    nop

    .line 84
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    .line 85
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 86
    .local v4, "length":I
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v5, "dataIs":Ljava/io/DataInputStream;
    new-array v6, v4, [B

    .line 88
    .local v6, "allData":[B
    invoke-virtual {v5, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 89
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 90
    const/4 v7, 0x4

    if-ge v4, v7, :cond_1

    .line 91
    return-object v2

    .line 93
    :cond_1
    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 94
    .local v9, "bb":Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    const-string v10, "bb"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 96
    .local v10, "jsonLen":I
    add-int/lit8 v11, v10, 0x4

    if-ge v4, v11, :cond_2

    .line 97
    return-object v2

    .line 99
    :cond_2
    new-instance v11, Ljava/lang/String;

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v7, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v7, v11

    .line 100
    .local v7, "jsonStr":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v11, "info":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v12

    .line 102
    .local v12, "names":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    .line 103
    .local v13, "keys":[Ljava/lang/String;
    array-length v14, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_3

    .line 104
    .local v15, "i":I
    :try_start_2
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    nop

    .end local v15    # "i":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "dataIs":Ljava/io/DataInputStream;
    .end local v6    # "allData":[B
    .end local v7    # "jsonStr":Ljava/lang/String;
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    .end local v10    # "jsonLen":I
    .end local v11    # "info":Lorg/json/JSONObject;
    .end local v12    # "names":Lorg/json/JSONArray;
    .end local v13    # "keys":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v19, v3

    goto/16 :goto_4

    .line 106
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v5    # "dataIs":Ljava/io/DataInputStream;
    .restart local v6    # "allData":[B
    .restart local v7    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "bb":Ljava/nio/ByteBuffer;
    .restart local v10    # "jsonLen":I
    .restart local v11    # "info":Lorg/json/JSONObject;
    .restart local v12    # "names":Lorg/json/JSONArray;
    .restart local v13    # "keys":[Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {v13}, Lkotlin/collections/ArraysKt;->sort([Ljava/lang/Object;)V

    .line 107
    add-int/lit8 v14, v10, 0x4

    .line 108
    .local v14, "offset":I
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v15, "weights":Ljava/util/HashMap;
    array-length v8, v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_7

    :try_start_4
    aget-object v17, v13, v2

    move-object/from16 v18, v17

    .line 110
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    .local v17, "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_4

    .line 111
    move-object/from16 v19, v3

    move/from16 v23, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v18, v8

    const/4 v5, 0x0

    goto :goto_3

    .line 113
    :cond_4
    const/16 v18, 0x1

    .line 114
    .local v18, "count":I
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, v19

    .line 115
    .local v20, "shapes":Lorg/json/JSONArray;
    move-object/from16 v19, v3

    .end local v3    # "file":Ljava/io/File;
    .local v19, "file":Ljava/io/File;
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [I

    .line 116
    .local v3, "shape":[I
    move-object/from16 v21, v5

    .end local v5    # "dataIs":Ljava/io/DataInputStream;
    .local v21, "dataIs":Ljava/io/DataInputStream;
    array-length v5, v3

    move-object/from16 v22, v7

    move/from16 v7, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    .end local v18    # "count":I
    .local v7, "count":I
    .local v22, "jsonStr":Ljava/lang/String;
    :goto_2
    if-ge v8, v5, :cond_5

    .line 117
    .local v8, "i":I
    move/from16 v23, v5

    move-object/from16 v5, v20

    .end local v20    # "shapes":Lorg/json/JSONArray;
    .local v5, "shapes":Lorg/json/JSONArray;
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v20

    aput v20, v3, v8

    .line 118
    aget v20, v3, v8

    mul-int v7, v7, v20

    .line 116
    nop

    .end local v8    # "i":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v20, v5

    move/from16 v5, v23

    goto :goto_2

    .line 120
    .end local v5    # "shapes":Lorg/json/JSONArray;
    .restart local v20    # "shapes":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v5, v20

    .end local v20    # "shapes":Lorg/json/JSONArray;
    .restart local v5    # "shapes":Lorg/json/JSONArray;
    mul-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v14

    if-le v8, v4, :cond_6

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_6
    mul-int/lit8 v8, v7, 0x4

    invoke-static {v6, v14, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 124
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    .local v8, "bb":Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 125
    new-instance v9, Lcom/facebook/appevents/ml/MTensor;

    invoke-direct {v9, v3}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 126
    .local v9, "tensor":Lcom/facebook/appevents/ml/MTensor;
    move-object/from16 v20, v3

    .end local v3    # "shape":[I
    .local v20, "shape":[I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    move/from16 v23, v4

    .end local v4    # "length":I
    .local v23, "length":I
    invoke-virtual {v9}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v4

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v5    # "shapes":Lorg/json/JSONArray;
    .local v24, "shapes":Lorg/json/JSONArray;
    invoke-virtual {v3, v4, v5, v7}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 127
    move-object v3, v15

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    mul-int/lit8 v3, v7, 0x4

    add-int/2addr v14, v3

    move-object v9, v8

    .line 109
    .end local v7    # "count":I
    .end local v8    # "bb":Ljava/nio/ByteBuffer;
    .end local v20    # "shape":[I
    .end local v24    # "shapes":Lorg/json/JSONArray;
    .local v9, "bb":Ljava/nio/ByteBuffer;
    :goto_3
    nop

    .end local v0    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    move/from16 v8, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    move/from16 v4, v23

    goto/16 :goto_1

    .line 130
    .end local v17    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v21    # "dataIs":Ljava/io/DataInputStream;
    .end local v22    # "jsonStr":Ljava/lang/String;
    .end local v23    # "length":I
    .local v0, "inputStream":Ljava/io/InputStream;
    .local v3, "file":Ljava/io/File;
    .restart local v4    # "length":I
    .local v5, "dataIs":Ljava/io/DataInputStream;
    .local v7, "jsonStr":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move/from16 v23, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "length":I
    .end local v5    # "dataIs":Ljava/io/DataInputStream;
    .end local v7    # "jsonStr":Ljava/lang/String;
    .restart local v17    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v21    # "dataIs":Ljava/io/DataInputStream;
    .restart local v22    # "jsonStr":Ljava/lang/String;
    .restart local v23    # "length":I
    move-object v0, v15

    check-cast v0, Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v0

    .line 134
    .end local v6    # "allData":[B
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    .end local v10    # "jsonLen":I
    .end local v11    # "info":Lorg/json/JSONObject;
    .end local v12    # "names":Lorg/json/JSONArray;
    .end local v13    # "keys":[Ljava/lang/String;
    .end local v14    # "offset":I
    .end local v15    # "weights":Ljava/util/HashMap;
    .end local v17    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v21    # "dataIs":Ljava/io/DataInputStream;
    .end local v22    # "jsonStr":Ljava/lang/String;
    .end local v23    # "length":I
    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_5

    .line 131
    .restart local v19    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v19    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v19, v3

    .line 133
    .end local v3    # "file":Ljava/io/File;
    .restart local v19    # "file":Ljava/io/File;
    :goto_4
    nop

    .line 134
    const/4 v2, 0x0

    return-object v2

    .end local v19    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/facebook/appevents/ml/Utils;
    move-object/from16 v0, p1

    .local v0, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "str"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v3, v0

    .local v3, "$this$trim$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 138
    .local v4, "$i$f$trim":I
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    .local v5, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 139
    .local v6, "$i$f$trim":I
    const/4 v7, 0x0

    .line 140
    .local v7, "startIndex$iv$iv":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 141
    .local v8, "endIndex$iv$iv":I
    const/4 v10, 0x0

    .line 143
    .local v10, "startFound$iv$iv":Z
    :goto_0
    const/4 v11, 0x0

    if-gt v7, v8, :cond_6

    .line 144
    if-nez v10, :cond_1

    move v12, v7

    goto :goto_1

    :cond_1
    move v12, v8

    .line 145
    .local v12, "index$iv$iv":I
    :goto_1
    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .local v13, "it":C
    const/4 v14, 0x0

    .line 54
    .local v14, "$i$a$-trim-Utils$normalizeString$trim$1":I
    const/16 v15, 0x20

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 147
    .end local v14    # "$i$a$-trim-Utils$normalizeString$trim$1":I
    .local v13, "match$iv$iv":Z
    :goto_2
    if-nez v10, :cond_4

    .line 148
    if-nez v13, :cond_3

    .line 149
    const/4 v10, 0x1

    goto :goto_3

    .line 151
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 153
    :cond_4
    if-nez v13, :cond_5

    .line 154
    goto :goto_4

    .line 156
    :cond_5
    add-int/lit8 v8, v8, -0x1

    .line 157
    .end local v12    # "index$iv$iv":I
    .end local v13    # "match$iv$iv":Z
    :goto_3
    nop

    .line 143
    goto :goto_0

    .line 160
    .end local v2    # "this":Lcom/facebook/appevents/ml/Utils;
    :cond_6
    :goto_4
    add-int/lit8 v9, v8, 0x1

    invoke-interface {v5, v7, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 138
    .end local v5    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v6    # "$i$f$trim":I
    .end local v7    # "startIndex$iv$iv":I
    .end local v8    # "endIndex$iv$iv":I
    .end local v10    # "startFound$iv$iv":Z
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .end local v3    # "$this$trim$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trim":I
    move-object v3, v5

    .line 55
    .local v3, "trim":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "\\s+"

    new-instance v6, Lkotlin/text/Regex;

    invoke-direct {v6, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v11}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 161
    .local v5, "$i$f$toTypedArray":I
    move-object v6, v4

    .line 162
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v7, v11, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 55
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v7, [Ljava/lang/String;

    move-object v4, v7

    .line 56
    .local v4, "strArray":[Ljava/lang/String;
    const-string v5, " "

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TextUtils.join(\" \", strArray)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5

    .line 162
    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v5    # "$i$f$toTypedArray":I
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_7
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v0    # "str":Ljava/lang/String;
    .end local v3    # "trim":Ljava/lang/String;
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final vectorize(Ljava/lang/String;I)[I
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/ml/Utils;
    .local p1, "texts":Ljava/lang/String;
    .local p2, "maxLen":I
    :try_start_0
    const-string/jumbo v2, "texts"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-array v2, p2, [I

    .line 41
    .local v2, "ret":[I
    invoke-virtual {v0, p1}, Lcom/facebook/appevents/ml/Utils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "normalizedStr":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v5, "Charset.forName(\"UTF-8\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .local v4, "strBytes":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_2

    .line 44
    .local v6, "i":I
    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 45
    aget-byte v7, v4, v6

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v6

    goto :goto_1

    .line 47
    .end local v0    # "this":Lcom/facebook/appevents/ml/Utils;
    :cond_1
    aput v5, v2, v6

    .line 48
    :goto_1
    nop

    .line 43
    nop

    .end local v6    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    :cond_2
    return-object v2

    .line 42
    .end local v4    # "strBytes":[B
    :cond_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v2    # "ret":[I
    .end local v3    # "normalizedStr":Ljava/lang/String;
    .end local p1    # "texts":Ljava/lang/String;
    .end local p2    # "maxLen":I
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
