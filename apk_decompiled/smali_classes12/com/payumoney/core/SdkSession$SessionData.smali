.class Lcom/payumoney/core/SdkSession$SessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/SdkSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionData"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/SdkSession;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/payumoney/core/SdkSession;)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$SessionData;->a:Lcom/payumoney/core/SdkSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/payumoney/core/SdkSession$SessionData;->b:Ljava/lang/String;

    .line 1398
    const-string p1, "0"

    iput-object p1, p0, Lcom/payumoney/core/SdkSession$SessionData;->c:Ljava/lang/String;

    .line 1401
    invoke-virtual {p0}, Lcom/payumoney/core/SdkSession$SessionData;->reset()V

    .line 1402
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$SessionData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/SdkSession$SessionData;->b:Ljava/lang/String;

    .line 1419
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .line 1414
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$SessionData;->b:Ljava/lang/String;

    .line 1415
    return-void
.end method

.method public setrevisedCashbackReceivedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1406
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$SessionData;->c:Ljava/lang/String;

    .line 1407
    return-void
.end method
