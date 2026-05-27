.class public Lcom/payumoney/sdkui/ui/utils/ToastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;II)V
    .locals 2

    .line 22
    if-nez p0, :cond_0

    .line 23
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .line 37
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;

    invoke-direct {v1, v0, p1, p2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public static showLong(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I

    .line 60
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;II)V

    .line 61
    return-void
.end method

.method public static varargs showLong(Landroid/app/Activity;I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 150
    if-nez p0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p0, v0, p2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public static showLong(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "showSnackbar"    # Z

    .line 81
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    .line 85
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_2
    :goto_1
    return-void
.end method

.method public static varargs showLong(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 124
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method public static showShort(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;II)V

    .line 71
    return-void
.end method

.method public static varargs showShort(Landroid/app/Activity;I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 167
    if-nez p0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {p0, v0, p2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showShort(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public static showShort(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "showSnackbar"    # Z

    .line 102
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    .line 106
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_2
    :goto_1
    return-void
.end method

.method public static varargs showShort(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 137
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 139
    return-void
.end method
