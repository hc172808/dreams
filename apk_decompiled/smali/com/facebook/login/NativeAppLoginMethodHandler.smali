.class abstract Lcom/facebook/login/NativeAppLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "NativeAppLoginMethodHandler.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 39
    return-void
.end method

.method private getError(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 130
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 132
    const-string v1, "error_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    return-object v0
.end method

.method private getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 138
    const-string v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    const-string v1, "error_description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    return-object v0
.end method

.method private handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .locals 5
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "data"    # Landroid/content/Intent;

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "error":Ljava/lang/String;
    nop

    .line 115
    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 120
    .local v2, "errorCode":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getErrorConnectionFailure()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-direct {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "errorMessage":Ljava/lang/String;
    invoke-static {p1, v1, v3, v2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    return-object v4

    .line 126
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v1}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    return-object v3
.end method

.method private handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .locals 9
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "data"    # Landroid/content/Intent;

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "error":Ljava/lang/String;
    nop

    .line 79
    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 80
    .local v2, "errorCode":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "errorMessage":Ljava/lang/String;
    const-string v5, "e2e"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "e2e":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 84
    invoke-virtual {p0, v5}, Lcom/facebook/login/NativeAppLoginMethodHandler;->logWebLoginCompleted(Ljava/lang/String;)V

    .line 87
    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 89
    nop

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    .line 94
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-static {v6, v0, v7, v8}, Lcom/facebook/login/NativeAppLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v6

    .line 95
    .local v6, "token":Lcom/facebook/AccessToken;
    invoke-static {p1, v6}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 96
    .end local v6    # "token":Lcom/facebook/AccessToken;
    :catch_0
    move-exception v6

    .line 97
    .local v6, "ex":Lcom/facebook/FacebookException;
    invoke-virtual {v6}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v4, v7}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    return-object v4

    .line 99
    .end local v6    # "ex":Lcom/facebook/FacebookException;
    :cond_2
    const-string v6, "logged_out"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    const/4 v6, 0x1

    sput-boolean v6, Lcom/facebook/login/CustomTabLoginMethodHandler;->calledThroughLoggedOutAppSwitch:Z

    .line 101
    return-object v4

    .line 102
    :cond_3
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getErrorsProxyAuthDisabled()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    return-object v4

    .line 104
    :cond_4
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getErrorsUserCanceled()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    invoke-static {p1, v4}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    return-object v4

    .line 107
    :cond_5
    invoke-static {p1, v1, v3, v2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 54
    .local v0, "request":Lcom/facebook/login/LoginClient$Request;
    if-nez p3, :cond_0

    .line 56
    const-string v1, "Operation canceled"

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    .local v1, "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_0

    .line 57
    .end local v1    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_0
    if-nez p2, :cond_1

    .line 58
    invoke-direct {p0, v0, p3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    .restart local v1    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_0

    .line 59
    .end local v1    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 60
    const/4 v1, 0x0

    .line 61
    const-string v2, "Unexpected resultCode from authorization."

    invoke-static {v0, v2, v1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    .restart local v1    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_0

    .line 64
    .end local v1    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    .line 67
    .restart local v1    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :goto_0
    if-eqz v1, :cond_3

    .line 68
    iget-object v2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, v1}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    .line 72
    :goto_1
    const/4 v2, 0x1

    return v2
.end method

.method abstract tryAuthorize(Lcom/facebook/login/LoginClient$Request;)I
.end method

.method protected tryIntent(Landroid/content/Intent;I)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 146
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 147
    return v0

    .line 151
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 159
    const/4 v0, 0x1

    return v0

    .line 152
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    return v0
.end method
