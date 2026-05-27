.class final Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$batch$2;
.super Ljava/lang/Object;
.source "AccessTokenManager.kt"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/facebook/GraphResponse;",
        "onCompleted"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager$RefreshResult;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$batch$2;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$batch$2;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/AccessTokenManager$RefreshResult;->setAccessToken(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$batch$2;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/AccessTokenManager$RefreshResult;->setExpiresAt(I)V

    .line 192
    nop

    .line 193
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$batch$2;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string v2, "data_access_expiration_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/AccessTokenManager$RefreshResult;->setDataAccessExpirationTime(Ljava/lang/Long;)V

    .line 194
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$batch$2;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const/4 v2, 0x0

    const-string v3, "graph_domain"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/AccessTokenManager$RefreshResult;->setGraphDomain(Ljava/lang/String;)V

    .line 195
    .end local v0    # "data":Lorg/json/JSONObject;
    return-void

    .line 189
    :cond_0
    return-void
.end method
