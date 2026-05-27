.class Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;

.field final synthetic b:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    .line 87
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 97
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 90
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 92
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method
