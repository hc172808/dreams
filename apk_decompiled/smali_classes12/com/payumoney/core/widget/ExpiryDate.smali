.class public Lcom/payumoney/core/widget/ExpiryDate;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/payumoney/core/widget/ExpiryDate$1;

    invoke-direct {v0, p0}, Lcom/payumoney/core/widget/ExpiryDate$1;-><init>(Lcom/payumoney/core/widget/ExpiryDate;)V

    iput-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate;->b:Landroid/text/TextWatcher;

    .line 102
    invoke-direct {p0}, Lcom/payumoney/core/widget/ExpiryDate;->a()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/payumoney/core/widget/ExpiryDate$1;

    invoke-direct {v0, p0}, Lcom/payumoney/core/widget/ExpiryDate$1;-><init>(Lcom/payumoney/core/widget/ExpiryDate;)V

    iput-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate;->b:Landroid/text/TextWatcher;

    .line 97
    invoke-direct {p0}, Lcom/payumoney/core/widget/ExpiryDate;->a()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/payumoney/core/widget/ExpiryDate$1;

    invoke-direct {v0, p0}, Lcom/payumoney/core/widget/ExpiryDate$1;-><init>(Lcom/payumoney/core/widget/ExpiryDate;)V

    iput-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate;->b:Landroid/text/TextWatcher;

    .line 91
    invoke-direct {p0}, Lcom/payumoney/core/widget/ExpiryDate;->a()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/widget/ExpiryDate;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/payumoney/core/widget/ExpiryDate;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/core/widget/ExpiryDate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/payumoney/core/widget/ExpiryDate;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/payumoney/core/widget/ExpiryDate;->b:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/payumoney/core/widget/ExpiryDate;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    return-void
.end method


# virtual methods
.method public getMonth()Lcom/payumoney/core/utils/Month;
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    nop

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 112
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/payumoney/core/utils/Month;->getMonth(Ljava/lang/String;)Lcom/payumoney/core/utils/Month;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getYear()Lcom/payumoney/core/utils/Year;
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/payumoney/core/widget/ExpiryDate;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    nop

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 126
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/payumoney/core/utils/Year;->getYear(Ljava/lang/String;)Lcom/payumoney/core/utils/Year;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
