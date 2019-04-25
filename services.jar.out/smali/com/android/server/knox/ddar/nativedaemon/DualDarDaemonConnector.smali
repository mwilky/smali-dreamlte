.class public final Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field public static final CMD_BUF_SIZE_MAX:I = 0x320

.field private static final DEFAULT_TIMEOUT_MS:I = 0xea60

.field private static final RESPONSE_QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DualDarDaemonConnector"


# instance fields
.field private mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mIsListening:Z

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const-string v0, "ddar"

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    new-instance v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x22

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    nop

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_2

    const-string v5, "\\\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    const-string v5, "\\\\"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method private listenToSocket()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    move-object v1, v3

    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v5}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    const/16 v5, 0x1000

    new-array v6, v5, [B

    move v7, v2

    :goto_0
    rsub-int v8, v7, 0x1000

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_2

    const-string v5, "DualDarDaemonConnector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reading with start = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    nop

    move v5, v2

    :goto_1
    array-length v8, v6

    if-ge v5, v8, :cond_0

    aput-byte v2, v6, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    const-string v4, "DualDarDaemonConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closing stream for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_5
    const-string v5, "DualDarDaemonConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed closing output stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "DualDarDaemonConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    :goto_3
    nop

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_2
    add-int/2addr v8, v7

    const/4 v7, 0x0

    move v9, v7

    move v7, v2

    :goto_5
    if-ge v7, v8, :cond_5

    :try_start_8
    aget-byte v10, v6, v7

    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/String;

    sub-int v11, v7, v9

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v9, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v11, "DualDarDaemonConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "rawEvent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {v10, v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_6

    :cond_3
    iget-object v12, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    invoke-virtual {v11}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getCmdNumber()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->add(ILcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_6
    goto :goto_7

    :catch_2
    move-exception v11

    :try_start_a
    const-string v12, "DualDarDaemonConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem parsing message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v2, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_7
    add-int/lit8 v9, v7, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    if-nez v9, :cond_6

    const-string v7, "DualDarDaemonConnector"

    const-string v10, "RCV incomplete"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_6
    if-eq v9, v8, :cond_7

    rsub-int v7, v9, 0x1000

    invoke-static {v6, v9, v6, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    :goto_8
    goto/16 :goto_0

    :catchall_1
    move-exception v6

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v6
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v3

    goto :goto_9

    :catch_3
    move-exception v3

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_9
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_e
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v5, :cond_8

    :try_start_f
    const-string v5, "DualDarDaemonConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing stream for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_a

    :catch_4
    move-exception v5

    :try_start_10
    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed closing output stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_a
    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_8
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v1, :cond_9

    :try_start_11
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "DualDarDaemonConnector"

    invoke-static {v5, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    nop

    :cond_9
    :goto_b
    throw v3

    :catchall_3
    move-exception v0

    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v0
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p4

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be separate from command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs declared-synchronized execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v5, :cond_0

    const-string v5, "DualDarDaemonConnector"

    const-string v6, "Missing Output stream - cannot write commands!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v5, :cond_0

    const-string v5, "DualDarDaemonConnector"

    const-string v6, "Missing Output stream - cannot write commands!"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v5, 0x0

    :cond_1
    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command Sent : sequence Number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "task is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Command is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const v7, 0xea60

    invoke-virtual {v6, v1, p2, v7}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->remove(ILjava/lang/String;I)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v6

    move-object v5, v6

    if-nez v5, :cond_2

    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timed-out waiting for response to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassClientError()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "DualDarDaemonConnector"

    const-string/jumbo v9, "event = null or isClassClientError = true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DualDarDaemonConnector"

    const-string v4, "Unhandled event \'%s\'"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DualDarDaemonConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error handling \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return v1
.end method

.method public run()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DualDarDaemonConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error connectiong to DualDAR daemon in NativeDaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v1, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v1}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonDisconnected()Z

    goto :goto_1

    :cond_0
    return-void
.end method

.method public setIsListening(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    return-void
.end method
