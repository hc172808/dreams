.class public final synthetic Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessagingRegistrar$yuRjTv1KXsUvxlnapxQ_8E9rSoY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessagingRegistrar$yuRjTv1KXsUvxlnapxQ_8E9rSoY;->f$0:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessagingRegistrar$yuRjTv1KXsUvxlnapxQ_8E9rSoY;->f$0:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->lambda$yuRjTv1KXsUvxlnapxQ_8E9rSoY(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-result-object p1

    return-object p1
.end method
