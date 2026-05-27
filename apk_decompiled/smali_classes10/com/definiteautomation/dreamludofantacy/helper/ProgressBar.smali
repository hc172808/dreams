.class public Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Lcom/definiteautomation/dreamludofantacy/listner/ProgressListener;


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCancelable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "isCancelable"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->dialog:Landroid/app/ProgressDialog;

    .line 14
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method


# virtual methods
.method public hideProgressDialog()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-void
.end method

.method public showProgressDialog()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_1

    .line 25
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 29
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-void
.end method
