.class final Lcom/payu/upisdk/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/a$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/a$1;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/a$1;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/payu/upisdk/a$1$1;->a:Lcom/payu/upisdk/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/payu/upisdk/a$1$1;->a:Lcom/payu/upisdk/a$1;

    iget-object v0, v0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    invoke-static {v0}, Lcom/payu/upisdk/a;->e(Lcom/payu/upisdk/a;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 181
    iget-object v0, p0, Lcom/payu/upisdk/a$1$1;->a:Lcom/payu/upisdk/a$1;

    iget-object v0, v0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    invoke-static {v0}, Lcom/payu/upisdk/a;->b(Lcom/payu/upisdk/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 182
    return-void
.end method
