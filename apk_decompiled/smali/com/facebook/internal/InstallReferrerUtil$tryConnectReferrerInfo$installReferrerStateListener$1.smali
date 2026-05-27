.class public final Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/InstallReferrerUtil;->tryConnectReferrerInfo(Lcom/facebook/internal/InstallReferrerUtil$Callback;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0017\u00a8\u0006\u0007"
    }
    d2 = {
        "com/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1",
        "Lcom/android/installreferrer/api/InstallReferrerStateListener;",
        "onInstallReferrerServiceDisconnected",
        "",
        "onInstallReferrerSetupFinished",
        "responseCode",
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


# instance fields
.field final synthetic $callback:Lcom/facebook/internal/InstallReferrerUtil$Callback;

.field final synthetic $referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/facebook/internal/InstallReferrerUtil$Callback;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lcom/android/installreferrer/api/InstallReferrerClient;
    .param p2, "$captured_local_variable$1"    # Lcom/facebook/internal/InstallReferrerUtil$Callback;

    .line 45
    iput-object p1, p0, Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p2, p0, Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;->$callback:Lcom/facebook/internal/InstallReferrerUtil$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 0

    .line 70
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 48
    .local v0, "this":Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;
    .local p1, "responseCode":I
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 65
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/facebook/internal/InstallReferrerUtil;->INSTANCE:Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v1}, Lcom/facebook/internal/InstallReferrerUtil;->access$updateReferrer(Lcom/facebook/internal/InstallReferrerUtil;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "this":Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;
    :pswitch_1
    goto :goto_1

    .line 50
    :pswitch_2
    nop

    .line 51
    nop

    .line 52
    :try_start_1
    iget-object v1, v0, Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "referrerClient"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v1

    const-string v2, "referrerClient.installReferrer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    nop

    .line 50
    nop

    .line 56
    .local v1, "response":Lcom/android/installreferrer/api/ReferrerDetails;
    :try_start_3
    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "referrerUrl":Ljava/lang/String;
    nop

    .line 58
    if-eqz v2, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "fb"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "facebook"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    :cond_1
    iget-object v3, v0, Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;->$callback:Lcom/facebook/internal/InstallReferrerUtil$Callback;

    invoke-interface {v3, v2}, Lcom/facebook/internal/InstallReferrerUtil$Callback;->onReceiveReferrerUrl(Ljava/lang/String;)V

    .line 62
    :cond_2
    sget-object v3, Lcom/facebook/internal/InstallReferrerUtil;->INSTANCE:Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v3}, Lcom/facebook/internal/InstallReferrerUtil;->access$updateReferrer(Lcom/facebook/internal/InstallReferrerUtil;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "response":Lcom/android/installreferrer/api/ReferrerDetails;
    .end local v2    # "referrerUrl":Ljava/lang/String;
    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0

    .line 68
    .end local p1    # "responseCode":I
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 53
    .restart local v0    # "this":Lcom/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;
    .restart local p1    # "responseCode":I
    :catch_1
    move-exception v1

    .line 54
    .local v1, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 67
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 68
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
