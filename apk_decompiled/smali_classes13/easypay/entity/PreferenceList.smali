.class public Leasypay/entity/PreferenceList;
.super Ljava/lang/Object;
.source "PreferenceList.java"


# instance fields
.field private prefList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prefList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leasypay/entity/AssistDetailsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leasypay/entity/PreferenceList;->prefList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPrefList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leasypay/entity/AssistDetailsResponse;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Leasypay/entity/PreferenceList;->prefList:Ljava/util/List;

    return-object v0
.end method

.method public setPrefList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leasypay/entity/AssistDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "prefList":Ljava/util/List;, "Ljava/util/List<Leasypay/entity/AssistDetailsResponse;>;"
    iput-object p1, p0, Leasypay/entity/PreferenceList;->prefList:Ljava/util/List;

    .line 20
    return-void
.end method
