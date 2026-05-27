.class public Lcom/definiteautomation/dreamludofantacy/model/AppModel;
.super Ljava/lang/Object;
.source "AppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;
    }
.end annotation


# instance fields
.field private result:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel;->result:Ljava/util/List;

    return-object v0
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;>;"
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel;->result:Ljava/util/List;

    .line 18
    return-void
.end method
