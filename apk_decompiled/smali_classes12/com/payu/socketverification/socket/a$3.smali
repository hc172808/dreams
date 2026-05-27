.class final Lcom/payu/socketverification/socket/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/socketverification/socket/a;
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

    .line 70
    iput-object p1, p0, Lcom/payu/socketverification/socket/a$3;->b:Lcom/payu/socketverification/socket/a;

    iput-object p2, p0, Lcom/payu/socketverification/socket/a$3;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 73
    nop

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    iget-object p1, p0, Lcom/payu/socketverification/socket/a$3;->b:Lcom/payu/socketverification/socket/a;

    .end local p0    # "this":Lcom/payu/socketverification/socket/a$3;
    iget-object p2, p0, Lcom/payu/socketverification/socket/a$3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2}, Lcom/payu/socketverification/socket/a;->a(Ljava/lang/ref/WeakReference;)V

    .line 75
    return-void
.end method
