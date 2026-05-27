.class Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/graphics/BitmapCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;

.field final synthetic b:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    .line 86
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 96
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method

.method public onBitmapReceived(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 89
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;->b:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 91
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;->a:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method
