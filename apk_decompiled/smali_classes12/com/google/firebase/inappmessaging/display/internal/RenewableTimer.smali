.class public Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;
.super Ljava/lang/Object;
.source "RenewableTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer$Callback;
    }
.end annotation


# instance fields
.field private mCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 53
    :cond_0
    return-void
.end method

.method public start(Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer$Callback;JJ)V
    .locals 8
    .param p1, "c"    # Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer$Callback;
    .param p2, "duration"    # J
    .param p4, "interval"    # J

    .line 36
    new-instance v7, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer$1;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;JJLcom/google/firebase/inappmessaging/display/internal/RenewableTimer$Callback;)V

    .line 45
    invoke-virtual {v7}, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 46
    return-void
.end method
