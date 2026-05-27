.class public Lcom/google/firebase/inappmessaging/model/BannerMessage;
.super Lcom/google/firebase/inappmessaging/model/InAppMessage;
.source "BannerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;
    }
.end annotation


# instance fields
.field private final action:Lcom/google/firebase/inappmessaging/model/Action;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final backgroundHexColor:Ljava/lang/String;

.field private final body:Lcom/google/firebase/inappmessaging/model/Text;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final imageData:Lcom/google/firebase/inappmessaging/model/ImageData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final title:Lcom/google/firebase/inappmessaging/model/Text;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "campaignMetadata"    # Lcom/google/firebase/inappmessaging/model/CampaignMetadata;
    .param p2, "title"    # Lcom/google/firebase/inappmessaging/model/Text;
    .param p3, "body"    # Lcom/google/firebase/inappmessaging/model/Text;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "imageData"    # Lcom/google/firebase/inappmessaging/model/ImageData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "action"    # Lcom/google/firebase/inappmessaging/model/Action;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "backgroundHexColor"    # Ljava/lang/String;
    .param p7    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/CampaignMetadata;",
            "Lcom/google/firebase/inappmessaging/model/Text;",
            "Lcom/google/firebase/inappmessaging/model/Text;",
            "Lcom/google/firebase/inappmessaging/model/ImageData;",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->BANNER:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, p1, v0, p7}, Lcom/google/firebase/inappmessaging/model/InAppMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 88
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    .line 89
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    .line 90
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 91
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    .line 92
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->backgroundHexColor:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/inappmessaging/model/BannerMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/model/CampaignMetadata;
    .param p2, "x1"    # Lcom/google/firebase/inappmessaging/model/Text;
    .param p3, "x2"    # Lcom/google/firebase/inappmessaging/model/Text;
    .param p4, "x3"    # Lcom/google/firebase/inappmessaging/model/ImageData;
    .param p5, "x4"    # Lcom/google/firebase/inappmessaging/model/Action;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/util/Map;
    .param p8, "x7"    # Lcom/google/firebase/inappmessaging/model/BannerMessage$1;

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/inappmessaging/model/BannerMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;
    .locals 1

    .line 136
    new-instance v0, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/BannerMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 48
    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/BannerMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 51
    return v2

    .line 53
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;

    .line 54
    .local v1, "b":Lcom/google/firebase/inappmessaging/model/BannerMessage;
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 55
    return v2

    .line 57
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    if-nez v3, :cond_3

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    if-nez v4, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/Text;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 58
    :cond_4
    return v2

    .line 60
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v3, :cond_6

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v4, :cond_7

    :cond_6
    if-eqz v3, :cond_8

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 61
    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/ImageData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 62
    :cond_7
    return v2

    .line 64
    :cond_8
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v3, :cond_9

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v4, :cond_a

    :cond_9
    if-eqz v3, :cond_b

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/Action;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 65
    :cond_a
    return v2

    .line 67
    :cond_b
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/Text;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 68
    return v2

    .line 70
    :cond_c
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->backgroundHexColor:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;->backgroundHexColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 71
    return v0

    .line 73
    :cond_d
    return v2
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/model/Action;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->backgroundHexColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    return-object v0
.end method

.method public getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    .local v0, "bodyHash":I
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 40
    .local v2, "imageHash":I
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/Action;->hashCode()I

    move-result v1

    .line 41
    .local v1, "actionHash":I
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/model/BannerMessage;->backgroundHexColor:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method
