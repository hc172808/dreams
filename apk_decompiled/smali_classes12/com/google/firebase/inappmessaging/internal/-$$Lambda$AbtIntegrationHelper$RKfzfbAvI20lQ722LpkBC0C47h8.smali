.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$RKfzfbAvI20lQ722LpkBC0C47h8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$RKfzfbAvI20lQ722LpkBC0C47h8;->f$0:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$RKfzfbAvI20lQ722LpkBC0C47h8;->f$1:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$RKfzfbAvI20lQ722LpkBC0C47h8;->f$0:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$RKfzfbAvI20lQ722LpkBC0C47h8;->f$1:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->lambda$setExperimentActive$1$AbtIntegrationHelper(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    return-void
.end method
