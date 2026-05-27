.class Lcom/payumoney/graphics/helpers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static environment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/payumoney/graphics/helpers/Utils;->environment:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 58
    invoke-virtual {p1}, Lcom/payumoney/graphics/enums/ScreenDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "density":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bank/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "finalURL":Ljava/lang/String;
    return-object v1
.end method

.method static getBaseurl()Ljava/lang/String;
    .locals 2

    .line 164
    sget-object v0, Lcom/payumoney/graphics/helpers/Utils;->environment:Ljava/lang/String;

    const-string v1, "SANDBOX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "https://s3.ap-south-1.amazonaws.com/citrus-mobile-sandbox/assets"

    return-object v0

    .line 169
    :cond_0
    const-string v0, "https://s3-ap-south-1.amazonaws.com/mobilestatic"

    return-object v0
.end method

.method static getBrandingURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "branding"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 146
    invoke-virtual {p1}, Lcom/payumoney/graphics/enums/ScreenDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "density":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/branding/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "finalURL":Ljava/lang/String;
    return-object v1
.end method

.method static getCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 109
    invoke-virtual {p1}, Lcom/payumoney/graphics/enums/ScreenDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "density":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/card/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "finalURL":Ljava/lang/String;
    return-object v1
.end method

.method static getDensity(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 154
    .local v0, "density":F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    .line 155
    const-string v1, "XXHDPI"

    return-object v1

    .line 156
    :cond_0
    float-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    .line 157
    const-string v1, "XHDPI"

    return-object v1

    .line 159
    :cond_1
    const-string v1, "HDPI"

    return-object v1
.end method

.method static getLargeBankURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 97
    invoke-virtual {p1}, Lcom/payumoney/graphics/enums/ScreenDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "density":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bank-large/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "finalURL":Ljava/lang/String;
    return-object v1
.end method

.method static getLargeCardURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 121
    invoke-virtual {p1}, Lcom/payumoney/graphics/enums/ScreenDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "density":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/card-large/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "finalURL":Ljava/lang/String;
    return-object v1
.end method

.method static getLargeWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 84
    invoke-virtual {p1}, Lcom/payumoney/graphics/enums/ScreenDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "density":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/thirdparty-large/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "finalURL":Ljava/lang/String;
    return-object v1
.end method

.method static getMasterPassURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Masterpass_color"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "Masterpass_bw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "MPASSW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 138
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/card-gs/xxhdpi/MPASSW.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 135
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/card/xxhdpi/MPASSW.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    goto :goto_2

    .line 132
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/card-btn/xxhdpi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    nop

    .line 142
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7814b1c7 -> :sswitch_2
        -0x3233c57f -> :sswitch_1
        -0x16a7be49 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getPGSettingIdentifier(Ljava/lang/String;)Lcom/payumoney/graphics/classes/PGSettingIdentifier;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 46
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/payumoney/graphics/classes/PGSettingIdentifier;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/graphics/classes/PGSettingIdentifier;

    .line 47
    .local v1, "pgSettingIdentifier":Lcom/payumoney/graphics/classes/PGSettingIdentifier;
    return-object v1
.end method

.method static getScreenDensity(Landroid/content/Context;)Lcom/payumoney/graphics/enums/ScreenDensity;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .local v0, "density":F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    .line 32
    sget-object v1, Lcom/payumoney/graphics/enums/ScreenDensity;->XXHDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

    return-object v1

    .line 33
    :cond_0
    float-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    .line 34
    sget-object v1, Lcom/payumoney/graphics/enums/ScreenDensity;->XHDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

    return-object v1

    .line 36
    :cond_1
    sget-object v1, Lcom/payumoney/graphics/enums/ScreenDensity;->HDPI:Lcom/payumoney/graphics/enums/ScreenDensity;

    return-object v1
.end method

.method static getWalletURL(Ljava/lang/String;Lcom/payumoney/graphics/enums/ScreenDensity;)Ljava/lang/String;
    .locals 3
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "screenDensity"    # Lcom/payumoney/graphics/enums/ScreenDensity;

    .line 71
    invoke-virtual {p1}, Lcom/payumoney/graphics/enums/ScreenDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "density":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/payumoney/graphics/helpers/Utils;->getBaseurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/thirdparty/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "finalURL":Ljava/lang/String;
    return-object v1
.end method

.method static setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p0, "env"    # Ljava/lang/String;

    .line 41
    sput-object p0, Lcom/payumoney/graphics/helpers/Utils;->environment:Ljava/lang/String;

    .line 42
    return-void
.end method
