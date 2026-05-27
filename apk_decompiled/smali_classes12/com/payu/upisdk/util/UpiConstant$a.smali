.class public final Lcom/payu/upisdk/util/UpiConstant$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/util/UpiConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 156
    sget-object v0, Lcom/payu/upisdk/util/UpiConstant;->PG_SET:Ljava/util/Set;

    const-string v1, "upi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/payu/upisdk/util/UpiConstant;->PG_SET:Ljava/util/Set;

    const-string v1, "TEZ"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/payu/upisdk/util/UpiConstant;->PG_SET:Ljava/util/Set;

    const-string v1, "SAMPAY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/payu/upisdk/util/UpiConstant;->PG_SET:Ljava/util/Set;

    const-string v1, "PPINTENT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/payu/upisdk/util/UpiConstant;->PG_SET:Ljava/util/Set;

    const-string v1, "INTENT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method
