.class public Lcom/google/firebase/inappmessaging/model/CardMessage;
.super Lcom/google/firebase/inappmessaging/model/InAppMessage;
.source "CardMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    }
.end annotation


# instance fields
.field private final backgroundHexColor:Ljava/lang/String;

.field private final body:Lcom/google/firebase/inappmessaging/model/Text;

.field private final landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

.field private final portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

.field private final primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

.field private final secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

.field private final title:Lcom/google/firebase/inappmessaging/model/Text;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/ImageData;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Action;Lcom/google/firebase/inappmessaging/model/Action;Ljava/util/Map;)V
    .locals 1
    .param p1, "campaignMetadata"    # Lcom/google/firebase/inappmessaging/model/CampaignMetadata;
    .param p2, "title"    # Lcom/google/firebase/inappmessaging/model/Text;
    .param p3, "body"    # Lcom/google/firebase/inappmessaging/model/Text;
    .param p4, "portraitImageData"    # Lcom/google/firebase/inappmessaging/model/ImageData;
    .param p5, "landscapeImageData"    # Lcom/google/firebase/inappmessaging/model/ImageData;
    .param p6, "backgroundHexColor"    # Ljava/lang/String;
    .param p7, "primaryAction"    # Lcom/google/firebase/inappmessaging/model/Action;
    .param p8, "secondaryAction"    # Lcom/google/firebase/inappmessaging/model/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/CampaignMetadata;",
            "Lcom/google/firebase/inappmessaging/model/Text;",
            "Lcom/google/firebase/inappmessaging/model/Text;",
            "Lcom/google/firebase/inappmessaging/model/ImageData;",
            "Lcom/google/firebase/inappmessaging/model/ImageData;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p9, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, p1, v0, p9}, Lcom/google/firebase/inappmessaging/model/InAppMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 107
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    .line 108
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    .line 109
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 110
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 111
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->backgroundHexColor:Ljava/lang/String;

    .line 112
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    .line 113
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/ImageData;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Action;Lcom/google/firebase/inappmessaging/model/Action;Ljava/util/Map;Lcom/google/firebase/inappmessaging/model/CardMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/model/CampaignMetadata;
    .param p2, "x1"    # Lcom/google/firebase/inappmessaging/model/Text;
    .param p3, "x2"    # Lcom/google/firebase/inappmessaging/model/Text;
    .param p4, "x3"    # Lcom/google/firebase/inappmessaging/model/ImageData;
    .param p5, "x4"    # Lcom/google/firebase/inappmessaging/model/ImageData;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/google/firebase/inappmessaging/model/Action;
    .param p8, "x7"    # Lcom/google/firebase/inappmessaging/model/Action;
    .param p9, "x8"    # Ljava/util/Map;
    .param p10, "x9"    # Lcom/google/firebase/inappmessaging/model/CardMessage$1;

    .line 23
    invoke-direct/range {p0 .. p9}, Lcom/google/firebase/inappmessaging/model/CardMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/ImageData;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Action;Lcom/google/firebase/inappmessaging/model/Action;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 1

    .line 188
    new-instance v0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/CardMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 60
    return v2

    .line 62
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/CardMessage;

    .line 63
    .local v1, "c":Lcom/google/firebase/inappmessaging/model/CardMessage;
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/CardMessage;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/CardMessage;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 64
    return v2

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    if-nez v3, :cond_3

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    if-nez v4, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/Text;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 67
    :cond_4
    return v2

    .line 69
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v3, :cond_6

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v4, :cond_7

    :cond_6
    if-eqz v3, :cond_8

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    .line 70
    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/Action;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 71
    :cond_7
    return v2

    .line 73
    :cond_8
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v3, :cond_9

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v4, :cond_a

    :cond_9
    if-eqz v3, :cond_b

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 74
    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/ImageData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 75
    :cond_a
    return v2

    .line 77
    :cond_b
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v3, :cond_c

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v4, :cond_d

    :cond_c
    if-eqz v3, :cond_e

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 78
    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/ImageData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 79
    :cond_d
    return v2

    .line 81
    :cond_e
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/Text;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 82
    return v2

    .line 84
    :cond_f
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/Action;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 85
    return v2

    .line 87
    :cond_10
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->backgroundHexColor:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/CardMessage;->backgroundHexColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 88
    return v0

    .line 90
    :cond_11
    return v2
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/model/Action;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->backgroundHexColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    return-object v0
.end method

.method public getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object v0
.end method

.method public getLandscapeImageData()Lcom/google/firebase/inappmessaging/model/ImageData;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object v0
.end method

.method public getPortraitImageData()Lcom/google/firebase/inappmessaging/model/ImageData;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object v0
.end method

.method public getPrimaryAction()Lcom/google/firebase/inappmessaging/model/Action;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    return-object v0
.end method

.method public getSecondaryAction()Lcom/google/firebase/inappmessaging/model/Action;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    .local v0, "bodyHash":I
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/Action;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 42
    .local v2, "secondaryActionHash":I
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 43
    .local v3, "portraitImageHash":I
    :goto_2
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v1

    .line 44
    .local v1, "landscapeImageHash":I
    :cond_3
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->backgroundHexColor:Ljava/lang/String;

    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/model/CardMessage;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    .line 47
    invoke-virtual {v5}, Lcom/google/firebase/inappmessaging/model/Action;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    .line 44
    return v4
.end method
