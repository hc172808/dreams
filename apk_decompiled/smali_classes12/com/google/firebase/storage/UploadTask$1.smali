.class Lcom/google/firebase/storage/UploadTask$1;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/UploadTask;->onCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/storage/UploadTask;

.field final synthetic val$finalCancelRequest:Lcom/google/firebase/storage/network/NetworkRequest;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/UploadTask;Lcom/google/firebase/storage/network/NetworkRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/storage/UploadTask;

    .line 504
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask$1;->this$0:Lcom/google/firebase/storage/UploadTask;

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask$1;->val$finalCancelRequest:Lcom/google/firebase/storage/network/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask$1;->val$finalCancelRequest:Lcom/google/firebase/storage/network/NetworkRequest;

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask$1;->this$0:Lcom/google/firebase/storage/UploadTask;

    .line 508
    invoke-static {v1}, Lcom/google/firebase/storage/UploadTask;->access$000(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask$1;->this$0:Lcom/google/firebase/storage/UploadTask;

    .line 509
    invoke-static {v2}, Lcom/google/firebase/storage/UploadTask;->access$100(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/storage/internal/Util;->getCurrentAppCheckToken(Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask$1;->this$0:Lcom/google/firebase/storage/UploadTask;

    .line 510
    invoke-static {v3}, Lcom/google/firebase/storage/UploadTask;->access$200(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 507
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 511
    return-void
.end method
