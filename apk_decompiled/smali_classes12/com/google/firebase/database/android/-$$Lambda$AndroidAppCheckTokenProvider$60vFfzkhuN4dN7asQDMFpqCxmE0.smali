.class public final synthetic Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$60vFfzkhuN4dN7asQDMFpqCxmE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ExecutorService;

.field public final synthetic f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$60vFfzkhuN4dN7asQDMFpqCxmE0;->f$0:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$60vFfzkhuN4dN7asQDMFpqCxmE0;->f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    return-void
.end method


# virtual methods
.method public final onAppCheckTokenChanged(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$60vFfzkhuN4dN7asQDMFpqCxmE0;->f$0:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$60vFfzkhuN4dN7asQDMFpqCxmE0;->f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->lambda$addTokenChangeListener$4(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    return-void
.end method
