.class Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    .line 63
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;->onMoreWalletsSelected()V

    .line 67
    return-void
.end method
