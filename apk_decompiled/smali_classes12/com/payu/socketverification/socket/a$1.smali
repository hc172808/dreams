.class final Lcom/payu/socketverification/socket/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/socketverification/socket/a;->a(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/payu/socketverification/socket/a;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/socket/a;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/payu/socketverification/socket/a$1;->b:Lcom/payu/socketverification/socket/a;

    iput-object p2, p0, Lcom/payu/socketverification/socket/a$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I

    .line 36
    nop

    .end local p2    # "keyCode":I
    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 37
    nop

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 38
    iget-object p1, p0, Lcom/payu/socketverification/socket/a$1;->b:Lcom/payu/socketverification/socket/a;

    .end local p0    # "this":Lcom/payu/socketverification/socket/a$1;
    iget-object p2, p0, Lcom/payu/socketverification/socket/a$1;->a:Ljava/lang/ref/WeakReference;

    .line 1015
    nop

    .line 1060
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/payu/socketverification/R$style;->payu_network_dialog:I

    invoke-direct {p3, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1061
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1062
    const-string v0, "Do you really want to cancel the transaction ?"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1063
    new-instance v0, Lcom/payu/socketverification/socket/a$2;

    invoke-direct {v0, p1}, Lcom/payu/socketverification/socket/a$2;-><init>(Lcom/payu/socketverification/socket/a;)V

    const-string v1, "Ok"

    invoke-virtual {p3, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1070
    new-instance v0, Lcom/payu/socketverification/socket/a$3;

    invoke-direct {v0, p1, p2}, Lcom/payu/socketverification/socket/a$3;-><init>(Lcom/payu/socketverification/socket/a;Ljava/lang/ref/WeakReference;)V

    const-string p1, "Cancel"

    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1077
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 40
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
