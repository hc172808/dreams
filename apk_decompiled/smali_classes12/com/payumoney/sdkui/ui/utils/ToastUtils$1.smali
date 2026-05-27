.class final Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;->a:Landroid/content/Context;

    iput p2, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;->b:I

    iput p3, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;->a:Landroid/content/Context;

    iget v1, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;->b:I

    iget v2, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$1;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method
