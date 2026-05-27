.class public abstract Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
.super Ljava/lang/Object;
.source "BindingWrapper.java"


# instance fields
.field final config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

.field final inflater:Landroid/view/LayoutInflater;

.field protected final message:Lcom/google/firebase/inappmessaging/model/InAppMessage;


# direct methods
.method protected constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 0
    .param p1, "config"    # Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "message"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->inflater:Landroid/view/LayoutInflater;

    .line 51
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->message:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 52
    return-void
.end method

.method public static setButtonBgColorFromHex(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 3
    .param p0, "button"    # Landroid/widget/Button;
    .param p1, "hexColor"    # Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    .local v1, "compatDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 96
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "compatDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing background color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 101
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public static setupViewButtonFromModel(Landroid/widget/Button;Lcom/google/firebase/inappmessaging/model/Button;)V
    .locals 2
    .param p0, "viewButton"    # Landroid/widget/Button;
    .param p1, "modelButton"    # Lcom/google/firebase/inappmessaging/model/Button;

    .line 106
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Button;->getText()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->getHexColor()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "buttonTextHexColor":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Button;->getButtonHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->setButtonBgColorFromHex(Landroid/widget/Button;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Button;->getText()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public canSwipeToDismiss()Z
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getConfig()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    return-object v0
.end method

.method public abstract getDialogView()Landroid/view/View;
.end method

.method public getDismissListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getImageView()Landroid/widget/ImageView;
.end method

.method public abstract getRootView()Landroid/view/ViewGroup;
.end method

.method public abstract inflate(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation
.end method

.method protected setButtonActionListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "actionListener"    # Landroid/view/View$OnClickListener;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected setViewBgColorFromHex(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hexColor"    # Ljava/lang/String;

    .line 82
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing background color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 89
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 82
    :cond_1
    :goto_1
    return-void
.end method
