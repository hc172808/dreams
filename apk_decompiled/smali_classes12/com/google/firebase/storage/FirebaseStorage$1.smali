.class Lcom/google/firebase/storage/FirebaseStorage$1;
.super Ljava/lang/Object;
.source "FirebaseStorage.java"

# interfaces
.implements Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/FirebaseStorage;-><init>(Ljava/lang/String;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/storage/FirebaseStorage;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/FirebaseStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/storage/FirebaseStorage;

    .line 74
    iput-object p1, p0, Lcom/google/firebase/storage/FirebaseStorage$1;->this$0:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppCheckTokenChanged(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 0
    .param p1, "appCheckTokenResult"    # Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 80
    return-void
.end method
