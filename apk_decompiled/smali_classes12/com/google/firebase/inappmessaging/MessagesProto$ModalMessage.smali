.class public final Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModalMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_FIELD_NUMBER:I = 0x4

.field public static final ACTION_FIELD_NUMBER:I = 0x5

.field public static final BACKGROUND_HEX_COLOR_FIELD_NUMBER:I = 0x6

.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

.field private action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private backgroundHexColor_:Ljava/lang/String;

.field private body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

.field private imageUrl_:Ljava/lang/String;

.field private title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5278
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;-><init>()V

    .line 5281
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 5282
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5284
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4233
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    .line 4235
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 4236
    return-void
.end method

.method static synthetic access$6900()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1

    .line 4228
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearTitle()V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearBody()V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearImageUrl()V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setImageUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearActionButton()V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearAction()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setBackgroundHexColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearBackgroundHexColor()V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAction()V
    .locals 1

    .line 4594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4596
    return-void
.end method

.method private clearActionButton()V
    .locals 1

    .line 4518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4520
    return-void
.end method

.method private clearBackgroundHexColor()V
    .locals 1

    .line 4648
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 4649
    return-void
.end method

.method private clearBody()V
    .locals 1

    .line 4365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4367
    return-void
.end method

.method private clearImageUrl()V
    .locals 1

    .line 4423
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    .line 4424
    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 4299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4301
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1

    .line 5287
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method private mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4576
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    .line 4577
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4578
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4579
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    .line 4581
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4584
    :goto_0
    return-void
.end method

.method private mergeActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4499
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    .line 4500
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4501
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4502
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    goto :goto_0

    .line 4504
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4507
    :goto_0
    return-void
.end method

.method private mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4349
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 4350
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4351
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4352
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 4354
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4357
    :goto_0
    return-void
.end method

.method private mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4283
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 4284
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4286
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 4288
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4291
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4740
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 4743
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4717
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4723
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4681
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4688
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4728
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4735
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4705
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4712
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4668
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4675
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4693
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4700
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;",
            ">;"
        }
    .end annotation

    .line 5293
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4561
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4563
    return-void
.end method

.method private setActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4483
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4485
    return-void
.end method

.method private setBackgroundHexColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 4635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4637
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 4638
    return-void
.end method

.method private setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4660
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4661
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    .line 4663
    return-void
.end method

.method private setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4336
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4338
    return-void
.end method

.method private setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 4409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4411
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    .line 4412
    return-void
.end method

.method private setImageUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4436
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4437
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    .line 4439
    return-void
.end method

.method private setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4270
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4272
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 5224
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5268
    :pswitch_0
    return-object v2

    .line 5265
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5250
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5251
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;>;"
    if-nez v0, :cond_1

    .line 5252
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    monitor-enter v1

    .line 5253
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 5254
    if-nez v0, :cond_0

    .line 5255
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 5258
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5260
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5262
    :cond_1
    :goto_0
    return-object v0

    .line 5247
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0

    .line 5232
    :pswitch_4
    const/4 v0, 0x6

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

    const-string v2, "actionButton_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "action_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "backgroundHexColor_"

    aput-object v2, v0, v1

    .line 5240
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u0208\u0004\t\u0005\t\u0006\u0208"

    .line 5243
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5229
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object v0

    .line 5226
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;-><init>()V

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

.method public getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 4548
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 4469
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 4610
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4623
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 4325
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 4382
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4396
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 4259
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 4535
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasActionButton()Z
    .locals 1

    .line 4455
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

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

    .line 4314
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

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

    .line 4248
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
