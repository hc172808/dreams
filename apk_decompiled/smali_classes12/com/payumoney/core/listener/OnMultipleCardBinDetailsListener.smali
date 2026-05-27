.class public interface abstract Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/APICallbackListener;


# virtual methods
.method public abstract onMultipleCardBinDetailsReceived(Ljava/util/HashMap;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
