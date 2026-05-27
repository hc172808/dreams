.class final Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/utils/ToastUtils;->a(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;->b:Ljava/lang/String;

    iput p3, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;->b:Ljava/lang/String;

    iget v2, p0, Lcom/payumoney/sdkui/ui/utils/ToastUtils$2;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method
