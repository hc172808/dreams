.class Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    .line 63
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;->onViewMoreBanksClick()V

    .line 67
    return-void
.end method
