.class Lcom/hbb20/CountryCodeDialog;
.super Ljava/lang/Object;
.source "CountryCodeDialog.java"


# static fields
.field static context:Landroid/content/Context;

.field static dialog:Landroid/app/Dialog;

.field private static final sCursorDrawableField:Ljava/lang/reflect/Field;

.field private static final sCursorDrawableResourceField:Ljava/lang/reflect/Field;

.field private static final sEditorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "editorField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 43
    .local v1, "cursorDrawableField":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 44
    .local v2, "cursorDrawableResourceField":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 46
    .local v3, "exceptionThrown":Z
    :try_start_0
    const-class v4, Landroid/widget/TextView;

    const-string v5, "mCursorDrawableRes"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v2, v4

    .line 47
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    .line 50
    const-class v5, Landroid/widget/TextView;

    .local v5, "drawableFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 52
    .end local v5    # "drawableFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v5, Landroid/widget/TextView;

    const-string v6, "mEditor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v0, v5

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 56
    .restart local v5    # "drawableFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-string v6, "mCursorDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v1, v6

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v5    # "drawableFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    .line 61
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v3, :cond_1

    .line 62
    const/4 v4, 0x0

    sput-object v4, Lcom/hbb20/CountryCodeDialog;->sEditorField:Ljava/lang/reflect/Field;

    .line 63
    sput-object v4, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableField:Ljava/lang/reflect/Field;

    .line 64
    sput-object v4, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableResourceField:Ljava/lang/reflect/Field;

    goto :goto_2

    .line 66
    :cond_1
    sput-object v0, Lcom/hbb20/CountryCodeDialog;->sEditorField:Ljava/lang/reflect/Field;

    .line 67
    sput-object v1, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableField:Ljava/lang/reflect/Field;

    .line 68
    sput-object v2, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableResourceField:Ljava/lang/reflect/Field;

    .line 70
    .end local v0    # "editorField":Ljava/lang/reflect/Field;
    .end local v1    # "cursorDrawableField":Ljava/lang/reflect/Field;
    .end local v2    # "cursorDrawableResourceField":Ljava/lang/reflect/Field;
    .end local v3    # "exceptionThrown":Z
    :goto_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 32
    invoke-static {p0}, Lcom/hbb20/CountryCodeDialog;->hideKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method static clear()V
    .locals 1

    .line 294
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 297
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    .line 298
    sput-object v0, Lcom/hbb20/CountryCodeDialog;->context:Landroid/content/Context;

    .line 299
    return-void
.end method

.method private static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static hideKeyboard(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 265
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 266
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 267
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 269
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 271
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 272
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 274
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 276
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;)V
    .locals 1
    .param p0, "codePicker"    # Lcom/hbb20/CountryCodePicker;

    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hbb20/CountryCodeDialog;->openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V
    .locals 22
    .param p0, "codePicker"    # Lcom/hbb20/CountryCodePicker;
    .param p1, "countryNameCode"    # Ljava/lang/String;

    .line 78
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/hbb20/CountryCodeDialog;->context:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/hbb20/CountryCodeDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->refreshPreferredCountries()V

    .line 82
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->context:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/hbb20/CCPCountry;->getCustomMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;

    move-result-object v12

    .line 83
    .local v12, "masterCountries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 84
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/hbb20/R$layout;->layout_picker_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isSearchAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isDialogKeyboardAutoPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 95
    :goto_0
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->recycler_countryDialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    .local v14, "recyclerView_countryDialog":Landroidx/recyclerview/widget/RecyclerView;
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->textView_title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 97
    .local v15, "textViewTitle":Landroid/widget/TextView;
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->rl_query_holder:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 98
    .local v16, "rlQueryHolder":Landroid/widget/RelativeLayout;
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->img_clear_query:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 99
    .local v9, "imgClearQuery":Landroid/widget/ImageView;
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->editText_search:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 100
    .local v8, "editText_search":Landroid/widget/EditText;
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->textView_noresult:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 101
    .local v7, "textView_noResult":Landroid/widget/TextView;
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->rl_holder:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 102
    .local v6, "rlHolder":Landroid/widget/RelativeLayout;
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/R$id;->img_dismiss:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 107
    .local v5, "imgDismiss":Landroid/widget/ImageView;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v0

    const/16 v1, -0x63

    if-eq v0, v1, :cond_1

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_2
    :goto_1
    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 127
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundResId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundResId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 132
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isShowCloseIcon()Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_5

    .line 133
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    new-instance v0, Lcom/hbb20/CountryCodeDialog$1;

    invoke-direct {v0}, Lcom/hbb20/CountryCodeDialog$1;-><init>()V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 141
    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowTitle()Z

    move-result v0

    if-nez v0, :cond_6

    .line 146
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    .line 152
    .local v0, "textColor":I
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 153
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 154
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 157
    const/16 v1, 0x64

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 162
    .end local v0    # "textColor":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    invoke-static {v8, v0}, Lcom/hbb20/CountryCodeDialog;->setCursorColor(Landroid/widget/EditText;I)V

    .line 171
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getSearchHintText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getNoResultACK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isSearchAllowed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 177
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 179
    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    new-instance v0, Lcom/hbb20/CountryCodeAdapter;

    sget-object v2, Lcom/hbb20/CountryCodeDialog;->context:Landroid/content/Context;

    sget-object v18, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    move-object v1, v0

    move-object v3, v12

    const/16 v13, 0x8

    move-object/from16 v4, p0

    move-object/from16 v17, v5

    .end local v5    # "imgDismiss":Landroid/widget/ImageView;
    .local v17, "imgDismiss":Landroid/widget/ImageView;
    move-object/from16 v5, v16

    move-object/from16 v19, v6

    .end local v6    # "rlHolder":Landroid/widget/RelativeLayout;
    .local v19, "rlHolder":Landroid/widget/RelativeLayout;
    move-object v6, v8

    move-object/from16 v20, v7

    .end local v7    # "textView_noResult":Landroid/widget/TextView;
    .local v20, "textView_noResult":Landroid/widget/TextView;
    move-object/from16 v21, v8

    .end local v8    # "editText_search":Landroid/widget/EditText;
    .local v21, "editText_search":Landroid/widget/EditText;
    move-object/from16 v8, v18

    move-object/from16 v18, v9

    .end local v9    # "imgClearQuery":Landroid/widget/ImageView;
    .local v18, "imgClearQuery":Landroid/widget/ImageView;
    invoke-direct/range {v1 .. v9}, Lcom/hbb20/CountryCodeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V

    .line 183
    .local v1, "cca":Lcom/hbb20/CountryCodeAdapter;
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    sget-object v2, Lcom/hbb20/CountryCodeDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 184
    invoke-virtual {v14, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 187
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/R$id;->fastscroll:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 188
    .local v2, "fastScroller":Lcom/futuremind/recyclerviewfastscroll/FastScroller;
    invoke-virtual {v2, v14}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->isShowFastScroller()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleColor(I)V

    .line 194
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setHandleColor(I)V

    .line 198
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleTextAppearance(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 201
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 207
    :cond_c
    invoke-virtual {v2, v13}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setVisibility(I)V

    .line 210
    :cond_d
    :goto_5
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/hbb20/CountryCodeDialog$2;

    invoke-direct {v3, v10}, Lcom/hbb20/CountryCodeDialog$2;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 220
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/hbb20/CountryCodeDialog$3;

    invoke-direct {v3, v10}, Lcom/hbb20/CountryCodeDialog$3;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 231
    if-eqz v11, :cond_12

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "isPreferredCountry":Z
    iget-object v3, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    if-eqz v3, :cond_f

    .line 234
    iget-object v3, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hbb20/CCPCountry;

    .line 235
    .local v4, "preferredCountry":Lcom/hbb20/CCPCountry;
    iget-object v5, v4, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 236
    const/4 v0, 0x1

    .line 237
    goto :goto_7

    .line 239
    .end local v4    # "preferredCountry":Lcom/hbb20/CCPCountry;
    :cond_e
    goto :goto_6

    .line 244
    :cond_f
    :goto_7
    if-nez v0, :cond_12

    .line 245
    const/4 v3, 0x0

    .line 246
    .local v3, "preferredCountriesOffset":I
    iget-object v4, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    if-eqz v4, :cond_10

    iget-object v4, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 247
    iget-object v4, v10, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 249
    :cond_10
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    .line 250
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hbb20/CCPCountry;

    iget-object v5, v5, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 251
    add-int v5, v4, v3

    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 252
    goto :goto_9

    .line 249
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 258
    .end local v0    # "isPreferredCountry":Z
    .end local v3    # "preferredCountriesOffset":I
    .end local v4    # "i":I
    :cond_12
    :goto_9
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    move-result-object v0

    sget-object v3, Lcom/hbb20/CountryCodeDialog;->dialog:Landroid/app/Dialog;

    invoke-interface {v0, v3}, Lcom/hbb20/CountryCodePicker$DialogEventsListener;->onCcpDialogOpen(Landroid/app/Dialog;)V

    .line 262
    :cond_13
    return-void
.end method

.method static setCursorColor(Landroid/widget/EditText;I)V
    .locals 5
    .param p0, "editText"    # Landroid/widget/EditText;
    .param p1, "color"    # I

    .line 279
    sget-object v0, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 280
    return-void

    .line 283
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/hbb20/CountryCodeDialog;->sCursorDrawableResourceField:Ljava/lang/reflect/Field;

    .line 284
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 283
    invoke-static {v1, v2}, Lcom/hbb20/CountryCodeDialog;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 285
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 286
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 287
    move-object v2, p0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/hbb20/CountryCodeDialog;->sEditorField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 286
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 291
    :goto_1
    return-void
.end method
