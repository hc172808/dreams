.class Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->lambda$onCreate$0(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$RegisterActivity$1(Lcom/facebook/login/LoginResult;)V
    .locals 1
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .line 156
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$900(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public onCancel()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    const-string v1, "CANCELED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
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

    .line 166
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

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

    .line 167
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

    .line 156
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$1$RjgYBkWqHiXkE40-q9cYF-h1mHE;

    invoke-direct {v1, p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$RegisterActivity$1$RjgYBkWqHiXkE40-q9cYF-h1mHE;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;Lcom/facebook/login/LoginResult;)V

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
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

    .line 153
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
