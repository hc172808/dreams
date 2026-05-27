.class public final synthetic Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplay$2xHnn1oWAtAU_WFn_Ys9wBNhGAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplay$2xHnn1oWAtAU_WFn_Ys9wBNhGAk;->f$0:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplay$2xHnn1oWAtAU_WFn_Ys9wBNhGAk;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final displayMessage(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplay$2xHnn1oWAtAU_WFn_Ys9wBNhGAk;->f$0:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplay$2xHnn1oWAtAU_WFn_Ys9wBNhGAk;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->lambda$bindFiamToActivity$0$FirebaseInAppMessagingDisplay(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V

    return-void
.end method
