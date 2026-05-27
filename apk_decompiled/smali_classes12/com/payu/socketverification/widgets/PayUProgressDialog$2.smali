.class final Lcom/payu/socketverification/widgets/PayUProgressDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/socketverification/widgets/PayUProgressDialog;->setPayUDialogSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/socketverification/widgets/PayUProgressDialog;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/widgets/PayUProgressDialog;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$2;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 126
    nop

    .end local p0    # "this":Lcom/payu/socketverification/widgets/PayUProgressDialog$2;
    iget-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$2;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    iget-object p1, p1, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a:Ljava/util/Timer;

    invoke-static {p1}, Lcom/payu/socketverification/util/b;->a(Ljava/util/Timer;)V

    .line 127
    return-void
.end method
