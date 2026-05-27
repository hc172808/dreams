.class Lcom/payu/custombrowser/Bank$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->enableCatchAllJS(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Z)V
    .locals 0

    .line 1506
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$10;->b:Lcom/payu/custombrowser/Bank;

    iput-boolean p2, p0, Lcom/payu/custombrowser/Bank$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1509
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$10;->b:Lcom/payu/custombrowser/Bank;

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank$10;->a:Z

    iput-boolean v1, v0, Lcom/payu/custombrowser/Bank;->catchAllJSEnabled:Z

    .line 1510
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$10;->b:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->fillOTPOnBankPage(Z)V

    .line 1511
    return-void
.end method
