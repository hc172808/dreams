.class public Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;
.super Ljava/lang/Object;
.source "PicassoErrorListener.java"

# interfaces
.implements Lcom/squareup/picasso/Picasso$Listener;


# instance fields
.field private displayCallbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

.field private inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadFailed(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "exception"    # Ljava/lang/Exception;

    .line 49
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;->displayCallbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    if-eqz v0, :cond_1

    .line 50
    instance-of v0, p3, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;->displayCallbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;->IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    invoke-interface {v0, v1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;->displayErrorEncountered(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;->displayCallbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    sget-object v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    invoke-interface {v0, v1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;->displayErrorEncountered(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)Lcom/google/android/gms/tasks/Task;

    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public setInAppMessage(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V
    .locals 0
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p2, "displayCallbacks"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 43
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;->displayCallbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 45
    return-void
.end method
