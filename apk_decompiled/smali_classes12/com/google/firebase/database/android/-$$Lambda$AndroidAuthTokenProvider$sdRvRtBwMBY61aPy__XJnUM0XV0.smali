.class public final synthetic Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$sdRvRtBwMBY61aPy__XJnUM0XV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ExecutorService;

.field public final synthetic f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$sdRvRtBwMBY61aPy__XJnUM0XV0;->f$0:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$sdRvRtBwMBY61aPy__XJnUM0XV0;->f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/inject/Provider;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$sdRvRtBwMBY61aPy__XJnUM0XV0;->f$0:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAuthTokenProvider$sdRvRtBwMBY61aPy__XJnUM0XV0;->f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->lambda$addTokenChangeListener$5(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
