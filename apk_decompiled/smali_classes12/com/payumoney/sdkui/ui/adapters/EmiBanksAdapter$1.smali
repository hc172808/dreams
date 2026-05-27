.class Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    .line 65
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;->onViewMoreEmiBanksClicked()V

    .line 69
    return-void
.end method
