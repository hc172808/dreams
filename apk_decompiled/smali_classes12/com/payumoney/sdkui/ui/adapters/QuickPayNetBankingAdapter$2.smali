.class Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;

.field final synthetic b:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    .line 84
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 94
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 87
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method
