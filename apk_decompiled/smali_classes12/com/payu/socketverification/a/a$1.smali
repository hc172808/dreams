.class final Lcom/payu/socketverification/a/a$1;
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

    .line 208
    iput-object p1, p0, Lcom/payu/socketverification/a/a$1;->a:Lcom/payu/socketverification/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/payu/socketverification/a/a$1;->a:Lcom/payu/socketverification/a/a;

    const-string v1, "FINISH"

    invoke-static {v0, v1}, Lcom/payu/socketverification/a/a;->a(Lcom/payu/socketverification/a/a;Ljava/lang/String;)V

    .line 212
    return-void
.end method
