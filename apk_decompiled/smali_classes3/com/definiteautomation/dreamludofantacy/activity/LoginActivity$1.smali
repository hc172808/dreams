.class Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->lambda$onCreate$0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$LoginActivity$1(Lcom/facebook/login/LoginResult;)V
    .locals 1
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .line 105
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-static {v0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->access$400(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public onCancel()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    const-string v1, "CANCELED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loginResult"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$1$ujHJeVgU1OaxDE8Ho_wH9C4MDac;

    invoke-direct {v1, p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LoginActivity$1$ujHJeVgU1OaxDE8Ho_wH9C4MDac;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;Lcom/facebook/login/LoginResult;)V

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "loginResult"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
