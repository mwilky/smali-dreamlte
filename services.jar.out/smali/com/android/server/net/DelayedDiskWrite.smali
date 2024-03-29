.class public Lcom/android/server/net/DelayedDiskWrite;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/DelayedDiskWrite$Writer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDiskWriteHandler:Landroid/os/Handler;

.field private mDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private mWriteSequence:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    const-string v0, "DelayedDiskWrite"

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite;->doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method

.method private doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_0
    :goto_0
    invoke-interface {p2, v1}, Lcom/android/server/net/DelayedDiskWrite$Writer;->onWriteCalled(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :cond_1
    :goto_1
    monitor-enter p0

    :try_start_2
    iget v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    :cond_2
    monitor-exit p0

    :goto_2
    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_3
    nop

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    :cond_3
    :goto_4
    monitor-enter p0

    :try_start_5
    iget v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    :cond_4
    monitor-exit p0

    goto :goto_2

    :goto_5
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :goto_6
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v3

    :cond_5
    :goto_7
    monitor-enter p0

    :try_start_7
    iget v3, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    :cond_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method

.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DelayedDiskWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/DelayedDiskWrite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite$1;-><init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
