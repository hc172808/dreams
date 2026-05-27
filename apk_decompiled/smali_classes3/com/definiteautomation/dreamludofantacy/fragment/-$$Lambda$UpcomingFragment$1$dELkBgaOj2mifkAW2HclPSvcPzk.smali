.class public final synthetic Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$dELkBgaOj2mifkAW2HclPSvcPzk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;

.field public final synthetic f$1:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$dELkBgaOj2mifkAW2HclPSvcPzk;->f$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$dELkBgaOj2mifkAW2HclPSvcPzk;->f$1:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$dELkBgaOj2mifkAW2HclPSvcPzk;->f$0:Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$UpcomingFragment$1$dELkBgaOj2mifkAW2HclPSvcPzk;->f$1:Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment$1;->lambda$onResponse$0$UpcomingFragment$1(Lcom/definiteautomation/dreamludofantacy/model/MatchModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
