.class Lcom/payu/custombrowser/Bank$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->dismissReviewOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$33;->a:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$33;->a:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->H:Z

    if-nez v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$33;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->hideReviewOrderHorizontalBar()V

    .line 955
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$33;->a:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->hideReviewOrderDetails()V

    .line 957
    :cond_0
    return-void
.end method
