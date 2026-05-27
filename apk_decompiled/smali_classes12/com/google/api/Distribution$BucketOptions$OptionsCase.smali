.class public final enum Lcom/google/api/Distribution$BucketOptions$OptionsCase;
.super Ljava/lang/Enum;
.source "Distribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionsCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/Distribution$BucketOptions$OptionsCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/Distribution$BucketOptions$OptionsCase;

.field public static final enum EXPLICIT_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

.field public static final enum EXPONENTIAL_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

.field public static final enum LINEAR_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

.field public static final enum OPTIONS_NOT_SET:Lcom/google/api/Distribution$BucketOptions$OptionsCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1866
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    const-string v1, "LINEAR_BUCKETS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/Distribution$BucketOptions$OptionsCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->LINEAR_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    .line 1867
    new-instance v1, Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    const-string v4, "EXPONENTIAL_BUCKETS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/api/Distribution$BucketOptions$OptionsCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->EXPONENTIAL_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    .line 1868
    new-instance v4, Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    const-string v6, "EXPLICIT_BUCKETS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/api/Distribution$BucketOptions$OptionsCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->EXPLICIT_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    .line 1869
    new-instance v6, Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    const-string v8, "OPTIONS_NOT_SET"

    invoke-direct {v6, v8, v7, v2}, Lcom/google/api/Distribution$BucketOptions$OptionsCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->OPTIONS_NOT_SET:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    .line 1865
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->$VALUES:[Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1871
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1872
    iput p3, p0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->value:I

    .line 1873
    return-void
.end method

.method public static forNumber(I)Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1
    .param p0, "value"    # I

    .line 1883
    packed-switch p0, :pswitch_data_0

    .line 1888
    const/4 v0, 0x0

    return-object v0

    .line 1886
    :pswitch_0
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->EXPLICIT_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    return-object v0

    .line 1885
    :pswitch_1
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->EXPONENTIAL_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    return-object v0

    .line 1884
    :pswitch_2
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->LINEAR_BUCKETS:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    return-object v0

    .line 1887
    :pswitch_3
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->OPTIONS_NOT_SET:Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1879
    invoke-static {p0}, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->forNumber(I)Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1865
    const-class v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    return-object v0
.end method

.method public static values()[Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1

    .line 1865
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->$VALUES:[Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    invoke-virtual {v0}, [Lcom/google/api/Distribution$BucketOptions$OptionsCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1892
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions$OptionsCase;->value:I

    return v0
.end method
