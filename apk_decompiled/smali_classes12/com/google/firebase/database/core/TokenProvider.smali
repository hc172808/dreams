.class public interface abstract Lcom/google/firebase/database/core/TokenProvider;
.super Ljava/lang/Object;
.source "TokenProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;,
        Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;
    }
.end annotation


# virtual methods
.method public abstract addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
.end method

.method public abstract getToken(ZLcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V
.end method

.method public abstract removeTokenChangeListener(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
.end method
