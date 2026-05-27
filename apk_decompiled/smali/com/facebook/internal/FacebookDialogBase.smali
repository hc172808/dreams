.class public abstract Lcom/facebook/internal/FacebookDialogBase;
.super Ljava/lang/Object;
.source "FacebookDialogBase.java"

# interfaces
.implements Lcom/facebook/FacebookDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookDialog<",
        "TCONTENT;TRESU",
        "LT;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BASE_AUTOMATIC_MODE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "FacebookDialog"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

.field private modeHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end field

.field private requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 51
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    .line 55
    iput p2, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 56
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/internal/FragmentWrapper;I)V
    .locals 2
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p2, "requestCode"    # I

    .line 58
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "fragmentWrapper"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 62
    iput p2, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 64
    invoke-virtual {p1}, Lcom/facebook/internal/FragmentWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a fragment that is not attached to an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cachedModeHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getOrderedModeHandlers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    return-object v0
.end method

.method private createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 6
    .param p2, "mode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/internal/AppCall;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    .local v0, "anyModeAllowed":Z
    :goto_0
    const/4 v2, 0x0

    .line 201
    .local v2, "appCall":Lcom/facebook/internal/AppCall;
    invoke-direct {p0}, Lcom/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 202
    .local v4, "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v4, p1, v1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    goto :goto_1

    .line 210
    :cond_2
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 214
    goto :goto_2

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Lcom/facebook/FacebookException;
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v2

    .line 213
    invoke-static {v2, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    .line 215
    .end local v1    # "e":Lcom/facebook/FacebookException;
    nop

    .line 218
    .end local v4    # "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForCannotShowError(Lcom/facebook/internal/AppCall;)V

    .line 223
    :cond_4
    return-object v2
.end method


# virtual methods
.method public canShow(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;->canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p2, "mode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, "anyModeAllowed":Z
    :goto_0
    invoke-direct {p0}, Lcom/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 128
    .local v4, "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 129
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v4, p1, v2}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    return v1

    .line 136
    .end local v4    # "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    :cond_2
    goto :goto_1

    .line 138
    :cond_3
    return v2
.end method

.method protected abstract createBaseAppCall()Lcom/facebook/internal/AppCall;
.end method

.method protected getActivityContext()Landroid/app/Activity;
    .locals 1

    .line 166
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 167
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getOrderedModeHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end method

.method public getRequestCode()I
    .locals 1

    .line 115
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    iget v0, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    return v0
.end method

.method public final registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<TRESULT;>;"
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/internal/FacebookDialogBase;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V

    .line 78
    return-void

    .line 74
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .locals 0
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;I)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<TRESULT;>;"
    invoke-virtual {p0, p3}, Lcom/facebook/internal/FacebookDialogBase;->setRequestCode(I)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 87
    return-void
.end method

.method protected abstract registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method protected setRequestCode(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .line 100
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iput p1, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 107
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method protected showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p2, "mode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 149
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v0, v1}, Lcom/facebook/internal/DialogPresenter;->present(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/FragmentWrapper;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/facebook/internal/DialogPresenter;->present(Lcom/facebook/internal/AppCall;Landroid/app/Activity;)V

    goto :goto_0

    .line 157
    :cond_1
    const-string v1, "No code path should ever result in a null appCall"

    .line 158
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "FacebookDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 163
    .end local v1    # "errorMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    .restart local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 178
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    const/4 v0, 0x0

    .line 179
    .local v0, "error":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 187
    :cond_2
    const-string v0, "Failed to find Activity or Fragment to startActivityForResult "

    goto :goto_0

    .line 190
    :cond_3
    const-string v0, "Failed to find Activity or Fragment to startActivityForResult "

    .line 192
    :goto_0
    if-eqz v0, :cond_4

    .line 193
    sget-object v1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_4
    return-void
.end method
