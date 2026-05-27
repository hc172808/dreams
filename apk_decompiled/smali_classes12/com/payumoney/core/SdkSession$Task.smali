.class public interface abstract Lcom/payumoney/core/SdkSession$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/SdkSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Task"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
.end method
