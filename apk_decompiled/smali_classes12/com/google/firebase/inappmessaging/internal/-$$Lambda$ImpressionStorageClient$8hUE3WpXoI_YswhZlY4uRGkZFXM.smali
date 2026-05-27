.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8hUE3WpXoI_YswhZlY4uRGkZFXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8hUE3WpXoI_YswhZlY4uRGkZFXM;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8hUE3WpXoI_YswhZlY4uRGkZFXM;->f$0:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$getAllImpressions$2$ImpressionStorageClient(Ljava/lang/Throwable;)V

    return-void
.end method
