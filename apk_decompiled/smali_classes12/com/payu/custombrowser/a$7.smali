.class Lcom/payu/custombrowser/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/a;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/a;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/payu/custombrowser/a$7;->a:Lcom/payu/custombrowser/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/payu/custombrowser/a$7;->a:Lcom/payu/custombrowser/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payu/custombrowser/a;->a(Lcom/payu/custombrowser/a;I)I

    .line 1142
    return-void
.end method
