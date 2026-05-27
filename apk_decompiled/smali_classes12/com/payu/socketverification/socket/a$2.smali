.class final Lcom/payu/socketverification/socket/a$2;
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
.field final synthetic a:Lcom/payu/socketverification/socket/a;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/socket/a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/payu/socketverification/socket/a$2;->a:Lcom/payu/socketverification/socket/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 66
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/a$2;
    iget-object p2, p0, Lcom/payu/socketverification/socket/a$2;->a:Lcom/payu/socketverification/socket/a;

    invoke-virtual {p2}, Lcom/payu/socketverification/socket/a;->b()V

    .line 67
    nop

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 68
    return-void
.end method
