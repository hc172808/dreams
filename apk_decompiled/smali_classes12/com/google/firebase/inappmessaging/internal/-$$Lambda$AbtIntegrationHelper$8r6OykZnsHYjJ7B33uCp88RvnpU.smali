.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$8r6OykZnsHYjJ7B33uCp88RvnpU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$8r6OykZnsHYjJ7B33uCp88RvnpU;->f$0:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$8r6OykZnsHYjJ7B33uCp88RvnpU;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$8r6OykZnsHYjJ7B33uCp88RvnpU;->f$0:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$AbtIntegrationHelper$8r6OykZnsHYjJ7B33uCp88RvnpU;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->lambda$updateRunningExperiments$0$AbtIntegrationHelper(Ljava/util/ArrayList;)V

    return-void
.end method
