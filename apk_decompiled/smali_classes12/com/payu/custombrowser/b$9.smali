.class Lcom/payu/custombrowser/b$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b;->showTransactionStatusDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 1648
    iput-object p1, p0, Lcom/payu/custombrowser/b$9;->a:Lcom/payu/custombrowser/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 1651
    iget-object v0, p0, Lcom/payu/custombrowser/b$9;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1652
    iget-object v0, p0, Lcom/payu/custombrowser/b$9;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 1654
    return-void
.end method
