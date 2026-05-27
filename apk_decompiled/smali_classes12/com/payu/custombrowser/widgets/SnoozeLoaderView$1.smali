.class Lcom/payu/custombrowser/widgets/SnoozeLoaderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$1;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$1;->a:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->invalidate()V

    .line 165
    return-void
.end method
