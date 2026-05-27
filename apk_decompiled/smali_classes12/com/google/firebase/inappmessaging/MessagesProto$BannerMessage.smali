.class public final Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BannerMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x4

.field public static final BACKGROUND_HEX_COLOR_FIELD_NUMBER:I = 0x5

.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private backgroundHexColor_:Ljava/lang/String;

.field private body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

.field private imageUrl_:Ljava/lang/String;

.field private title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4074
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;-><init>()V

    .line 4077
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 4078
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4080
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3222
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->imageUrl_:Ljava/lang/String;

    .line 3224
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 3225
    return-void
.end method

.method static synthetic access$5200()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1

    .line 3217
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 3217
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->clearTitle()V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 3217
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->clearBody()V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 3217
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->clearImageUrl()V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->setImageUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 3217
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->clearAction()V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->setBackgroundHexColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 3217
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->clearBackgroundHexColor()V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAction()V
    .locals 1

    .line 3492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3494
    return-void
.end method

.method private clearBackgroundHexColor()V
    .locals 1

    .line 3546
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 3547
    return-void
.end method

.method private clearBody()V
    .locals 1

    .line 3354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3356
    return-void
.end method

.method private clearImageUrl()V
    .locals 1

    .line 3412
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->imageUrl_:Ljava/lang/String;

    .line 3413
    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 3288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3290
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1

    .line 4083
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method private mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3476
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    .line 3477
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3478
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3479
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    .line 3481
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3484
    :goto_0
    return-void
.end method

.method private mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3338
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 3339
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3340
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3341
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 3343
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3346
    :goto_0
    return-void
.end method

.method private mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3272
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 3273
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3274
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3275
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 3277
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3280
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1

    .line 3638
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 3641
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3615
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3621
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3579
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3586
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3626
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3633
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3603
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3610
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3566
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3573
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3591
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3598
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;",
            ">;"
        }
    .end annotation

    .line 4089
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3462
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3463
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 3465
    return-void
.end method

.method private setBackgroundHexColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 3533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3535
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 3536
    return-void
.end method

.method private setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3558
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3559
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 3561
    return-void
.end method

.method private setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3325
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3327
    return-void
.end method

.method private setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 3398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3400
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->imageUrl_:Ljava/lang/String;

    .line 3401
    return-void
.end method

.method private setImageUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3425
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3426
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->imageUrl_:Ljava/lang/String;

    .line 3428
    return-void
.end method

.method private setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3259
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 3261
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 4021
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4067
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4064
    :pswitch_0
    return-object v2

    .line 4061
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 4046
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 4047
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;>;"
    if-nez v0, :cond_1

    .line 4048
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    monitor-enter v1

    .line 4049
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 4050
    if-nez v0, :cond_0

    .line 4051
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 4054
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 4056
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4058
    :cond_1
    :goto_0
    return-object v0

    .line 4043
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0

    .line 4029
    :pswitch_4
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "title_"

    aput-object v3, v0, v2

    const-string v2, "body_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "imageUrl_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "action_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "backgroundHexColor_"

    aput-object v2, v0, v1

    .line 4036
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u0208\u0004\t\u0005\u0208"

    .line 4039
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 4026
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object v0

    .line 4023
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 3452
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 3508
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->backgroundHexColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3521
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->backgroundHexColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 3314
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 3371
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3385
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->imageUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 3248
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 3441
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBody()Z
    .locals 1

    .line 3303
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 3237
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
