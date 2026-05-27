.class public final Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareCameraEffectContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareCameraEffectContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareCameraEffectContent;",
        "Lcom/facebook/share/model/ShareCameraEffectContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private arguments:Lcom/facebook/share/model/CameraEffectArguments;

.field private effectId:Ljava/lang/String;

.field private textures:Lcom/facebook/share/model/CameraEffectTextures;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    .line 107
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->effectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectArguments;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    .line 107
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectTextures;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    .line 107
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareCameraEffectContent;
    .locals 2

    .line 156
    new-instance v0, Lcom/facebook/share/model/ShareCameraEffectContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareCameraEffectContent;-><init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;Lcom/facebook/share/model/ShareCameraEffectContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->build()Lcom/facebook/share/model/ShareCameraEffectContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareCameraEffectContent;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .locals 2
    .param p1, "model"    # Lcom/facebook/share/model/ShareCameraEffectContent;

    .line 161
    if-nez p1, :cond_0

    .line 162
    return-object p0

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    iget-object v1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->effectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->setEffectId(Ljava/lang/String;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->setArguments(Lcom/facebook/share/model/CameraEffectArguments;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 107
    check-cast p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->readFrom(Lcom/facebook/share/model/ShareCameraEffectContent;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 107
    check-cast p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->readFrom(Lcom/facebook/share/model/ShareCameraEffectContent;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setArguments(Lcom/facebook/share/model/CameraEffectArguments;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .locals 0
    .param p1, "arguments"    # Lcom/facebook/share/model/CameraEffectArguments;

    .line 133
    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    .line 134
    return-object p0
.end method

.method public setEffectId(Ljava/lang/String;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .locals 0
    .param p1, "effectId"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->effectId:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setTextures(Lcom/facebook/share/model/CameraEffectTextures;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .locals 0
    .param p1, "textures"    # Lcom/facebook/share/model/CameraEffectTextures;

    .line 144
    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    .line 145
    return-object p0
.end method
