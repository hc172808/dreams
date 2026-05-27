.class final Lcom/payu/upisdk/upi/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/upi/a$2;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upi/a$2;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upi/a$2;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/payu/upisdk/upi/a$2$1;->a:Lcom/payu/upisdk/upi/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$2$1;->a:Lcom/payu/upisdk/upi/a$2;

    iget-object v0, v0, Lcom/payu/upisdk/upi/a$2;->a:Lcom/payu/upisdk/upi/a;

    .line 1023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 189
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/upisdk/upi/a$2$1;->a:Lcom/payu/upisdk/upi/a$2;

    iget-object v0, v0, Lcom/payu/upisdk/upi/a$2;->a:Lcom/payu/upisdk/upi/a;

    .line 2023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$2$1;->a:Lcom/payu/upisdk/upi/a$2;

    iget-object v0, v0, Lcom/payu/upisdk/upi/a$2;->a:Lcom/payu/upisdk/upi/a;

    .line 3023
    invoke-virtual {v0}, Lcom/payu/upisdk/upi/a;->a()V

    .line 194
    :cond_0
    return-void
.end method
