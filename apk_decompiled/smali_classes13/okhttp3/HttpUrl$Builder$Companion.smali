.class public final Lokhttp3/HttpUrl$Builder$Companion;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder$Companion\n*L\n1#1,1878:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001c\u0010\u000c\u001a\u00020\u0006*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Builder$Companion;",
        "",
        "()V",
        "INVALID_HOST",
        "",
        "parsePort",
        "",
        "input",
        "pos",
        "limit",
        "portColonOffset",
        "schemeDelimiterOffset",
        "slashCount",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 1483
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->parsePort(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->portColonOffset(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "$this$access_u24slashCount"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->slashCount(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final parsePort(Ljava/lang/String;II)I
    .locals 14
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1544
    nop

    .line 1546
    const/4 v1, -0x1

    :try_start_0
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf8

    const/4 v13, 0x0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v2 .. v13}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "portString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    .local v2, "i":I
    const v3, 0xffff

    const/4 v4, 0x1

    if-le v4, v2, :cond_0

    goto :goto_0

    :cond_0
    if-lt v3, v2, :cond_1

    move v1, v2

    goto :goto_0

    .line 1549
    .end local v0    # "portString":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "_":Ljava/lang/NumberFormatException;
    nop

    .line 1544
    .end local v0    # "_":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v1
.end method

.method private final portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1528
    move v0, p2

    .line 1529
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 1530
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 1532
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_1

    .line 1533
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 1532
    :cond_0
    goto :goto_1

    .line 1536
    :sswitch_1
    return v0

    .line 1537
    :cond_1
    :goto_2
    nop

    .line 1538
    add-int/lit8 v0, v0, 0x1

    .line 1529
    goto :goto_0

    .line 1540
    :cond_2
    return p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private final schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 10
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1491
    sub-int v0, p3, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1493
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1494
    .local v0, "c0":C
    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_1

    if-le v0, v3, :cond_2

    :cond_1
    if-lt v0, v4, :cond_e

    if-le v0, v2, :cond_2

    goto :goto_7

    .line 1496
    :cond_2
    add-int/lit8 v6, p2, 0x1

    :goto_0
    if-ge v6, p3, :cond_d

    .line 1497
    .local v6, "i":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1499
    if-le v5, v7, :cond_3

    goto :goto_2

    :cond_3
    if-lt v3, v7, :cond_4

    :goto_1
    goto :goto_5

    :cond_4
    :goto_2
    if-le v4, v7, :cond_5

    goto :goto_3

    :cond_5
    if-lt v2, v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    const/16 v8, 0x39

    const/16 v9, 0x30

    if-le v9, v7, :cond_7

    goto :goto_4

    :cond_7
    if-lt v8, v7, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_9

    goto :goto_1

    :cond_9
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_a

    goto :goto_1

    :cond_a
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_b

    goto :goto_1

    .line 1496
    :goto_5
    nop

    .end local v6    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1502
    .restart local v6    # "i":I
    :cond_b
    const/16 v2, 0x3a

    if-ne v7, v2, :cond_c

    move v1, v6

    goto :goto_6

    .line 1505
    :cond_c
    nop

    .line 1497
    :goto_6
    return v1

    .line 1509
    .end local v6    # "i":I
    :cond_d
    return v1

    .line 1494
    :cond_e
    :goto_7
    return v1
.end method

.method private final slashCount(Ljava/lang/String;II)I
    .locals 4
    .param p1, "$this$slashCount"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1514
    const/4 v0, 0x0

    .line 1515
    .local v0, "slashCount":I
    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_2

    .line 1516
    .local v1, "i":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1517
    .local v2, "c":C
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1520
    :cond_0
    goto :goto_2

    .line 1518
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1521
    .end local v2    # "c":C
    nop

    .line 1515
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1523
    :cond_2
    :goto_2
    return v0
.end method
