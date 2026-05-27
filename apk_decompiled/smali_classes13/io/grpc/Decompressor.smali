.class public interface abstract Lio/grpc/Decompressor;
.super Ljava/lang/Object;
.source "Decompressor.java"


# virtual methods
.method public abstract decompress(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMessageEncoding()Ljava/lang/String;
.end method
