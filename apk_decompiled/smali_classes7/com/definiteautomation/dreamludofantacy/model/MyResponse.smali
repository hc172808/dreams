.class public Lcom/definiteautomation/dreamludofantacy/model/MyResponse;
.super Ljava/lang/Object;
.source "MyResponse.java"


# instance fields
.field private canonical_ids:I

.field private failure:I

.field private multicast_id:J

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/Result;",
            ">;"
        }
    .end annotation
.end field

.field public success:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(JIIILjava/util/List;)V
    .locals 0
    .param p1, "multicast_id"    # J
    .param p3, "success"    # I
    .param p4, "failure"    # I
    .param p5, "canonical_ids"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "multicast_id",
            "success",
            "failure",
            "canonical_ids",
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/Result;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->multicast_id:J

    .line 17
    iput p3, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->success:I

    .line 18
    iput p4, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->failure:I

    .line 19
    iput p5, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->canonical_ids:I

    .line 20
    iput-object p6, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->results:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCanonical_ids()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->canonical_ids:I

    return v0
.end method

.method public getFailure()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->failure:I

    return v0
.end method

.method public getMulticast_id()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->multicast_id:J

    return-wide v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/Result;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method public getSuccess()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->success:I

    return v0
.end method

.method public setCanonical_ids(I)V
    .locals 0
    .param p1, "canonical_ids"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canonical_ids"
        }
    .end annotation

    .line 52
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->canonical_ids:I

    .line 53
    return-void
.end method

.method public setFailure(I)V
    .locals 0
    .param p1, "failure"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->failure:I

    .line 45
    return-void
.end method

.method public setMulticast_id(J)V
    .locals 0
    .param p1, "multicast_id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multicast_id"
        }
    .end annotation

    .line 28
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->multicast_id:J

    .line 29
    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/Result;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/Result;>;"
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->results:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MyResponse;->success:I

    .line 37
    return-void
.end method
