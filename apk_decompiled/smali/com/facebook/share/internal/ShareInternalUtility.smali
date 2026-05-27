.class public final Lcom/facebook/share/internal/ShareInternalUtility;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"


# static fields
.field public static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 81
    .local p0, "x0":Ljava/util/UUID;
    .local p1, "x1":Lcom/facebook/share/model/ShareMedia;
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Ljava/util/UUID;
    .end local p1    # "x1":Lcom/facebook/share/model/ShareMedia;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/facebook/internal/AppCall;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 213
    .local p0, "requestCode":I
    .local p1, "resultCode":I
    .local p2, "data":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    .line 214
    .local v1, "callId":Ljava/util/UUID;
    if-nez v1, :cond_1

    .line 215
    return-object v2

    .line 218
    :cond_1
    invoke-static {v1, p0}, Lcom/facebook/internal/AppCall;->finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "callId":Ljava/util/UUID;
    .end local p0    # "requestCode":I
    .end local p1    # "resultCode":I
    .end local p2    # "data":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getAttachment(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 530
    .local p0, "callId":Ljava/util/UUID;
    .local p1, "uri":Landroid/net/Uri;
    .local p2, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    .line 531
    .local v1, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    if-eqz p2, :cond_1

    .line 532
    :try_start_0
    invoke-static {p0, p2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 537
    .end local v1    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .end local p0    # "callId":Ljava/util/UUID;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 533
    .restart local v1    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .restart local p0    # "callId":Ljava/util/UUID;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p1, :cond_2

    .line 534
    invoke-static {p0, p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_1

    .line 537
    .end local v1    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .end local p0    # "callId":Ljava/util/UUID;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .restart local v1    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .restart local p0    # "callId":Ljava/util/UUID;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v1
.end method

.method private static getAttachment(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 6

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 513
    .local p0, "callId":Ljava/util/UUID;
    .local p1, "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_0
    const/4 v1, 0x0

    .line 514
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 516
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    instance-of v4, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v4, :cond_1

    .line 517
    move-object v4, p1

    check-cast v4, Lcom/facebook/share/model/SharePhoto;

    .line 518
    .local v4, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {v4}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 519
    invoke-virtual {v4}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v5

    move-object v3, v5

    .end local v4    # "photo":Lcom/facebook/share/model/SharePhoto;
    goto :goto_0

    .line 520
    :cond_1
    instance-of v4, p1, Lcom/facebook/share/model/ShareVideo;

    if-eqz v4, :cond_2

    .line 521
    move-object v4, p1

    check-cast v4, Lcom/facebook/share/model/ShareVideo;

    .line 522
    .local v4, "video":Lcom/facebook/share/model/ShareVideo;
    invoke-virtual {v4}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 520
    .end local v4    # "video":Lcom/facebook/share/model/ShareVideo;
    :cond_2
    :goto_0
    nop

    .line 525
    :goto_1
    invoke-static {p0, v3, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local p0    # "callId":Ljava/util/UUID;
    .end local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getBackgroundAssetMediaInfo(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
    .locals 6

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 728
    .local p0, "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    .local p1, "appCallId":Ljava/util/UUID;
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 732
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v3, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v4, Lcom/facebook/share/internal/ShareInternalUtility$11;

    invoke-direct {v4, p1, v3}, Lcom/facebook/share/internal/ShareInternalUtility$11;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    .line 737
    invoke-static {v1, v4}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v4

    .line 755
    .local v4, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v3}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 757
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .end local v1    # "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    .end local v3    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    .end local v4    # "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local p0    # "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    .end local p1    # "appCallId":Ljava/util/UUID;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 729
    .restart local p0    # "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    .restart local p1    # "appCallId":Ljava/util/UUID;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 499
    .local p0, "fullName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 501
    .local v1, "namespace":Ljava/lang/String;
    const/16 v3, 0x3a

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 502
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-le v4, v5, :cond_1

    .line 503
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 504
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "fieldName":Ljava/lang/String;
    goto :goto_0

    .line 506
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_1
    move-object v4, p0

    .line 508
    .restart local v4    # "fieldName":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .end local v1    # "namespace":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local p0    # "fullName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getMediaInfos(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 305
    .local p0, "mediaContent":Lcom/facebook/share/model/ShareMediaContent;
    .local p1, "appCallId":Ljava/util/UUID;
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    .local v3, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    if-nez v1, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v4, Lcom/facebook/share/internal/ShareInternalUtility$6;

    invoke-direct {v4, p1, v1}, Lcom/facebook/share/internal/ShareInternalUtility$6;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    .line 311
    invoke-static {v3, v4}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v4

    .line 325
    .local v4, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    return-object v4

    .end local v1    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    .end local v3    # "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    .end local v4    # "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local p0    # "mediaContent":Lcom/facebook/share/model/ShareMediaContent;
    .end local p1    # "appCallId":Ljava/util/UUID;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 306
    .restart local p0    # "mediaContent":Lcom/facebook/share/model/ShareMediaContent;
    .restart local p1    # "appCallId":Ljava/util/UUID;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getMostSpecificObjectType(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 670
    .local p0, "objectType1":Lcom/facebook/share/widget/LikeView$ObjectType;
    .local p1, "objectType2":Lcom/facebook/share/widget/LikeView$ObjectType;
    :cond_0
    if-ne p0, p1, :cond_1

    .line 671
    return-object p0

    .line 674
    :cond_1
    :try_start_0
    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne p0, v1, :cond_2

    .line 675
    return-object p1

    .line 676
    :cond_2
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_3

    .line 677
    return-object p0

    .line 680
    :cond_3
    return-object v2

    .end local p0    # "objectType1":Lcom/facebook/share/widget/LikeView$ObjectType;
    .end local p1    # "objectType2":Lcom/facebook/share/widget/LikeView$ObjectType;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    const-string v0, "completionGesture"

    const-class v1, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 127
    .local p0, "result":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    const-string v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    invoke-static {p0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 257
    .local p0, "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .local p1, "appCallId":Ljava/util/UUID;
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    .local v3, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    if-nez v1, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    new-instance v1, Lcom/facebook/share/internal/ShareInternalUtility$4;

    invoke-direct {v1, p1}, Lcom/facebook/share/internal/ShareInternalUtility$4;-><init>(Ljava/util/UUID;)V

    .line 262
    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v4, Lcom/facebook/share/internal/ShareInternalUtility$5;

    invoke-direct {v4}, Lcom/facebook/share/internal/ShareInternalUtility$5;-><init>()V

    .line 272
    invoke-static {v1, v4}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v4

    .line 281
    .local v4, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    return-object v4

    .end local v1    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    .end local v3    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    .end local v4    # "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .end local p1    # "appCallId":Ljava/util/UUID;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 258
    .restart local p0    # "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .restart local p1    # "appCallId":Ljava/util/UUID;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getShareDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    const-string v0, "com.facebook.platform.extra.POST_ID"

    const-string v1, "postId"

    const-class v2, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 141
    .local p0, "result":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_2
    const-string v0, "post_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    invoke-static {p0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static getShareResultProcessor(Lcom/facebook/FacebookCallback;)Lcom/facebook/share/internal/ResultProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)",
            "Lcom/facebook/share/internal/ResultProcessor;"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 182
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/share/internal/ShareInternalUtility$1;

    invoke-direct {v1, p0, p0}, Lcom/facebook/share/internal/ShareInternalUtility$1;-><init>(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getStickerUrl(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
    .locals 6

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 686
    .local p0, "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    .local p1, "appCallId":Ljava/util/UUID;
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v3, Lcom/facebook/share/internal/ShareInternalUtility$9;

    invoke-direct {v3, p1}, Lcom/facebook/share/internal/ShareInternalUtility$9;-><init>(Ljava/util/UUID;)V

    .line 694
    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v3

    .line 703
    .local v3, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v4, Lcom/facebook/share/internal/ShareInternalUtility$10;

    invoke-direct {v4}, Lcom/facebook/share/internal/ShareInternalUtility$10;-><init>()V

    .line 704
    invoke-static {v3, v4}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v4

    .line 719
    .local v4, "stickerInfo":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v3}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 721
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .end local v1    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    .end local v3    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    .end local v4    # "stickerInfo":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local p0    # "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    .end local p1    # "appCallId":Ljava/util/UUID;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 687
    .restart local p0    # "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    .restart local p1    # "appCallId":Ljava/util/UUID;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getTextureUrlBundle(Lcom/facebook/share/model/ShareCameraEffectContent;Ljava/util/UUID;)Landroid/os/Bundle;
    .locals 9

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 333
    .local p0, "cameraEffectContent":Lcom/facebook/share/model/ShareCameraEffectContent;
    .local p1, "appCallId":Ljava/util/UUID;
    :cond_0
    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getTextures()Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object v1

    move-object v3, v1

    .local v3, "textures":Lcom/facebook/share/model/CameraEffectTextures;
    if-nez v1, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v1, "attachmentUrlsBundle":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    invoke-virtual {v3}, Lcom/facebook/share/model/CameraEffectTextures;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 340
    .local v6, "key":Ljava/lang/String;
    nop

    .line 341
    invoke-virtual {v3, v6}, Lcom/facebook/share/model/CameraEffectTextures;->getTextureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v6}, Lcom/facebook/share/model/CameraEffectTextures;->getTextureBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v7

    .line 342
    .local v7, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v7}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    goto :goto_0

    .line 346
    :cond_2
    invoke-static {v4}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    return-object v1

    .end local v1    # "attachmentUrlsBundle":Landroid/os/Bundle;
    .end local v3    # "textures":Lcom/facebook/share/model/CameraEffectTextures;
    .end local v4    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    .end local p0    # "cameraEffectContent":Lcom/facebook/share/model/ShareCameraEffectContent;
    .end local p1    # "appCallId":Ljava/util/UUID;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 334
    .restart local p0    # "cameraEffectContent":Lcom/facebook/share/model/ShareCameraEffectContent;
    .restart local p1    # "appCallId":Ljava/util/UUID;
    :cond_3
    :goto_1
    return-object v2
.end method

.method public static getUriExtension(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 762
    .local p0, "uri":Landroid/net/Uri;
    :cond_0
    if-nez p0, :cond_1

    .line 763
    return-object v2

    .line 765
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "path":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 767
    .local v3, "idx":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 768
    return-object v2

    .line 770
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "idx":I
    .end local p0    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getVideoUrl(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 287
    .local p0, "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    .local p1, "appCallId":Ljava/util/UUID;
    :cond_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    nop

    .line 293
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v1

    .line 292
    invoke-static {p1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v1

    .line 295
    .local v1, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {v3}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 299
    invoke-virtual {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .end local v3    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    .end local p0    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    .end local p1    # "appCallId":Ljava/util/UUID;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 288
    .restart local p0    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    .restart local p1    # "appCallId":Ljava/util/UUID;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public static handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z
    .locals 6

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 152
    .local p0, "requestCode":I
    .local p1, "resultCode":I
    .local p2, "data":Landroid/content/Intent;
    .local p3, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/facebook/internal/AppCall;

    move-result-object v1

    .line 153
    .local v1, "appCall":Lcom/facebook/internal/AppCall;
    if-nez v1, :cond_1

    .line 154
    return v2

    .line 157
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Ljava/util/UUID;)V

    .line 158
    const/4 v3, 0x1

    if-nez p3, :cond_2

    .line 159
    return v3

    .line 162
    :cond_2
    nop

    .line 163
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v4

    .line 164
    .local v4, "exception":Lcom/facebook/FacebookException;
    if-eqz v4, :cond_4

    .line 165
    instance-of v5, v4, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v5, :cond_3

    .line 166
    invoke-virtual {p3, v1}, Lcom/facebook/share/internal/ResultProcessor;->onCancel(Lcom/facebook/internal/AppCall;)V

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p3, v1, v4}, Lcom/facebook/share/internal/ResultProcessor;->onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 172
    :cond_4
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    .line 173
    .local v5, "results":Landroid/os/Bundle;
    invoke-virtual {p3, v1, v5}, Lcom/facebook/share/internal/ResultProcessor;->onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v5    # "results":Landroid/os/Bundle;
    :goto_0
    return v3

    .end local v1    # "appCall":Lcom/facebook/internal/AppCall;
    .end local v4    # "exception":Lcom/facebook/FacebookException;
    .end local p0    # "requestCode":I
    .end local p1    # "resultCode":I
    .end local p2    # "data":Landroid/content/Intent;
    .end local p3    # "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 100
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .local p1, "error":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    return-void

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .end local p1    # "error":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 90
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .local p1, "exception":Ljava/lang/Exception;
    :cond_0
    :try_start_0
    instance-of v1, p1, Lcom/facebook/FacebookException;

    if-eqz v1, :cond_1

    .line 91
    move-object v1, p1

    check-cast v1, Lcom/facebook/FacebookException;

    invoke-static {p0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    .line 92
    return-void

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error preparing share content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {p0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    return-void

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .end local p1    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphResponse;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 107
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .local p1, "postId":Ljava/lang/String;
    .local p2, "graphResponse":Lcom/facebook/GraphResponse;
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 108
    .local v1, "requestError":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    const-string v3, "Unexpected error sharing."

    move-object v2, v3

    .line 113
    :cond_1
    invoke-static {p0, p2, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    .line 114
    .end local v2    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    return-void

    .end local v1    # "requestError":Lcom/facebook/FacebookRequestError;
    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .end local p1    # "postId":Ljava/lang/String;
    .end local p2    # "graphResponse":Lcom/facebook/GraphResponse;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 541
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :cond_0
    :try_start_0
    const-string v1, "cancelled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    if-eqz p0, :cond_1

    .line 543
    invoke-interface {p0}, Lcom/facebook/FacebookCallback;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_1
    return-void

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Lcom/facebook/FacebookException;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 571
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .local p1, "ex":Lcom/facebook/FacebookException;
    :cond_0
    :try_start_0
    const-string v1, "error"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    if-eqz p0, :cond_1

    .line 573
    invoke-interface {p0, p1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :cond_1
    return-void

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .end local p1    # "ex":Lcom/facebook/FacebookException;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/GraphResponse;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Lcom/facebook/GraphResponse;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 556
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .local p1, "response":Lcom/facebook/GraphResponse;
    .local p2, "message":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v1, "error"

    invoke-static {v1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    if-eqz p0, :cond_1

    .line 558
    new-instance v1, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v1, p1, p2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_1
    return-void

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .end local p1    # "response":Lcom/facebook/GraphResponse;
    .end local p2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 563
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .local p1, "message":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v1, "error"

    invoke-static {v1, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-eqz p0, :cond_1

    .line 565
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :cond_1
    return-void

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .end local p1    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 548
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .local p1, "postId":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "succeeded"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p0, :cond_1

    .line 550
    new-instance v1, Lcom/facebook/share/Sharer$Result;

    invoke-direct {v1, p1}, Lcom/facebook/share/Sharer$Result;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :cond_1
    return-void

    .end local p0    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    .end local p1    # "postId":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static logShareResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 578
    .local p0, "shareOutcome":Ljava/lang/String;
    .local p1, "errorMessage":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 579
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v2, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 580
    .local v2, "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v4, "fb_share_dialog_outcome"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    if-eqz p1, :cond_1

    .line 584
    const-string v4, "error_message"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_1
    const-string v4, "fb_share_dialog_result"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    return-void

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    .end local v3    # "parameters":Landroid/os/Bundle;
    .end local p0    # "shareOutcome":Ljava/lang/String;
    .end local p1    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 9

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    move-object v4, p0

    .local v4, "accessToken":Lcom/facebook/AccessToken;
    move-object v8, p2

    .local v8, "callback":Lcom/facebook/GraphRequest$Callback;
    move-object p0, p1

    .line 603
    .local p0, "image":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(I)V

    .line 604
    .local p1, "parameters":Landroid/os/Bundle;
    const-string p2, "file"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 606
    new-instance p2, Lcom/facebook/GraphRequest;

    const-string v5, "me/staging_resources"

    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    .end local v4    # "accessToken":Lcom/facebook/AccessToken;
    .end local v8    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local p0    # "image":Landroid/graphics/Bitmap;
    .end local p1    # "parameters":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 651
    .local p0, "accessToken":Lcom/facebook/AccessToken;
    .local p1, "imageUri":Landroid/net/Uri;
    .local p2, "callback":Lcom/facebook/GraphRequest$Callback;
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    new-instance v1, Ljava/io/File;

    .line 653
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-static {p0, v1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0

    .line 654
    :cond_1
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    new-instance v1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v3, "image/png"

    invoke-direct {v1, p1, v3}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 660
    .local v1, "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<Landroid/net/Uri;>;"
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    move-object v9, v3

    .line 661
    .local v9, "parameters":Landroid/os/Bundle;
    const-string v3, "file"

    invoke-virtual {v9, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 663
    new-instance v10, Lcom/facebook/GraphRequest;

    const-string v5, "me/staging_resources"

    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v3, v10

    move-object v4, p0

    move-object v6, v9

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v10

    .line 655
    .end local v1    # "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<Landroid/net/Uri;>;"
    .end local v9    # "parameters":Landroid/os/Bundle;
    :cond_2
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v3, "The image Uri must be either a file:// or content:// Uri"

    invoke-direct {v1, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    .end local p0    # "accessToken":Lcom/facebook/AccessToken;
    .end local p1    # "imageUri":Landroid/net/Uri;
    .end local p2    # "callback":Lcom/facebook/GraphRequest$Callback;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    move-object v4, p0

    .local v4, "accessToken":Lcom/facebook/AccessToken;
    move-object v8, p2

    .local v8, "callback":Lcom/facebook/GraphRequest$Callback;
    move-object p0, p1

    .line 625
    .local p0, "file":Ljava/io/File;
    const/high16 p1, 0x10000000

    .line 626
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 627
    .local p1, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v1, "image/png"

    invoke-direct {p2, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 629
    .local p2, "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 630
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v3, "file"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 632
    new-instance v9, Lcom/facebook/GraphRequest;

    const-string v5, "me/staging_resources"

    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v3, v9

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v9

    .end local v1    # "parameters":Landroid/os/Bundle;
    .end local v4    # "accessToken":Lcom/facebook/AccessToken;
    .end local v8    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "descriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<Landroid/os/ParcelFileDescriptor;>;"
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 237
    .local p0, "requestCode":I
    .local p1, "callbackManager":Lcom/facebook/CallbackManager;
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :cond_0
    :try_start_0
    instance-of v1, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v1, :cond_1

    .line 242
    move-object v1, p1

    check-cast v1, Lcom/facebook/internal/CallbackManagerImpl;

    new-instance v2, Lcom/facebook/share/internal/ShareInternalUtility$3;

    invoke-direct {v2, p0, p2}, Lcom/facebook/share/internal/ShareInternalUtility$3;-><init>(ILcom/facebook/FacebookCallback;)V

    .line 243
    invoke-virtual {v1, p0, v2}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 252
    return-void

    .line 238
    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local p0    # "requestCode":I
    .end local p1    # "callbackManager":Lcom/facebook/CallbackManager;
    .end local p2    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static registerStaticShareCallback(I)V
    .locals 2

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 222
    .local p0, "requestCode":I
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/share/internal/ShareInternalUtility$2;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility$2;-><init>(I)V

    invoke-static {p0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    return-void

    .end local p0    # "requestCode":I
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 435
    .local p0, "jsonArray":Lorg/json/JSONArray;
    .local p1, "requireNamespace":Z
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 436
    .local v1, "newArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 437
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 438
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 439
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v5, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 440
    :cond_1
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 441
    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v5

    move-object v4, v5

    .line 443
    :cond_2
    :goto_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    nop

    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v3    # "i":I
    :cond_3
    return-object v1

    .end local v1    # "newArray":Lorg/json/JSONArray;
    .end local p0    # "jsonArray":Lorg/json/JSONArray;
    .end local p1    # "requireNamespace":Z
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 12

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 451
    .local p0, "jsonObject":Lorg/json/JSONObject;
    .local p1, "requireNamespace":Z
    :cond_0
    if-nez p0, :cond_1

    .line 452
    return-object v2

    .line 456
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 457
    .local v1, "newJsonObject":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 458
    .local v3, "data":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 459
    .local v4, "names":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 460
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 463
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Lorg/json/JSONObject;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 464
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    invoke-static {v8, v9}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v8

    move-object v7, v8

    goto :goto_1

    .line 465
    :cond_2
    instance-of v8, v7, Lorg/json/JSONArray;

    if-eqz v8, :cond_3

    .line 466
    move-object v8, v7

    check-cast v8, Lorg/json/JSONArray;

    invoke-static {v8, v9}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v8

    move-object v7, v8

    .line 469
    :cond_3
    :goto_1
    invoke-static {v6}, Lcom/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 470
    .local v8, "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 471
    .local v9, "namespace":Ljava/lang/String;
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 473
    .local v10, "fieldName":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 474
    if-eqz v9, :cond_4

    const-string v11, "fbsdk"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 475
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 476
    :cond_4
    if-eqz v9, :cond_6

    const-string v11, "og"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    .line 479
    :cond_5
    invoke-virtual {v3, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 477
    :cond_6
    :goto_2
    invoke-virtual {v1, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 481
    :cond_7
    if-eqz v9, :cond_8

    const-string v11, "fb"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 482
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 484
    :cond_8
    invoke-virtual {v1, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "namespace":Ljava/lang/String;
    .end local v10    # "fieldName":Ljava/lang/String;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 488
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 489
    const-string v5, "data"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :cond_a
    return-object v1

    .line 494
    .end local v1    # "newJsonObject":Lorg/json/JSONObject;
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v4    # "names":Lorg/json/JSONArray;
    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    .end local p1    # "requireNamespace":Z
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 493
    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    .restart local p1    # "requireNamespace":Z
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Failed to create json object from share content"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Lorg/json/JSONException;
    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    .end local p1    # "requireNamespace":Z
    :goto_4
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "tags"

    const-string v1, "place"

    const-class v2, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 353
    .local p0, "callId":Ljava/util/UUID;
    .local p1, "content":Lcom/facebook/share/model/ShareOpenGraphContent;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v3

    .line 354
    .local v3, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v6, Lcom/facebook/share/internal/ShareInternalUtility$7;

    invoke-direct {v6, p0, v5}, Lcom/facebook/share/internal/ShareInternalUtility$7;-><init>(Ljava/util/UUID;Ljava/util/ArrayList;)V

    .line 356
    invoke-static {v3, v6}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object v6

    .line 382
    .local v6, "actionJSON":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 384
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 385
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "placeTag":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 390
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    .end local v7    # "placeTag":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 395
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 396
    .local v1, "peopleTags":Lorg/json/JSONArray;
    if-nez v1, :cond_2

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 397
    :cond_2
    invoke-static {v1}, Lcom/facebook/internal/Utility;->jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v7

    :goto_0
    nop

    .line 399
    .local v7, "peopleIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 400
    .local v9, "peopleId":Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    nop

    .end local v9    # "peopleId":Ljava/lang/String;
    goto :goto_1

    .line 402
    :cond_3
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local v1    # "peopleTags":Lorg/json/JSONArray;
    .end local v7    # "peopleIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return-object v6

    .end local v3    # "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    .end local v5    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    .end local v6    # "actionJSON":Lorg/json/JSONObject;
    .end local p0    # "callId":Ljava/util/UUID;
    .end local p1    # "content":Lcom/facebook/share/model/ShareOpenGraphContent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static toJSONObjectForWeb(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 410
    .local p0, "shareOpenGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    .line 412
    .local v1, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    new-instance v3, Lcom/facebook/share/internal/ShareInternalUtility$8;

    invoke-direct {v3}, Lcom/facebook/share/internal/ShareInternalUtility$8;-><init>()V

    invoke-static {v1, v3}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    .end local p0    # "shareOpenGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
