.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$AHlGVOuaI-HzU71SUoAqMt-GITM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

.field public final synthetic f$1:Lcom/google/protobuf/AbstractMessageLite;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/protobuf/AbstractMessageLite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$AHlGVOuaI-HzU71SUoAqMt-GITM;->f$0:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$AHlGVOuaI-HzU71SUoAqMt-GITM;->f$1:Lcom/google/protobuf/AbstractMessageLite;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$AHlGVOuaI-HzU71SUoAqMt-GITM;->f$0:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$AHlGVOuaI-HzU71SUoAqMt-GITM;->f$1:Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->lambda$write$0$ProtoStorageClient(Lcom/google/protobuf/AbstractMessageLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
