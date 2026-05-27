.class public final synthetic Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$OngoingAdapter$MMjL4UbNPtPKgVXV3GnbzuaQSqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$OngoingAdapter$MMjL4UbNPtPKgVXV3GnbzuaQSqk;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    iput p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$OngoingAdapter$MMjL4UbNPtPKgVXV3GnbzuaQSqk;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$OngoingAdapter$MMjL4UbNPtPKgVXV3GnbzuaQSqk;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;

    iget v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$OngoingAdapter$MMjL4UbNPtPKgVXV3GnbzuaQSqk;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->lambda$onBindViewHolder$0$OngoingAdapter(ILandroid/view/View;)V

    return-void
.end method
