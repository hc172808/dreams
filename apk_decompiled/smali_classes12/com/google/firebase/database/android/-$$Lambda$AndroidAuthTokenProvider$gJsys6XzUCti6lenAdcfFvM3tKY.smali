.class public final synthetic Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$gJsys6XzUCti6lenAdcfFvM3tKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

.field public final synthetic f$1:Lcom/google/firebase/internal/InternalTokenResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$gJsys6XzUCti6lenAdcfFvM3tKY;->f$0:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    iput-object p2, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$gJsys6XzUCti6lenAdcfFvM3tKY;->f$1:Lcom/google/firebase/internal/InternalTokenResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$gJsys6XzUCti6lenAdcfFvM3tKY;->f$0:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    iget-object v1, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$gJsys6XzUCti6lenAdcfFvM3tKY;->f$1:Lcom/google/firebase/internal/InternalTokenResult;

    invoke-static {v0, v1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->lambda$addTokenChangeListener$3(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V

    return-void
.end method
