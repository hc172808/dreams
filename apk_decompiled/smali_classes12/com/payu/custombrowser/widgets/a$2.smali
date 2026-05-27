.class Lcom/payu/custombrowser/widgets/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/widgets/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/widgets/a;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/widgets/a;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/a$2;->a:Lcom/payu/custombrowser/widgets/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 124
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/a$2;->a:Lcom/payu/custombrowser/widgets/a;

    invoke-static {v0}, Lcom/payu/custombrowser/widgets/a;->c(Lcom/payu/custombrowser/widgets/a;)Lcom/payu/custombrowser/util/c;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/a$2;->a:Lcom/payu/custombrowser/widgets/a;

    invoke-static {v1}, Lcom/payu/custombrowser/widgets/a;->b(Lcom/payu/custombrowser/widgets/a;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 125
    return-void
.end method
