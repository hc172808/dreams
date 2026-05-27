.class public Lcom/definiteautomation/dreamludofantacy/model/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field public message_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message_id"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Result;->message_id:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getMessage_id()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Result;->message_id:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "message_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message_id"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Result;->message_id:Ljava/lang/String;

    .line 20
    return-void
.end method
