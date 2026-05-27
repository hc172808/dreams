.class public Lcom/payumoney/core/PayUmoneyConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/payumoney/core/PayUmoneyConfig;


# instance fields
.field private accentColor:Ljava/lang/String;

.field private colorPrimary:Ljava/lang/String;

.field private colorPrimaryDark:Ljava/lang/String;

.field private disableExitConfirmation:Z

.field private doneButtonText:Ljava/lang/String;

.field private enableReviewOrder:Z

.field private payUmoneyActivityTitle:Ljava/lang/String;

.field private reviewOrderBundle:Lcom/payu/custombrowser/bean/ReviewOrderBundle;

.field private reviewOrderImpl:Lcom/payumoney/core/listener/ReviewOrderImpl;

.field private reviewOrderMenuText:Ljava/lang/String;

.field private reviewOrderToolbarBgColor:I

.field private reviewOrderToolbarTextColor:I

.field private textColorPrimary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/payumoney/core/PayUmoneyConfig;->instance:Lcom/payumoney/core/PayUmoneyConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->colorPrimaryDark:Ljava/lang/String;

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->colorPrimaryDark:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->colorPrimary:Ljava/lang/String;

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->colorPrimary:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->textColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->textColorPrimary:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->accentColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->accentColor:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->payUmoneyActivityTitle:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->disableExitConfirmation:Z

    .line 50
    iput-boolean v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->enableReviewOrder:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderToolbarBgColor:I

    .line 55
    iput v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderToolbarTextColor:I

    .line 73
    return-void
.end method

.method public static getInstance()Lcom/payumoney/core/PayUmoneyConfig;
    .locals 2

    .line 84
    sget-object v0, Lcom/payumoney/core/PayUmoneyConfig;->instance:Lcom/payumoney/core/PayUmoneyConfig;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Lcom/payumoney/core/PayUmoneyConfig;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/payumoney/core/PayUmoneyConfig;->instance:Lcom/payumoney/core/PayUmoneyConfig;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/payumoney/core/PayUmoneyConfig;

    invoke-direct {v1}, Lcom/payumoney/core/PayUmoneyConfig;-><init>()V

    sput-object v1, Lcom/payumoney/core/PayUmoneyConfig;->instance:Lcom/payumoney/core/PayUmoneyConfig;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 92
    :cond_1
    :goto_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConfig;->instance:Lcom/payumoney/core/PayUmoneyConfig;

    return-object v0
.end method


# virtual methods
.method public disableExitConfirmation(Z)V
    .locals 0
    .param p1, "disableExitConfirmation"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->disableExitConfirmation:Z

    .line 70
    return-void
.end method

.method public getAccentColor()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->accentColor:Ljava/lang/String;

    return-object v0
.end method

.method public getColorPrimary()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->colorPrimary:Ljava/lang/String;

    return-object v0
.end method

.method public getColorPrimaryDark()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->colorPrimaryDark:Ljava/lang/String;

    return-object v0
.end method

.method public getDoneButtonText()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->doneButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getPayUmoneyActivityTitle()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->payUmoneyActivityTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewOrderBundle()Lcom/payu/custombrowser/bean/ReviewOrderBundle;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderBundle:Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    return-object v0
.end method

.method public getReviewOrderImpl()Lcom/payumoney/core/listener/ReviewOrderImpl;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderImpl:Lcom/payumoney/core/listener/ReviewOrderImpl;

    return-object v0
.end method

.method public getReviewOrderMenuText()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderMenuText:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewOrderToolbarBgColor()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderToolbarBgColor:I

    return v0
.end method

.method public getReviewOrderToolbarTextColor()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderToolbarTextColor:I

    return v0
.end method

.method public getTextColorPrimary()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->textColorPrimary:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableReviewOrder()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->enableReviewOrder:Z

    return v0
.end method

.method public isExitConfirmationDisabled()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/payumoney/core/PayUmoneyConfig;->disableExitConfirmation:Z

    return v0
.end method

.method public declared-synchronized setAccentColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "accentColor"    # Ljava/lang/String;

    monitor-enter p0

    .line 125
    :try_start_0
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->accentColor:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    .end local p0    # "this":Lcom/payumoney/core/PayUmoneyConfig;
    .end local p1    # "accentColor":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setColorPrimary(Ljava/lang/String;)V
    .locals 0
    .param p1, "colorPrimary"    # Ljava/lang/String;

    monitor-enter p0

    .line 109
    :try_start_0
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->colorPrimary:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/payumoney/core/PayUmoneyConfig;
    .end local p1    # "colorPrimary":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setColorPrimaryDark(Ljava/lang/String;)V
    .locals 0
    .param p1, "colorPrimaryDark"    # Ljava/lang/String;

    monitor-enter p0

    .line 101
    :try_start_0
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->colorPrimaryDark:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lcom/payumoney/core/PayUmoneyConfig;
    .end local p1    # "colorPrimaryDark":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDoneButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "doneButtonText"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->doneButtonText:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setEnableReviewOrder(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 137
    iput-boolean p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->enableReviewOrder:Z

    .line 138
    return-void
.end method

.method public setPayUmoneyActivityTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "payUmoneyActivityTitle"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->payUmoneyActivityTitle:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setReviewOrderBundle(Lcom/payu/custombrowser/bean/ReviewOrderBundle;)V
    .locals 0
    .param p1, "reviewOrderBundle"    # Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    .line 149
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderBundle:Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    .line 150
    return-void
.end method

.method public setReviewOrderImpl(Lcom/payumoney/core/listener/ReviewOrderImpl;)V
    .locals 0
    .param p1, "reviewOrderImpl"    # Lcom/payumoney/core/listener/ReviewOrderImpl;

    .line 157
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderImpl:Lcom/payumoney/core/listener/ReviewOrderImpl;

    .line 158
    return-void
.end method

.method public setReviewOrderMenuText(Ljava/lang/String;)V
    .locals 0
    .param p1, "reviewOrderMenuText"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderMenuText:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setReviewOrderToolbarBgColor(I)V
    .locals 0
    .param p1, "reviewOrderToolbarBgColor"    # I

    .line 173
    iput p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderToolbarBgColor:I

    .line 174
    return-void
.end method

.method public setReviewOrderToolbarTextColor(I)V
    .locals 0
    .param p1, "reviewOrderToolbarTextColor"    # I

    .line 181
    iput p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->reviewOrderToolbarTextColor:I

    .line 182
    return-void
.end method

.method public declared-synchronized setTextColorPrimary(Ljava/lang/String;)V
    .locals 0
    .param p1, "textColorPrimary"    # Ljava/lang/String;

    monitor-enter p0

    .line 117
    :try_start_0
    iput-object p1, p0, Lcom/payumoney/core/PayUmoneyConfig;->textColorPrimary:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 116
    .end local p0    # "this":Lcom/payumoney/core/PayUmoneyConfig;
    .end local p1    # "textColorPrimary":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
