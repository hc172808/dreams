.class public final synthetic Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$6PDqLvmcDdKd2OjAEkH-5n0Xpdw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$6PDqLvmcDdKd2OjAEkH-5n0Xpdw;->f$0:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$6PDqLvmcDdKd2OjAEkH-5n0Xpdw;->f$0:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    check-cast p1, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->lambda$6PDqLvmcDdKd2OjAEkH-5n0Xpdw(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V

    return-void
.end method
