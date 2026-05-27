.class Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/entity/PaymentEntity;

.field final synthetic b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    .line 60
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;->a:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;->a:Lcom/payumoney/core/entity/PaymentEntity;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;->onItemClickListener(Lcom/payumoney/core/entity/PaymentEntity;Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 67
    return-void
.end method
