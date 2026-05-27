.class public Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
.super Ljava/lang/Object;
.source "FiamImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
    }
.end annotation


# instance fields
.field private final picasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->picasso:Lcom/squareup/picasso/Picasso;

    .line 37
    return-void
.end method


# virtual methods
.method public cancelTag(Ljava/lang/Class;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/Class;

    .line 44
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelTag(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public load(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;-><init>(Lcom/squareup/picasso/RequestCreator;)V

    return-object v0
.end method
