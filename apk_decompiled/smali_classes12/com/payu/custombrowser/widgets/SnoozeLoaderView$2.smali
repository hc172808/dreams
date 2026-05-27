.class Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    invoke-static {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;I)I

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;I)I

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    invoke-static {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    invoke-static {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a(I)V

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->cancel()Z

    .line 245
    :goto_1
    return-void
.end method
