.class final Lcom/payu/socketverification/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/socketverification/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/socketverification/a/a;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/a/a;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/payu/socketverification/a/a$2;->a:Lcom/payu/socketverification/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 217
    const-string v0, "PayU"

    const-string v1, "Post Delayed... "

    invoke-static {v0, v1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/payu/socketverification/a/a$2;->a:Lcom/payu/socketverification/a/a;

    const-string v1, "VERIFY"

    invoke-static {v0, v1}, Lcom/payu/socketverification/a/a;->a(Lcom/payu/socketverification/a/a;Ljava/lang/String;)V

    .line 221
    return-void
.end method
