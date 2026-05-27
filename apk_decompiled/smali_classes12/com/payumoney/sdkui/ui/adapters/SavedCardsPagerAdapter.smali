.class public Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "onCardClickListener"    # Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;",
            "Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;",
            ")V"
        }
    .end annotation

    .line 58
    .local p2, "savedCardList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/CardDetail;>;"
    .local p3, "binDetailsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payumoney/core/response/BinDetail;>;"
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->g:I

    .line 56
    iput v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->h:I

    .line 59
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->c:Landroid/view/LayoutInflater;

    .line 61
    iput-object p4, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->d:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;

    .line 62
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->a:Ljava/util/List;

    .line 63
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b:I

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->h:I

    return p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->d:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->g:I

    return p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->g:I

    return p0
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->h:I

    return p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 304
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 70
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 22
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->c:Landroid/view/LayoutInflater;

    sget v4, Lcom/payumoney/sdkui/R$layout;->saved_card_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 93
    sget v4, Lcom/payumoney/sdkui/R$id;->saved_card_highlighter_layout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 94
    sget v6, Lcom/payumoney/sdkui/R$id;->layout_saved_item_add_new_card:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 95
    sget v7, Lcom/payumoney/sdkui/R$id;->saved_card_inner_layout:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 96
    sget v8, Lcom/payumoney/sdkui/R$id;->highlight_view_saved_card:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 97
    sget v9, Lcom/payumoney/sdkui/R$id;->card_cardNumber:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 99
    sget v10, Lcom/payumoney/sdkui/R$id;->card_bank_name:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 100
    sget v11, Lcom/payumoney/sdkui/R$id;->card_type:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 101
    sget v12, Lcom/payumoney/sdkui/R$id;->bank_logo:I

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 103
    sget v13, Lcom/payumoney/sdkui/R$id;->add_new_card:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 104
    sget v14, Lcom/payumoney/sdkui/R$id;->card_cardType_image:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 106
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-lt v4, v15, :cond_0

    .line 110
    iget-object v4, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0xa

    const/16 v21, 0x1

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v21}, Lcom/payumoney/sdkui/ui/utils/Utils;->getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v15, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    invoke-static {v15}, Lcom/payumoney/sdkui/ui/utils/Utils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v16

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0xa

    const/16 v20, 0x1

    invoke-static/range {v15 .. v20}, Lcom/payumoney/sdkui/ui/utils/Utils;->getCustomDrawable(Landroid/content/Context;IZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :goto_0
    const/4 v4, 0x4

    const-string v15, "CID000"

    if-nez v2, :cond_2

    .line 116
    new-instance v8, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$1;

    invoke-direct {v8, v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$1;-><init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v8, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$2;

    invoke-direct {v8, v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$2;-><init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)V

    invoke-virtual {v13, v8}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v8, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    sget v11, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v8

    new-instance v11, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$3;

    invoke-direct {v11, v0, v12}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$3;-><init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v15, v11}, Lcom/payumoney/graphics/AssetDownloadManager;->getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 148
    iget-object v8, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    iget-object v8, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/payumoney/core/entity/CardDetail;

    .line 151
    iget-object v11, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    sget v12, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v10

    .line 153
    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/payumoney/core/utils/SdkHelper;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/payumoney/graphics/AssetsHelper;->getCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;

    invoke-direct {v10, v0, v14}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$4;-><init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v8, v10}, Lcom/payumoney/graphics/AssetDownloadManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 175
    :cond_1
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 180
    :cond_2
    iget v13, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->g:I

    if-ne v13, v2, :cond_3

    .line 181
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_3
    new-instance v8, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;

    invoke-direct {v8, v0, v2}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;-><init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    nop

    .line 193
    nop

    .line 194
    nop

    .line 195
    iget-object v8, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->a:Ljava/util/List;

    add-int/lit8 v13, v2, -0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/payumoney/core/entity/CardDetail;

    .line 196
    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x6

    invoke-virtual {v13, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 198
    iget-object v13, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    const-string v5, "cc"

    if-eqz v13, :cond_7

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 200
    iget-object v13, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v13}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v13

    const-string v2, "null"

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    .line 201
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v13}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    .line 202
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v13}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 203
    iget-object v13, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v13}, Lcom/payumoney/core/response/BinDetail;->getBankName()Ljava/lang/String;

    move-result-object v13

    .line 204
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v15, v13

    goto :goto_1

    .line 206
    :cond_4
    nop

    .line 207
    iget-object v13, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    move-object/from16 v18, v15

    sget v15, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {v13, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v15, v18

    .line 211
    :goto_1
    iget-object v10, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v10}, Lcom/payumoney/core/response/BinDetail;->getCategory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    iget-object v5, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lcom/payumoney/sdkui/R$string;->payu_credit:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 215
    :cond_5
    iget-object v5, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lcom/payumoney/sdkui/R$string;->payu_debit:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    :goto_2
    iget-object v10, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v10}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    .line 221
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v10}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    .line 222
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v2}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 223
    iget-object v2, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/response/BinDetail;

    invoke-virtual {v2}, Lcom/payumoney/core/response/BinDetail;->getBinOwner()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 227
    :cond_6
    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 198
    :cond_7
    move-object/from16 v18, v15

    .line 233
    nop

    .line 234
    iget-object v2, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    sget v4, Lcom/payumoney/sdkui/R$string;->default_bank_name:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    iget-object v2, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/payumoney/sdkui/R$string;->payu_credit:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_3

    .line 239
    :cond_8
    iget-object v2, v0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/payumoney/sdkui/R$string;->payu_debit:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 243
    :goto_3
    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, v18

    .line 247
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v8}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v4

    new-instance v5, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$6;

    invoke-direct {v5, v0, v12}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$6;-><init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v15, v5}, Lcom/payumoney/graphics/AssetDownloadManager;->getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 272
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/utils/SdkHelper;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/graphics/AssetsHelper;->getCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;

    invoke-direct {v5, v0, v14}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$7;-><init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v2, v5}, Lcom/payumoney/graphics/AssetDownloadManager;->getCardBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 295
    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 83
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setItemSelectedCurrentPosition(I)V
    .locals 2
    .param p1, "newPosition"    # I

    .line 45
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->g:I

    .line 47
    if-nez p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->d:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;->onAddCardClick()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->d:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;

    iget v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->h:I

    invoke-interface {v0, p1, v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;->onSavedCardClick(II)V

    .line 52
    :goto_0
    return-void
.end method
