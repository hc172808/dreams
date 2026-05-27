.class public interface abstract Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onUpdatedEmiInterestFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUpdatedEmiInterestReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
