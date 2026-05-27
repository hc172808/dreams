.class public interface abstract Lio/grpc/Compressor;
.super Ljava/lang/Object;
.source "Compressor.java"


# virtual methods
.method public abstract compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMessageEncoding()Ljava/lang/String;
.end method
