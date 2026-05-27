.class public Leasypay/entity/AssistUrlResponse;
.super Ljava/lang/Object;
.source "AssistUrlResponse.java"


# instance fields
.field private operations:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leasypay/entity/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Leasypay/entity/AssistUrlResponse;->operations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getOperations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Leasypay/entity/Operation;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Leasypay/entity/AssistUrlResponse;->operations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Leasypay/entity/AssistUrlResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setOperations(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Leasypay/entity/Operation;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/entity/Operation;>;"
    iput-object p1, p0, Leasypay/entity/AssistUrlResponse;->operations:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Leasypay/entity/AssistUrlResponse;->url:Ljava/lang/String;

    .line 41
    return-void
.end method
