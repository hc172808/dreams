.class public Lcom/goodiebag/pinview/Pinview;
.super Landroid/widget/LinearLayout;
.source "Pinview.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;,
        Lcom/goodiebag/pinview/Pinview$PinViewEventListener;,
        Lcom/goodiebag/pinview/Pinview$InputType;
    }
.end annotation


# instance fields
.field private final DENSITY:F

.field currentFocus:Landroid/view/View;

.field private editTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field filters:[Landroid/text/InputFilter;

.field private finalNumberPin:Z

.field private fromSetValue:Z

.field private inputType:Lcom/goodiebag/pinview/Pinview$InputType;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCursorVisible:Z

.field private mDelPressed:Z

.field private mForceKeyboard:Z

.field private mHint:Ljava/lang/String;

.field private mListener:Lcom/goodiebag/pinview/Pinview$PinViewEventListener;

.field private mPassword:Z

.field private mPinBackground:I

.field private mPinHeight:I

.field private mPinLength:I

.field private mPinWidth:I

.field private mSplitWidth:I

.field private mTextSize:I

.field params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodiebag/pinview/Pinview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/goodiebag/pinview/Pinview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0}, Lcom/goodiebag/pinview/Pinview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->DENSITY:F

    .line 75
    const/4 v0, 0x4

    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    .line 77
    const/16 v0, 0x32

    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    .line 78
    const/16 v1, 0xc

    iput v1, p0, Lcom/goodiebag/pinview/Pinview;->mTextSize:I

    .line 79
    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    .line 80
    const/16 v0, 0x14

    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    .line 82
    iput-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mDelPressed:Z

    .line 83
    sget v1, Lcom/goodiebag/pinview/R$drawable;->sample_background:I

    iput v1, p0, Lcom/goodiebag/pinview/Pinview;->mPinBackground:I

    .line 85
    iput-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    .line 86
    const-string v1, ""

    iput-object v1, p0, Lcom/goodiebag/pinview/Pinview;->mHint:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/goodiebag/pinview/Pinview$InputType;->TEXT:Lcom/goodiebag/pinview/Pinview$InputType;

    iput-object v1, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    .line 88
    iput-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->finalNumberPin:Z

    .line 90
    iput-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->fromSetValue:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mForceKeyboard:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    .line 109
    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/goodiebag/pinview/Pinview;->filters:[Landroid/text/InputFilter;

    .line 123
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/goodiebag/pinview/Pinview;->setGravity(I)V

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/goodiebag/pinview/Pinview;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/goodiebag/pinview/Pinview;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/goodiebag/pinview/Pinview;

    .line 70
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/goodiebag/pinview/Pinview;)V
    .locals 0
    .param p0, "x0"    # Lcom/goodiebag/pinview/Pinview;

    .line 70
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->openKeyboard()V

    return-void
.end method

.method static synthetic access$202(Lcom/goodiebag/pinview/Pinview;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/goodiebag/pinview/Pinview;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/goodiebag/pinview/Pinview;->mDelPressed:Z

    return p1
.end method

.method private createEditTexts()V
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/goodiebag/pinview/Pinview;->removeAllViews()V

    .line 182
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    if-ge v0, v1, :cond_0

    .line 185
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/goodiebag/pinview/Pinview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, "editText":Landroid/widget/EditText;
    iget v2, p0, Lcom/goodiebag/pinview/Pinview;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 187
    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/goodiebag/pinview/Pinview;->addView(Landroid/view/View;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/goodiebag/pinview/Pinview;->generateOneEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_0
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->setTransformation()V

    .line 192
    return-void
.end method

.method private generateOneEditText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 5
    .param p1, "styleEditText"    # Landroid/widget/EditText;
    .param p2, "tag"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->filters:[Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 230
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->filters:[Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 231
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 233
    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 235
    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 237
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v0, Lcom/goodiebag/pinview/Pinview$3;

    invoke-direct {v0, p0}, Lcom/goodiebag/pinview/Pinview$3;-><init>(Lcom/goodiebag/pinview/Pinview;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 248
    :cond_0
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinBackground:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 249
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 250
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->getKeyboardInputType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 252
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 254
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 255
    return-void
.end method

.method private getIndexOfCurrentFocus()I
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getKeyboardInputType()I
    .locals 2

    .line 259
    sget-object v0, Lcom/goodiebag/pinview/Pinview$5;->$SwitchMap$com$goodiebag$pinview$Pinview$InputType:[I

    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    invoke-virtual {v1}, Lcom/goodiebag/pinview/Pinview$InputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 267
    const/4 v0, 0x1

    .local v0, "it":I
    goto :goto_0

    .line 264
    .end local v0    # "it":I
    :pswitch_0
    const/4 v0, 0x1

    .line 265
    .restart local v0    # "it":I
    goto :goto_0

    .line 261
    .end local v0    # "it":I
    :pswitch_1
    const/16 v0, 0x12

    .line 262
    .restart local v0    # "it":I
    nop

    .line 269
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 135
    invoke-virtual {p0}, Lcom/goodiebag/pinview/Pinview;->removeAllViews()V

    .line 136
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/goodiebag/pinview/Pinview;->DENSITY:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    .line 137
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    .line 138
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/goodiebag/pinview/Pinview;->setWillNotDraw(Z)V

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/goodiebag/pinview/Pinview;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    invoke-virtual {p0, v0}, Lcom/goodiebag/pinview/Pinview;->setOrientation(I)V

    .line 143
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->createEditTexts()V

    .line 144
    new-instance v1, Lcom/goodiebag/pinview/Pinview$1;

    invoke-direct {v1, p0}, Lcom/goodiebag/pinview/Pinview$1;-><init>(Lcom/goodiebag/pinview/Pinview;)V

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    .local v0, "firstEditText":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Lcom/goodiebag/pinview/Pinview$2;

    invoke-direct {v1, p0}, Lcom/goodiebag/pinview/Pinview$2;-><init>(Lcom/goodiebag/pinview/Pinview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->updateEnabledState()V

    .line 174
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 202
    if-eqz p2, :cond_0

    .line 203
    sget-object v0, Lcom/goodiebag/pinview/R$styleable;->Pinview:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_pinBackground:I

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinBackground:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinBackground:I

    .line 205
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_pinLength:I

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    .line 206
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_pinHeight:I

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    .line 207
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_pinWidth:I

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    .line 208
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_splitWidth:I

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    .line 209
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_textSize:I

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/goodiebag/pinview/Pinview;->mTextSize:I

    .line 210
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_cursorVisible:I

    iget-boolean v3, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    .line 211
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_password:I

    iget-boolean v3, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    .line 212
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_forceKeyboard:I

    iget-boolean v3, p0, Lcom/goodiebag/pinview/Pinview;->mForceKeyboard:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/goodiebag/pinview/Pinview;->mForceKeyboard:Z

    .line 213
    sget v2, Lcom/goodiebag/pinview/R$styleable;->Pinview_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/goodiebag/pinview/Pinview;->mHint:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/goodiebag/pinview/Pinview$InputType;->values()[Lcom/goodiebag/pinview/Pinview$InputType;

    move-result-object v2

    .line 215
    .local v2, "its":[Lcom/goodiebag/pinview/Pinview$InputType;
    sget v3, Lcom/goodiebag/pinview/R$styleable;->Pinview_inputType:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    .line 216
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "its":[Lcom/goodiebag/pinview/Pinview$InputType;
    :cond_0
    return-void
.end method

.method private openKeyboard()V
    .locals 3

    .line 302
    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mForceKeyboard:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/goodiebag/pinview/Pinview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 304
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 306
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setCursorColor(Landroid/widget/EditText;I)V
    .locals 8
    .param p1, "view"    # Landroid/widget/EditText;
    .param p2, "color"    # I

    .line 720
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 721
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 722
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 725
    .local v2, "drawableResId":I
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mEditor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v0, v3

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 727
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 730
    .local v3, "editor":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 731
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 732
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 734
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    aput-object v4, v5, v1

    .line 737
    .local v5, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mCursorDrawable"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v0, v6

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 739
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "drawableResId":I
    .end local v3    # "editor":Ljava/lang/Object;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawables":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 742
    :goto_0
    return-void
.end method

.method private setTransformation()V
    .locals 4

    .line 384
    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 386
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 387
    new-instance v3, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;

    invoke-direct {v3, p0, v1}, Lcom/goodiebag/pinview/Pinview$PinTransformationMethod;-><init>(Lcom/goodiebag/pinview/Pinview;Lcom/goodiebag/pinview/Pinview$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 388
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 389
    .end local v2    # "editText":Landroid/widget/EditText;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 392
    .restart local v2    # "editText":Landroid/widget/EditText;
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 393
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 394
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 395
    .end local v2    # "editText":Landroid/widget/EditText;
    goto :goto_1

    .line 397
    :cond_2
    :goto_2
    return-void
.end method

.method private updateEnabledState()V
    .locals 5

    .line 457
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->getIndexOfCurrentFocus()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 458
    .local v0, "currentTag":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 459
    iget-object v3, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 460
    .local v3, "editText":Landroid/widget/EditText;
    if-gt v2, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 458
    .end local v3    # "editText":Landroid/widget/EditText;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "index":I
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .line 467
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 402
    return-void
.end method

.method public clearValue()V
    .locals 1

    .line 312
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/goodiebag/pinview/Pinview;->setValue(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()Lcom/goodiebag/pinview/Pinview$InputType;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    return-object v0
.end method

.method public getPinBackground()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinBackground:I

    return v0
.end method

.method public getPinHeight()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    return v0
.end method

.method public getPinLength()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    return v0
.end method

.method public getPinWidth()I
    .locals 1

    .line 590
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    return v0
.end method

.method public getSplitWidth()I
    .locals 1

    .line 564
    iget v0, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 281
    .local v2, "et":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .end local v2    # "et":Landroid/widget/EditText;
    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPassword()Z
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFocused"    # Z

    .line 352
    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    if-nez v0, :cond_5

    .line 353
    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mDelPressed:Z

    if-eqz v0, :cond_0

    .line 354
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mDelPressed:Z

    .line 356
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 359
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 360
    if-eq v1, p1, :cond_1

    .line 361
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 363
    :cond_1
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    .line 365
    :goto_1
    return-void

    .line 367
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 369
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 371
    :cond_4
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    goto :goto_2

    .line 373
    :cond_5
    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    if-eqz v0, :cond_6

    .line 374
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    goto :goto_2

    .line 376
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 378
    :goto_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 480
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    const/16 v0, 0x43

    if-ne p2, v0, :cond_7

    .line 482
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->getIndexOfCurrentFocus()I

    move-result v0

    .line 484
    .local v0, "currentTag":I
    iget-object v3, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    sget-object v4, Lcom/goodiebag/pinview/Pinview$InputType;->NUMBER:Lcom/goodiebag/pinview/Pinview$InputType;

    const-string v5, ""

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/goodiebag/pinview/Pinview;->finalNumberPin:Z

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_3

    iget-boolean v3, p0, Lcom/goodiebag/pinview/Pinview;->finalNumberPin:Z

    if-eqz v3, :cond_3

    .line 486
    :cond_1
    iget-object v3, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 487
    iget-object v3, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_2
    iput-boolean v1, p0, Lcom/goodiebag/pinview/Pinview;->finalNumberPin:Z

    goto :goto_0

    .line 490
    :cond_3
    if-lez v0, :cond_5

    .line 491
    iput-boolean v2, p0, Lcom/goodiebag/pinview/Pinview;->mDelPressed:Z

    .line 492
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 494
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 496
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :cond_4
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    :cond_5
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 504
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_6
    :goto_0
    return v2

    .line 510
    .end local v0    # "currentTag":I
    :cond_7
    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "i1"    # I
    .param p4, "count"    # I

    .line 415
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 416
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->getIndexOfCurrentFocus()I

    move-result v0

    .line 417
    .local v0, "currentTag":I
    iget v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 418
    const-wide/16 v2, 0x1

    .line 419
    .local v2, "delay":J
    iget-boolean v4, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    if-eqz v4, :cond_0

    .line 420
    const-wide/16 v2, 0x19

    .line 421
    :cond_0
    new-instance v4, Lcom/goodiebag/pinview/Pinview$4;

    invoke-direct {v4, p0, v0}, Lcom/goodiebag/pinview/Pinview$4;-><init>(Lcom/goodiebag/pinview/Pinview;I)V

    invoke-virtual {p0, v4, v2, v3}, Lcom/goodiebag/pinview/Pinview;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    .end local v2    # "delay":J
    :cond_1
    iget v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    sget-object v3, Lcom/goodiebag/pinview/Pinview$InputType;->NUMBER:Lcom/goodiebag/pinview/Pinview$InputType;

    if-eq v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    if-eqz v2, :cond_5

    .line 433
    :cond_3
    iput-boolean v1, p0, Lcom/goodiebag/pinview/Pinview;->finalNumberPin:Z

    goto :goto_0

    .line 436
    .end local v0    # "currentTag":I
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 437
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->getIndexOfCurrentFocus()I

    move-result v0

    .line 438
    .restart local v0    # "currentTag":I
    iput-boolean v1, p0, Lcom/goodiebag/pinview/Pinview;->mDelPressed:Z

    .line 440
    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 441
    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 436
    .end local v0    # "currentTag":I
    :cond_5
    :goto_0
    nop

    .line 444
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_2
    iget v2, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    if-ge v0, v2, :cond_9

    .line 445
    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v1, :cond_7

    .line 446
    goto :goto_3

    .line 447
    :cond_7
    iget-boolean v2, p0, Lcom/goodiebag/pinview/Pinview;->fromSetValue:Z

    if-nez v2, :cond_8

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->mListener:Lcom/goodiebag/pinview/Pinview$PinViewEventListener;

    if-eqz v2, :cond_8

    .line 448
    invoke-interface {v2, p0, v1}, Lcom/goodiebag/pinview/Pinview$PinViewEventListener;->onDataEntered(Lcom/goodiebag/pinview/Pinview;Z)V

    .line 444
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 450
    .end local v0    # "index":I
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->updateEnabledState()V

    .line 451
    return-void
.end method

.method public requestPinEntryFocus()Landroid/view/View;
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->getIndexOfCurrentFocus()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 293
    .local v0, "currentTag":I
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 294
    .local v1, "currentEditText":Landroid/widget/EditText;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->openKeyboard()V

    .line 298
    return-object v1
.end method

.method public setCursorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 684
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 688
    .local v1, "edt":Landroid/widget/EditText;
    invoke-direct {p0, v1, p1}, Lcom/goodiebag/pinview/Pinview;->setCursorColor(Landroid/widget/EditText;I)V

    .line 689
    .end local v1    # "edt":Landroid/widget/EditText;
    goto :goto_0

    .line 690
    :cond_1
    return-void

    .line 685
    :cond_2
    :goto_1
    return-void
.end method

.method public setCursorShape(I)V
    .locals 4
    .param p1, "shape"    # I

    .line 704
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 709
    .local v1, "edt":Landroid/widget/EditText;
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 710
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v2    # "f":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 712
    :catch_0
    move-exception v2

    .line 714
    .end local v1    # "edt":Landroid/widget/EditText;
    :goto_1
    goto :goto_0

    .line 715
    :cond_1
    return-void

    .line 705
    :cond_2
    :goto_2
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "mHint"    # Ljava/lang/String;

    .line 624
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->mHint:Ljava/lang/String;

    .line 625
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 626
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .end local v1    # "editText":Landroid/widget/EditText;
    goto :goto_0

    .line 627
    :cond_0
    return-void
.end method

.method public setInputType(Lcom/goodiebag/pinview/Pinview$InputType;)V
    .locals 3
    .param p1, "inputType"    # Lcom/goodiebag/pinview/Pinview$InputType;

    .line 651
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    .line 652
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->getKeyboardInputType()I

    move-result v0

    .line 653
    .local v0, "it":I
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 654
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 655
    .end local v2    # "editText":Landroid/widget/EditText;
    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 643
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->mClickListener:Landroid/view/View$OnClickListener;

    .line 644
    return-void
.end method

.method public setPassword(Z)V
    .locals 0
    .param p1, "password"    # Z

    .line 615
    iput-boolean p1, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    .line 616
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->setTransformation()V

    .line 617
    return-void
.end method

.method public setPinBackgroundRes(I)V
    .locals 2
    .param p1, "res"    # I

    .line 636
    iput p1, p0, Lcom/goodiebag/pinview/Pinview;->mPinBackground:I

    .line 637
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 638
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .end local v1    # "editText":Landroid/widget/EditText;
    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method public setPinHeight(I)V
    .locals 3
    .param p1, "pinHeight"    # I

    .line 582
    iput p1, p0, Lcom/goodiebag/pinview/Pinview;->mPinHeight:I

    .line 583
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 584
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 585
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    .end local v1    # "editText":Landroid/widget/EditText;
    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method public setPinLength(I)V
    .locals 0
    .param p1, "pinLength"    # I

    .line 606
    iput p1, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    .line 607
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->createEditTexts()V

    .line 608
    return-void
.end method

.method public setPinViewEventListener(Lcom/goodiebag/pinview/Pinview$PinViewEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/goodiebag/pinview/Pinview$PinViewEventListener;

    .line 659
    iput-object p1, p0, Lcom/goodiebag/pinview/Pinview;->mListener:Lcom/goodiebag/pinview/Pinview$PinViewEventListener;

    .line 660
    return-void
.end method

.method public setPinWidth(I)V
    .locals 3
    .param p1, "pinWidth"    # I

    .line 594
    iput p1, p0, Lcom/goodiebag/pinview/Pinview;->mPinWidth:I

    .line 595
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 596
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 597
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    .end local v1    # "editText":Landroid/widget/EditText;
    goto :goto_0

    .line 599
    :cond_0
    return-void
.end method

.method public setSplitWidth(I)V
    .locals 4
    .param p1, "splitWidth"    # I

    .line 568
    iput p1, p0, Lcom/goodiebag/pinview/Pinview;->mSplitWidth:I

    .line 569
    div-int/lit8 v0, p1, 0x2

    .line 570
    .local v0, "margin":I
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 572
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 573
    .local v2, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/goodiebag/pinview/Pinview;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    .end local v2    # "editText":Landroid/widget/EditText;
    goto :goto_0

    .line 575
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 694
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 698
    .local v1, "edt":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 699
    .end local v1    # "edt":Landroid/widget/EditText;
    goto :goto_0

    .line 700
    :cond_1
    return-void

    .line 695
    :cond_2
    :goto_1
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .line 673
    iput p1, p0, Lcom/goodiebag/pinview/Pinview;->mTextSize:I

    .line 674
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 678
    .local v1, "edt":Landroid/widget/EditText;
    iget v2, p0, Lcom/goodiebag/pinview/Pinview;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 679
    .end local v1    # "edt":Landroid/widget/EditText;
    goto :goto_0

    .line 680
    :cond_1
    return-void

    .line 675
    :cond_2
    :goto_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 321
    const-string v0, "[0-9]*"

    .line 322
    .local v0, "regex":Ljava/lang/String;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/goodiebag/pinview/Pinview;->fromSetValue:Z

    .line 323
    iget-object v2, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    sget-object v3, Lcom/goodiebag/pinview/Pinview$InputType;->NUMBER:Lcom/goodiebag/pinview/Pinview$InputType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    return-void

    .line 325
    :cond_0
    const/4 v2, -0x1

    .line 326
    .local v2, "lastTagHavingValue":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 328
    move v2, v3

    .line 329
    iget-object v4, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    .end local v3    # "i":I
    :cond_2
    iget v3, p0, Lcom/goodiebag/pinview/Pinview;->mPinLength:I

    const/4 v4, 0x0

    if-lez v3, :cond_7

    .line 335
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_3

    .line 336
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    goto :goto_2

    .line 338
    :cond_3
    iget-object v5, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    sub-int/2addr v3, v1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    .line 339
    iget-object v3, p0, Lcom/goodiebag/pinview/Pinview;->inputType:Lcom/goodiebag/pinview/Pinview$InputType;

    sget-object v5, Lcom/goodiebag/pinview/Pinview$InputType;->NUMBER:Lcom/goodiebag/pinview/Pinview$InputType;

    if-eq v3, v5, :cond_4

    iget-boolean v3, p0, Lcom/goodiebag/pinview/Pinview;->mPassword:Z

    if-eqz v3, :cond_5

    .line 340
    :cond_4
    iput-boolean v1, p0, Lcom/goodiebag/pinview/Pinview;->finalNumberPin:Z

    .line 341
    :cond_5
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->mListener:Lcom/goodiebag/pinview/Pinview$PinViewEventListener;

    if-eqz v1, :cond_6

    .line 342
    invoke-interface {v1, p0, v4}, Lcom/goodiebag/pinview/Pinview$PinViewEventListener;->onDataEntered(Lcom/goodiebag/pinview/Pinview;Z)V

    .line 344
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/goodiebag/pinview/Pinview;->currentFocus:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 346
    :cond_7
    iput-boolean v4, p0, Lcom/goodiebag/pinview/Pinview;->fromSetValue:Z

    .line 347
    invoke-direct {p0}, Lcom/goodiebag/pinview/Pinview;->updateEnabledState()V

    .line 348
    return-void
.end method

.method public showCursor(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 663
    iput-boolean p1, p0, Lcom/goodiebag/pinview/Pinview;->mCursorVisible:Z

    .line 664
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/goodiebag/pinview/Pinview;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 668
    .local v1, "edt":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 669
    .end local v1    # "edt":Landroid/widget/EditText;
    goto :goto_0

    .line 670
    :cond_1
    return-void

    .line 665
    :cond_2
    :goto_1
    return-void
.end method
