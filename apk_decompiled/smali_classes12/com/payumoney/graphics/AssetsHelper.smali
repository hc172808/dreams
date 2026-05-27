.class public Lcom/payumoney/graphics/AssetsHelper;
.super Ljava/lang/Object;
.source "AssetsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/graphics/AssetsHelper$MASTERPASS;,
        Lcom/payumoney/graphics/AssetsHelper$SDK_TYPE;,
        Lcom/payumoney/graphics/AssetsHelper$LARGECARD;,
        Lcom/payumoney/graphics/AssetsHelper$LARGEBANK;,
        Lcom/payumoney/graphics/AssetsHelper$BRANDING;,
        Lcom/payumoney/graphics/AssetsHelper$CARD;,
        Lcom/payumoney/graphics/AssetsHelper$ScreenDensity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "card"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "CIRRUS"

    const-string v2, "DISCOVER"

    const-string v3, "VISA"

    const-string v4, "RPAY"

    const-string v5, "AMEX"

    const-string v6, "JCB"

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "DINERS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "MAESTRO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "MASTER_CARD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 119
    const-string v0, "UNKNOWN"

    return-object v0

    .line 117
    :pswitch_0
    return-object v6

    .line 115
    :pswitch_1
    return-object v1

    .line 113
    :pswitch_2
    return-object v3

    .line 111
    :pswitch_3
    const-string v0, "DINER"

    return-object v0

    .line 109
    :pswitch_4
    const-string v0, "MTRO"

    return-object v0

    .line 107
    :pswitch_5
    return-object v4

    .line 105
    :pswitch_6
    return-object v2

    .line 103
    :pswitch_7
    const-string v0, "MCRD"

    return-object v0

    .line 101
    :pswitch_8
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35284533 -> :sswitch_8
        0x11e29 -> :sswitch_7
        0x1eb5df -> :sswitch_6
        0x267af6 -> :sswitch_5
        0x283441 -> :sswitch_4
        0x3eee67e9 -> :sswitch_3
        0x5c1e290f -> :sswitch_2
        0x767fea44 -> :sswitch_1
        0x7832c03d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
