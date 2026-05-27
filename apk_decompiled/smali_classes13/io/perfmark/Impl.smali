.class public Lio/perfmark/Impl;
.super Ljava/lang/Object;
.source "Impl.java"


# static fields
.field static final NO_LINK:Lio/perfmark/Link;

.field private static final NO_LINK_ID:J = -0x8000000000000000L

.field static final NO_TAG:Lio/perfmark/Tag;

.field static final NO_TAG_ID:J = -0x8000000000000000L

.field static final NO_TAG_NAME:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lio/perfmark/Tag;

    const-string v1, ""

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3}, Lio/perfmark/Tag;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    .line 31
    new-instance v0, Lio/perfmark/Link;

    invoke-direct {v0, v2, v3}, Lio/perfmark/Link;-><init>(J)V

    sput-object v0, Lio/perfmark/Impl;->NO_LINK:Lio/perfmark/Link;

    return-void
.end method

.method protected constructor <init>(Lio/perfmark/Tag;)V
    .locals 2
    .param p1, "key"    # Lio/perfmark/Tag;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    if-ne p1, v0, :cond_0

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "nope"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected static packLink(J)Lio/perfmark/Link;
    .locals 1
    .param p0, "linkId"    # J

    .line 84
    new-instance v0, Lio/perfmark/Link;

    invoke-direct {v0, p0, p1}, Lio/perfmark/Link;-><init>(J)V

    return-object v0
.end method

.method protected static packTag(Ljava/lang/String;J)Lio/perfmark/Tag;
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "tagId"    # J

    .line 80
    new-instance v0, Lio/perfmark/Tag;

    invoke-direct {v0, p0, p1, p2}, Lio/perfmark/Tag;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected static unpackLinkId(Lio/perfmark/Link;)J
    .locals 2
    .param p0, "link"    # Lio/perfmark/Link;

    .line 76
    iget-wide v0, p0, Lio/perfmark/Link;->linkId:J

    return-wide v0
.end method

.method protected static unpackTagId(Lio/perfmark/Tag;)J
    .locals 2
    .param p0, "tag"    # Lio/perfmark/Tag;

    .line 72
    iget-wide v0, p0, Lio/perfmark/Tag;->tagId:J

    return-wide v0
.end method

.method protected static unpackTagName(Lio/perfmark/Tag;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Lio/perfmark/Tag;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lio/perfmark/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected attachTag(Lio/perfmark/Tag;)V
    .locals 0
    .param p1, "tag"    # Lio/perfmark/Tag;

    .line 60
    return-void
.end method

.method protected createTag(Ljava/lang/String;J)Lio/perfmark/Tag;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "tagId"    # J

    .line 63
    sget-object v0, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    return-object v0
.end method

.method protected event(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected event(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "tag"    # Lio/perfmark/Tag;

    .line 46
    return-void
.end method

.method protected linkIn(Lio/perfmark/Link;)V
    .locals 0
    .param p1, "link"    # Lio/perfmark/Link;

    .line 58
    return-void
.end method

.method protected linkOut()Lio/perfmark/Link;
    .locals 1

    .line 55
    sget-object v0, Lio/perfmark/Impl;->NO_LINK:Lio/perfmark/Link;

    return-object v0
.end method

.method protected setEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 40
    return-void
.end method

.method protected startTask(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskName"    # Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected startTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 0
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "tag"    # Lio/perfmark/Tag;

    .line 42
    return-void
.end method

.method protected stopTask(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskName"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 0
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "tag"    # Lio/perfmark/Tag;

    .line 50
    return-void
.end method
