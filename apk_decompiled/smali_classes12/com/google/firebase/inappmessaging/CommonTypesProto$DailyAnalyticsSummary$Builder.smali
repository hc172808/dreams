.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummaryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4599
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$6700()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4600
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$1;

    .line 4592
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClicks()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    .line 4721
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4722
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$7300(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V

    .line 4723
    return-object p0
.end method

.method public clearErrors()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    .line 4761
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4762
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$7500(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V

    .line 4763
    return-object p0
.end method

.method public clearImpressions()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    .line 4681
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4682
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$7100(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V

    .line 4683
    return-object p0
.end method

.method public clearStartOfDayMillis()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    .line 4641
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4642
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$6900(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V

    .line 4643
    return-object p0
.end method

.method public getClicks()I
    .locals 1

    .line 4696
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->getClicks()I

    move-result v0

    return v0
.end method

.method public getErrors()I
    .locals 1

    .line 4736
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->getErrors()I

    move-result v0

    return v0
.end method

.method public getImpressions()I
    .locals 1

    .line 4656
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->getImpressions()I

    move-result v0

    return v0
.end method

.method public getStartOfDayMillis()J
    .locals 2

    .line 4614
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->getStartOfDayMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public setClicks(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 4708
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4709
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$7200(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V

    .line 4710
    return-object p0
.end method

.method public setErrors(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 4748
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4749
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$7400(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V

    .line 4750
    return-object p0
.end method

.method public setImpressions(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 4668
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4669
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$7000(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V

    .line 4670
    return-object p0
.end method

.method public setStartOfDayMillis(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 4627
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->copyOnWrite()V

    .line 4628
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->access$6800(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;J)V

    .line 4629
    return-object p0
.end method
