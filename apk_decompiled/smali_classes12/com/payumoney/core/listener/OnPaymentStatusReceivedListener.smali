.class public interface abstract Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/APICallbackListener;


# virtual methods
.method public abstract onCancelled(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
