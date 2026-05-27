.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Rkb-RzOD_2PtDTLPhJsuD06zQoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/RateLimit;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Rkb-RzOD_2PtDTLPhJsuD06zQoo;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Rkb-RzOD_2PtDTLPhJsuD06zQoo;->f$1:Lcom/google/firebase/inappmessaging/model/RateLimit;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Rkb-RzOD_2PtDTLPhJsuD06zQoo;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Rkb-RzOD_2PtDTLPhJsuD06zQoo;->f$1:Lcom/google/firebase/inappmessaging/model/RateLimit;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$increment$1(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object p1

    return-object p1
.end method
