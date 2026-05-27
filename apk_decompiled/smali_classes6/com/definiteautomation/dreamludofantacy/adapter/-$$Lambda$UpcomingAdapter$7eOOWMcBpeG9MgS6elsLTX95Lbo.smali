.class public final synthetic Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$UpcomingAdapter$7eOOWMcBpeG9MgS6elsLTX95Lbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$UpcomingAdapter$7eOOWMcBpeG9MgS6elsLTX95Lbo;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iput p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$UpcomingAdapter$7eOOWMcBpeG9MgS6elsLTX95Lbo;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$UpcomingAdapter$7eOOWMcBpeG9MgS6elsLTX95Lbo;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;

    iget v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$UpcomingAdapter$7eOOWMcBpeG9MgS6elsLTX95Lbo;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;->lambda$onBindViewHolder$0$UpcomingAdapter(ILandroid/view/View;)V

    return-void
.end method
