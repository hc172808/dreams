.class final Lcom/payu/upisdk/upiintent/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/upiintent/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upiintent/c$1;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upiintent/c$1;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/c$1$1;->a:Lcom/payu/upisdk/upiintent/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c$1$1;->a:Lcom/payu/upisdk/upiintent/c$1;

    iget-object v0, v0, Lcom/payu/upisdk/upiintent/c$1;->a:Lcom/payu/upisdk/upiintent/c;

    const-string v1, "failure"

    const-string v2, "timeout"

    invoke-virtual {v0, v1, v2}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method
