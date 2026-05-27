.class public final Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;
.super Ljava/lang/Object;
.source "FetchedAppSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;",
        "",
        "()V",
        "DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR",
        "",
        "DIALOG_CONFIG_NAME_KEY",
        "DIALOG_CONFIG_URL_KEY",
        "DIALOG_CONFIG_VERSIONS_KEY",
        "parseDialogConfig",
        "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
        "dialogConfigJSON",
        "Lorg/json/JSONObject;",
        "parseVersionSpec",
        "",
        "versionsJSON",
        "Lorg/json/JSONArray;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 67
    invoke-direct {p0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;-><init>()V

    return-void
.end method

.method private final parseVersionSpec(Lorg/json/JSONArray;)[I
    .locals 9
    .param p1, "versionsJSON"    # Lorg/json/JSONArray;

    .line 103
    const/4 v0, 0x0

    check-cast v0, [I

    .line 104
    .local v0, "versionSpec":[I
    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 106
    .local v1, "numVersions":I
    new-array v0, v1, [I

    .line 107
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 109
    .local v2, "i":I
    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v4

    .line 110
    .local v4, "version":I
    if-ne v4, v3, :cond_0

    .line 113
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "versionString":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    nop

    .line 116
    nop

    .line 117
    :try_start_0
    const-string/jumbo v6, "versionString"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v6

    .line 119
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    move-object v7, v6

    check-cast v7, Ljava/lang/Exception;

    const-string v8, "FacebookSDK"

    invoke-static {v8, v7}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 120
    nop

    .line 116
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :goto_1
    move v4, v3

    .line 124
    .end local v5    # "versionString":Ljava/lang/String;
    :cond_0
    aput v4, v0, v2

    .line 107
    .end local v4    # "version":I
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "numVersions":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .locals 16
    .param p1, "dialogConfigJSON"    # Lorg/json/JSONObject;

    move-object/from16 v0, p1

    const-string v1, "dialogConfigJSON"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "dialogNameWithFeature":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 75
    return-object v3

    .line 77
    :cond_0
    nop

    .line 78
    const-string v2, "dialogNameWithFeature"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v2, "|"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 77
    nop

    .line 79
    .local v2, "components":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 82
    return-object v3

    .line 84
    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    .local v4, "dialogName":Ljava/lang/String;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 86
    .local v11, "featureName":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v11}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    const-string/jumbo v5, "url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, "urlString":Ljava/lang/String;
    check-cast v3, Landroid/net/Uri;

    .line 91
    .local v3, "fallbackUri":Landroid/net/Uri;
    invoke-static {v12}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 94
    :cond_3
    const-string/jumbo v5, "versions"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 95
    .local v13, "versionsJSON":Lorg/json/JSONArray;
    move-object/from16 v5, p0

    check-cast v5, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;

    invoke-direct {v5, v13}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;->parseVersionSpec(Lorg/json/JSONArray;)[I

    move-result-object v14

    .line 96
    .local v14, "featureVersionSpec":[I
    new-instance v15, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    const/4 v10, 0x0

    move-object v5, v15

    move-object v6, v4

    move-object v7, v11

    move-object v8, v3

    move-object v9, v14

    invoke-direct/range {v5 .. v10}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    .line 87
    .end local v3    # "fallbackUri":Landroid/net/Uri;
    .end local v12    # "urlString":Ljava/lang/String;
    .end local v13    # "versionsJSON":Lorg/json/JSONArray;
    .end local v14    # "featureVersionSpec":[I
    :cond_4
    :goto_0
    return-object v3
.end method
