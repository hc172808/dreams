.class public final synthetic Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplayRegistrar$mFT7XCE3YJXhnGdhKohfXnpd5DM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplayRegistrar$mFT7XCE3YJXhnGdhKohfXnpd5DM;->f$0:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplayRegistrar$mFT7XCE3YJXhnGdhKohfXnpd5DM;->f$0:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;->lambda$mFT7XCE3YJXhnGdhKohfXnpd5DM(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    move-result-object p1

    return-object p1
.end method
