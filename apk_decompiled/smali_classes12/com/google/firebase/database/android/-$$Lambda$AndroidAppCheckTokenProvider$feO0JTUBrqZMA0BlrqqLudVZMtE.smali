.class public final synthetic Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$feO0JTUBrqZMA0BlrqqLudVZMtE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$feO0JTUBrqZMA0BlrqqLudVZMtE;->f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/android/-$$Lambda$AndroidAppCheckTokenProvider$feO0JTUBrqZMA0BlrqqLudVZMtE;->f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    check-cast p1, Lcom/google/firebase/appcheck/AppCheckTokenResult;

    invoke-static {v0, p1}, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->lambda$getToken$1(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    return-void
.end method
