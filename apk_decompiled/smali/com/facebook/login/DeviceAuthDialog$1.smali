.class Lcom/facebook/login/DeviceAuthDialog$1;
.super Landroid/app/Dialog;
.source "DeviceAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .line 117
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog;->onBackButtonPressed()V

    .line 121
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 122
    return-void
.end method
