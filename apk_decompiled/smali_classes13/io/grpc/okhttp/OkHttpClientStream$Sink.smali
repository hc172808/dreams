.class Lio/grpc/okhttp/OkHttpClientStream$Sink;
.super Ljava/lang/Object;
.source "OkHttpClientStream.java"

# interfaces
.implements Lio/grpc/internal/AbstractClientStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sink"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientStream;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 145
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 4
    .param p1, "reason"    # Lio/grpc/Status;

    .line 202
    const-string v0, "OkHttpClientStream$Sink.cancel"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 204
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$900(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 206
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    const-string v0, "OkHttpClientStream$Sink.cancel"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 209
    nop

    .line 210
    return-void

    .line 206
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p1    # "reason":Lio/grpc/Status;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    .restart local p1    # "reason":Lio/grpc/Status;
    :catchall_1
    move-exception v0

    const-string v1, "OkHttpClientStream$Sink.cancel"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0
.end method

.method public request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 190
    const-string v0, "OkHttpClientStream$Sink.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->requestMessagesFromDeframer(I)V

    .line 194
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const-string v0, "OkHttpClientStream$Sink.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 197
    nop

    .line 198
    return-void

    .line 194
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p1    # "numMessages":I
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    .restart local p1    # "numMessages":I
    :catchall_1
    move-exception v0

    const-string v1, "OkHttpClientStream$Sink.request"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0
.end method

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 3
    .param p1, "frame"    # Lio/grpc/internal/WritableBuffer;
    .param p2, "endOfStream"    # Z
    .param p3, "flush"    # Z
    .param p4, "numMessages"    # I

    .line 166
    const-string v0, "OkHttpClientStream$Sink.writeFrame"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientStream;->access$500()Lokio/Buffer;

    move-result-object v0

    .local v0, "buffer":Lokio/Buffer;
    goto :goto_0

    .line 171
    .end local v0    # "buffer":Lokio/Buffer;
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/okhttp/OkHttpWritableBuffer;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer()Lokio/Buffer;

    move-result-object v0

    .line 172
    .restart local v0    # "buffer":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v2, v1

    .line 173
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 174
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1, v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$600(Lio/grpc/okhttp/OkHttpClientStream;I)V

    .line 179
    .end local v2    # "size":I
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v2

    invoke-static {v2, v0, p2, p3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$700(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lokio/Buffer;ZZ)V

    .line 181
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$800(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;

    move-result-object v2

    invoke-virtual {v2, p4}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    const-string v1, "OkHttpClientStream$Sink.writeFrame"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 185
    nop

    .line 186
    return-void

    .line 182
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "buffer":Lokio/Buffer;
    .end local p1    # "frame":Lio/grpc/internal/WritableBuffer;
    .end local p2    # "endOfStream":Z
    .end local p3    # "flush":Z
    .end local p4    # "numMessages":I
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    .restart local v0    # "buffer":Lokio/Buffer;
    .restart local p1    # "frame":Lio/grpc/internal/WritableBuffer;
    .restart local p2    # "endOfStream":Z
    .restart local p3    # "flush":Z
    .restart local p4    # "numMessages":I
    :catchall_1
    move-exception v1

    const-string v2, "OkHttpClientStream$Sink.writeFrame"

    invoke-static {v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v1
.end method

.method public writeHeaders(Lio/grpc/Metadata;[B)V
    .locals 3
    .param p1, "metadata"    # Lio/grpc/Metadata;
    .param p2, "payload"    # [B

    .line 148
    const-string v0, "OkHttpClientStream$Sink.writeHeaders"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "defaultPath":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 151
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$102(Lio/grpc/okhttp/OkHttpClientStream;Z)Z

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$400(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Metadata;Ljava/lang/String;)V

    .line 157
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    const-string v1, "OkHttpClientStream$Sink.writeHeaders"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 160
    nop

    .line 161
    return-void

    .line 157
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "defaultPath":Ljava/lang/String;
    .end local p1    # "metadata":Lio/grpc/Metadata;
    .end local p2    # "payload":[B
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .restart local v0    # "defaultPath":Ljava/lang/String;
    .restart local p1    # "metadata":Lio/grpc/Metadata;
    .restart local p2    # "payload":[B
    :catchall_1
    move-exception v1

    const-string v2, "OkHttpClientStream$Sink.writeHeaders"

    invoke-static {v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v1
.end method
