.class public final Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;
.super Ljava/lang/Object;
.source "AccessToken.kt"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessToken$Companion;->createFromNativeLinkingIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/AccessToken$AccessTokenCreationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1",
        "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;",
        "onFailure",
        "",
        "error",
        "Lcom/facebook/FacebookException;",
        "onSuccess",
        "userInfo",
        "Lorg/json/JSONObject;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

.field final synthetic $applicationId:Ljava/lang/String;

.field final synthetic $extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/facebook/AccessToken$AccessTokenCreationCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Landroid/os/Bundle;
    .param p2, "$captured_local_variable$1"    # Lcom/facebook/AccessToken$AccessTokenCreationCallback;
    .param p3, "$captured_local_variable$2"    # Ljava/lang/String;

    .line 482
    iput-object p1, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$extras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    iput-object p3, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .locals 1
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .line 501
    iget-object v0, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    invoke-interface {v0, p1}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 502
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .line 484
    nop

    .line 485
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    goto :goto_1

    .line 485
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 486
    .local v0, "userId":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$extras:Landroid/os/Bundle;

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    .line 488
    sget-object v2, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 489
    const/4 v3, 0x0

    .line 490
    iget-object v4, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$extras:Landroid/os/Bundle;

    .line 491
    sget-object v5, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    .line 492
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 493
    iget-object v7, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$applicationId:Ljava/lang/String;

    .line 488
    invoke-static/range {v2 .. v7}, Lcom/facebook/AccessToken$Companion;->access$createFromBundle(Lcom/facebook/AccessToken$Companion;Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v2

    .line 487
    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onSuccess(Lcom/facebook/AccessToken;)V

    .end local v0    # "userId":Ljava/lang/String;
    goto :goto_2

    .line 485
    :cond_1
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .end local p1    # "userInfo":Lorg/json/JSONObject;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .local v0, "ex":Ljava/lang/Exception;
    .restart local p1    # "userInfo":Lorg/json/JSONObject;
    :goto_1
    iget-object v1, p0, Lcom/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1;->$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    .line 496
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Unable to generate access token due to missing user id"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 497
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    nop

    .line 498
    return-void
.end method
