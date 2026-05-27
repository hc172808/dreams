.class public Lcom/google/firebase/crashlytics/CustomKeysAndValues;
.super Ljava/lang/Object;
.source "CustomKeysAndValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;
    }
.end annotation


# instance fields
.field final keysAndValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;->access$000(Lcom/google/firebase/crashlytics/CustomKeysAndValues$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CustomKeysAndValues;->keysAndValues:Ljava/util/Map;

    .line 80
    return-void
.end method
