.class public final Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;
.super Ljava/lang/Object;
.source "ModelManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\"\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0004J\u001c\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;",
        "",
        "()V",
        "build",
        "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
        "json",
        "Lorg/json/JSONObject;",
        "deleteOldFiles",
        "",
        "useCase",
        "",
        "versionId",
        "",
        "download",
        "uri",
        "name",
        "onComplete",
        "Lcom/facebook/appevents/internal/FileDownloadTask$Callback;",
        "execute",
        "handler",
        "master",
        "slaves",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 316
    invoke-direct {p0}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$download(Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "onComplete"    # Lcom/facebook/appevents/internal/FileDownloadTask$Callback;

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;->download(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V

    return-void
.end method

.method private final deleteOldFiles(Ljava/lang/String;I)V
    .locals 11
    .param p1, "useCase"    # Ljava/lang/String;
    .param p2, "versionId"    # I

    .line 357
    invoke-static {}, Lcom/facebook/appevents/ml/Utils;->getMlDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 358
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 359
    .local v1, "existingFiles":[Ljava/io/File;
    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_2

    .line 362
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "prefixWithVersion":Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 364
    .local v6, "f":Ljava/io/File;
    const-string v7, "f"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "name":Ljava/lang/String;
    const-string v8, "name"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, p1, v3, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v7, v2, v3, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 366
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 363
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    nop

    .end local v6    # "f":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 369
    :cond_3
    return-void

    .line 360
    .end local v2    # "prefixWithVersion":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 357
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "existingFiles":[Ljava/io/File;
    :cond_5
    return-void
.end method

.method private final download(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "onComplete"    # Lcom/facebook/appevents/internal/FileDownloadTask$Callback;

    .line 372
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/appevents/ml/Utils;->getMlDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    .local v0, "file":Ljava/io/File;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    new-instance v1, Lcom/facebook/appevents/internal/FileDownloadTask;

    invoke-direct {v1, p1, v0, p3}, Lcom/facebook/appevents/internal/FileDownloadTask;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/internal/FileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void

    .line 374
    :cond_1
    :goto_0
    invoke-interface {p3, v0}, Lcom/facebook/appevents/internal/FileDownloadTask$Callback;->onComplete(Ljava/io/File;)V

    .line 375
    return-void
.end method


# virtual methods
.method public final build(Lorg/json/JSONObject;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 318
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 319
    goto :goto_1

    .line 321
    :cond_0
    nop

    .line 322
    :try_start_0
    const-string/jumbo v1, "use_case"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "useCase":Ljava/lang/String;
    const-string v2, "asset_uri"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 324
    .local v8, "assetUri":Ljava/lang/String;
    const-string v2, "rules_uri"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "ruleUri":Ljava/lang/String;
    const-string/jumbo v2, "version_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 326
    .local v6, "versionId":I
    sget-object v2, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    const-string/jumbo v3, "thresholds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/appevents/ml/ModelManager;->access$parseJsonArray(Lcom/facebook/appevents/ml/ModelManager;Lorg/json/JSONArray;)[F

    move-result-object v7

    .line 327
    .local v7, "thresholds":[F
    new-instance v9, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    const-string/jumbo v2, "useCase"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "assetUri"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v9

    move-object v3, v1

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .end local v1    # "useCase":Ljava/lang/String;
    .end local v5    # "ruleUri":Ljava/lang/String;
    .end local v6    # "versionId":I
    .end local v7    # "thresholds":[F
    .end local v8    # "assetUri":Ljava/lang/String;
    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 318
    :goto_1
    return-object v0
.end method

.method public final execute(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    move-object v0, p0

    check-cast v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;->execute(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Ljava/util/List;)V

    .line 336
    return-void
.end method

.method public final execute(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Ljava/util/List;)V
    .locals 4
    .param p1, "master"    # Lcom/facebook/appevents/ml/ModelManager$TaskHandler;
    .param p2, "slaves"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
            ">;)V"
        }
    .end annotation

    const-string v0, "master"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slaves"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    move-object v0, p0

    check-cast v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getUseCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getVersionId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;->deleteOldFiles(Ljava/lang/String;I)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getUseCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getVersionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "modelFileName":Ljava/lang/String;
    move-object v1, p0

    check-cast v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->getAssetUri()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1;

    invoke-direct {v3, p2}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion$execute$1;-><init>(Ljava/util/List;)V

    check-cast v3, Lcom/facebook/appevents/internal/FileDownloadTask$Callback;

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;->download(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V

    .line 354
    return-void
.end method
