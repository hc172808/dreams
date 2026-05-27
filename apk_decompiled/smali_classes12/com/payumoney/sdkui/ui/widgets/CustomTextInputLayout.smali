.class public Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;
.super Lcom/google/android/material/textfield/TextInputLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    const-class v0, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;->a:Ljava/lang/String;

    .line 20
    nop

    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "mIndicatorArea"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v3

    sget-object v4, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    invoke-virtual {v3, v4, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :goto_0
    sput-object v1, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;->b:Ljava/lang/reflect/Field;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private a()V
    .locals 5

    .line 61
    sget-object v0, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 67
    return-void

    .line 69
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 71
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_2
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    sget-object v3, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void
.end method


# virtual methods
.method public setCounterEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;->a()V

    .line 58
    :cond_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 46
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/widgets/CustomTextInputLayout;->a()V

    .line 50
    :cond_0
    return-void
.end method
