.class Lcom/google/firebase/crashlytics/internal/common/UserMetadata$1;
.super Ljava/util/HashMap;
.source "UserMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 52
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
