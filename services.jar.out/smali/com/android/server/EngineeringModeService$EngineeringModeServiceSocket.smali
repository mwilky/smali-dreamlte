.class Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;
.super Ljava/lang/Object;
.source "EngineeringModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngineeringModeServiceSocket"
.end annotation


# static fields
.field private static final EM_SERVICE_SOCKET_NAME:Ljava/lang/String; = "EngineeringModeServiceSocket"

.field public static final ERROR:I = -0x2

.field public static final ERROR_INVALID_ARGUMENT:I = -0x1

.field public static final NOK:I = 0x0

.field public static final OK:I = 0x1

.field private static final THREAD_TAG:Ljava/lang/String; = "EngineeringmodeServiceSocket"

.field private static final VERSION:I = 0x1


# instance fields
.field private buffer:[B

.field private mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private final mSocketLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method constructor <init>(Lcom/android/server/EngineeringModeService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mSocketLock:Ljava/lang/Object;

    return-void
.end method

.method private executeCommand(I)[B
    .locals 11

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mSocketLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-gtz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->buffer:[B

    invoke-static {v1}, Lcom/android/server/EngineeringModeService$Packet;->getVersion([B)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const-string v3, "EngineeringmodeServiceSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version isn\'t mathced("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->buffer:[B

    invoke-static {v4}, Lcom/android/server/EngineeringModeService$Packet;->getCommand([B)I

    move-result v4

    const-string v5, "EngineeringmodeServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    const-string v7, "EngineeringmodeServiceSocket"

    const-string v8, "Unknown command"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v7}, Lcom/android/server/EngineeringModeService;->access$800(Lcom/android/server/EngineeringModeService;)I

    move-result v7

    move v5, v7

    nop

    :goto_0
    if-ne v5, v3, :cond_5

    const-string v3, "EngineeringmodeServiceSocket"

    const-string v7, "EM Success"

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    const/4 v7, -0x1

    if-eqz v4, :cond_3

    const-string v8, "EngineeringmodeServiceSocket"

    const-string v9, "Unknown command"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v7, 0x0

    nop

    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    if-eq v7, v8, :cond_4

    invoke-static {v3}, Lcom/android/server/EngineeringModeService$Packet;->initPacket(I)[B

    move-result-object v8

    move-object v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8, v7}, Lcom/android/server/EngineeringModeService$Packet;->putItem([BLjava/lang/Object;I)[B

    move-result-object v8

    move-object v6, v8

    goto :goto_2

    :cond_4
    const-string v8, "EngineeringmodeServiceSocket"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "item isn\'t set(initial["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], packet["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "])"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    :try_start_4
    monitor-exit v0

    return-object v6

    :cond_6
    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    monitor-exit v0

    return-object v2

    :cond_7
    :goto_4
    const-string v1, "EngineeringmodeServiceSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer is abnormal("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public BigEndianToLittleEndian([B)[B
    .locals 2

    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "EngineeringModeServiceSocket"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EngineeringmodeServiceSocket"

    const-string v2, "Failed to excute socket service."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "EngineeringmodeServiceSocket"

    const-string/jumbo v1, "v.1, Ready to connect."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalSocket:Landroid/net/LocalSocket;

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;->executeCommand(I)[B

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "EngineeringmodeServiceSocket"

    const-string/jumbo v6, "ret is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_1
    const-string v0, "EngineeringmodeServiceSocket"

    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "EngineeringmodeServiceSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket connection may be closed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_0

    :cond_2
    const-string v0, "EngineeringmodeServiceSocket"

    const-string v1, "Socket thread has been stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
