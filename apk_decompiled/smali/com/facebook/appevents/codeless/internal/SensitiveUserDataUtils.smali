.class public Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;
.super Ljava/lang/Object;
.source "SensitiveUserDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCreditCard(Landroid/widget/TextView;)Z
    .locals 11

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 83
    .local p0, "view":Landroid/widget/TextView;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "ccNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 85
    .local v3, "length":I
    const/16 v4, 0xc

    if-lt v3, v4, :cond_8

    const/16 v4, 0x13

    if-le v3, v4, :cond_1

    goto :goto_3

    .line 88
    :cond_1
    const/4 v4, 0x0

    .line 89
    .local v4, "sum":I
    const/4 v5, 0x0

    .line 90
    .local v5, "alternate":Z
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ltz v6, :cond_6

    .line 91
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 92
    .local v8, "digit":C
    const/16 v9, 0x30

    if-lt v8, v9, :cond_5

    const/16 v9, 0x39

    if-le v8, v9, :cond_2

    goto :goto_2

    .line 95
    :cond_2
    add-int/lit8 v9, v8, -0x30

    .line 96
    .local v9, "n":I
    if-eqz v5, :cond_3

    .line 97
    mul-int/lit8 v9, v9, 0x2

    .line 98
    const/16 v10, 0x9

    if-le v9, v10, :cond_3

    .line 99
    rem-int/lit8 v10, v9, 0xa

    add-int/lit8 v9, v10, 0x1

    .line 102
    :cond_3
    add-int/2addr v4, v9

    .line 103
    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    move v5, v7

    .line 90
    .end local v8    # "digit":C
    .end local v9    # "n":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 93
    .restart local v8    # "digit":C
    :cond_5
    :goto_2
    return v2

    .line 105
    .end local v6    # "i":I
    .end local v8    # "digit":C
    :cond_6
    rem-int/lit8 v0, v4, 0xa
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    .line 86
    .end local v4    # "sum":I
    .end local v5    # "alternate":Z
    :cond_8
    :goto_3
    return v2

    .line 105
    .end local v1    # "ccNumber":Ljava/lang/String;
    .end local v3    # "length":I
    .end local p0    # "view":Landroid/widget/TextView;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static isEmail(Landroid/widget/TextView;)Z
    .locals 5

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 56
    .local p0, "view":Landroid/widget/TextView;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 57
    .local v1, "inputType":I
    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    sget-object v4, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 62
    :cond_3
    :goto_0
    return v2

    .line 64
    .end local v1    # "inputType":I
    .end local v3    # "text":Ljava/lang/String;
    .end local p0    # "view":Landroid/widget/TextView;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static isPassword(Landroid/widget/TextView;)Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 47
    .local p0, "view":Landroid/widget/TextView;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 48
    .local v1, "inputType":I
    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    .line 52
    .local v3, "method":Landroid/text/method/TransformationMethod;
    instance-of v0, v3, Landroid/text/method/PasswordTransformationMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local v1    # "inputType":I
    .end local v3    # "method":Landroid/text/method/TransformationMethod;
    .end local p0    # "view":Landroid/widget/TextView;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static isPersonName(Landroid/widget/TextView;)Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 68
    .local p0, "view":Landroid/widget/TextView;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v0, "inputType":I
    const/16 v1, 0x60

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .end local v0    # "inputType":I
    .end local p0    # "view":Landroid/widget/TextView;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static isPhoneNumber(Landroid/widget/TextView;)Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 78
    .local p0, "view":Landroid/widget/TextView;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v0, "inputType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .end local v0    # "inputType":I
    .end local p0    # "view":Landroid/widget/TextView;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static isPostalAddress(Landroid/widget/TextView;)Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 73
    .local p0, "view":Landroid/widget/TextView;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v0, "inputType":I
    const/16 v1, 0x70

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .end local v0    # "inputType":I
    .end local p0    # "view":Landroid/widget/TextView;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static isSensitiveUserData(Landroid/view/View;)Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 34
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 35
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 36
    .local v1, "textView":Landroid/widget/TextView;
    invoke-static {v1}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPassword(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    invoke-static {v1}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isCreditCard(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-static {v1}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPersonName(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    invoke-static {v1}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPostalAddress(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    invoke-static {v1}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPhoneNumber(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 41
    invoke-static {v1}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isEmail(Landroid/widget/TextView;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 36
    :cond_2
    return v2

    .line 43
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_3
    return v2

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method
