.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$XovjMVSG2BE3w4qvAniVX2qUeNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$XovjMVSG2BE3w4qvAniVX2qUeNw;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$XovjMVSG2BE3w4qvAniVX2qUeNw;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$getRateLimits$7$RateLimiterClient(Ljava/lang/Throwable;)V

    return-void
.end method
