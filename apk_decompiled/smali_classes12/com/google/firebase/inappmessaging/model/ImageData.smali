.class public Lcom/google/firebase/inappmessaging/model/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/ImageData$Builder;
    }
.end annotation


# instance fields
.field private final bitmapData:Landroid/graphics/Bitmap;

.field private final imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "bitmapData"    # Landroid/graphics/Bitmap;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    .line 66
    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;
    .locals 1

    .line 86
    new-instance v0, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/ImageData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 46
    return v2

    .line 48
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 49
    .local v1, "i":Lcom/google/firebase/inappmessaging/model/ImageData;
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 50
    return v2

    .line 52
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    return v0

    .line 55
    :cond_3
    return v2
.end method

.method public getBitmapData()Landroid/graphics/Bitmap;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    .local v0, "bitmapHash":I
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
