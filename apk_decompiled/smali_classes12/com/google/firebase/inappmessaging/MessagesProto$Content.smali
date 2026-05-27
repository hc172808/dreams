.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Content;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Content"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;,
        Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Content;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ContentOrBuilder;"
    }
.end annotation


# static fields
.field public static final BANNER_FIELD_NUMBER:I = 0x1

.field public static final CARD_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

.field public static final IMAGE_ONLY_FIELD_NUMBER:I = 0x3

.field public static final MODAL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Content;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private messageDetailsCase_:I

.field private messageDetails_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 894
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;-><init>()V

    .line 897
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 898
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 900
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 106
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearMessageDetails()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearImageOnly()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearCard()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearBanner()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearModal()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V

    return-void
.end method

.method private clearBanner()V
    .locals 2

    .line 218
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 222
    :cond_0
    return-void
.end method

.method private clearCard()V
    .locals 2

    .line 428
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 432
    :cond_0
    return-void
.end method

.method private clearImageOnly()V
    .locals 2

    .line 358
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 362
    :cond_0
    return-void
.end method

.method private clearMessageDetails()V
    .locals 1

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private clearModal()V
    .locals 2

    .line 288
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 292
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 903
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method private mergeBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 208
    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 209
    return-void
.end method

.method private mergeCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    .line 410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 412
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 413
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    .line 416
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 418
    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 419
    return-void
.end method

.method private mergeImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 342
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 348
    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 349
    return-void
.end method

.method private mergeModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 278
    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 279
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;
    .locals 1

    .line 509
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 512
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 457
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 437
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 462
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 469
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Content;",
            ">;"
        }
    .end annotation

    .line 909
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 191
    return-void
.end method

.method private setCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 400
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 401
    return-void
.end method

.method private setImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 330
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 331
    return-void
.end method

.method private setModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    .line 260
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    .line 261
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 840
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 887
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 884
    :pswitch_0
    return-object v2

    .line 881
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 866
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->PARSER:Lcom/google/protobuf/Parser;

    .line 867
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$Content;>;"
    if-nez v0, :cond_1

    .line 868
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    monitor-enter v1

    .line 869
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 870
    if-nez v0, :cond_0

    .line 871
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 874
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->PARSER:Lcom/google/protobuf/Parser;

    .line 876
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 878
    :cond_1
    :goto_0
    return-object v0

    .line 863
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$Content;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0

    .line 848
    :pswitch_4
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "messageDetails_"

    aput-object v3, v0, v2

    const-string v2, "messageDetailsCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    aput-object v2, v0, v1

    .line 856
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000"

    .line 859
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 845
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object v0

    .line 842
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;-><init>()V

    return-object v0

    nop

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

.method public getBanner()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 2

    .line 175
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0

    .line 178
    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object v0

    return-object v0
.end method

.method public getCard()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 2

    .line 385
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object v0

    .line 388
    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    return-object v0
.end method

.method public getImageOnly()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 2

    .line 315
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object v0

    .line 318
    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDetailsCase()Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->forNumber(I)Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    move-result-object v0

    return-object v0
.end method

.method public getModal()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 2

    .line 245
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0

    .line 248
    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasBanner()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCard()Z
    .locals 2

    .line 374
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasImageOnly()Z
    .locals 2

    .line 304
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasModal()Z
    .locals 2

    .line 234
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
