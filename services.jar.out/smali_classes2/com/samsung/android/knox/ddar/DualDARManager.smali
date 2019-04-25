.class public Lcom/samsung/android/knox/ddar/DualDARManager;
.super Ljava/lang/Object;
.source "DualDARManager.java"


# static fields
.field private static final DEBUG:Z

.field public static final DUALDAR_AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final DUALDAR_MGR_SERVICE:Ljava/lang/String; = "DUALDAR_MGR_SERVICE"

.field public static final GET_CLIENT_VERSION_REQUEST:Ljava/lang/String; = "GET_CLIENT_VERSION_REQUEST"

.field public static final GET_DUALDAR_USERS_REQUEST:Ljava/lang/String; = "GET_DUALDAR_USERS_REQUEST"

.field public static final INSTALL_CLIENT_LIBRARY_REQUEST:Ljava/lang/String; = "INSTALL_CLIENT_LIBRARY_REQUEST"

.field private static final LOAD_RETRY_COUNT:I = 0x5

.field public static final PUSH_SECRET_REQUEST:Ljava/lang/String; = "PUSH_SECRET_REQUEST"

.field private static final TAG:Ljava/lang/String; = "DualDarManager"

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DualDarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "DualDarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found FSRelay file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    new-instance v10, Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    move-object v3, v10

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v2

    const-string v3, "DualDarManager"

    const-string v4, "general exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception v2

    const-string v3, "DualDarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FSRelay file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2f

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/knox/ddar/FileInfo;

    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v6, v1

    move-object v1, v3

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :goto_1
    throw v0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/ddar/DualDARManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ddar/DualDARManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ddar/DualDARManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_16

    :catch_0
    move-exception v3

    goto/16 :goto_13

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    :goto_0
    if-nez v0, :cond_4

    nop

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    :try_start_3
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_3

    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :cond_2
    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :goto_3
    monitor-exit p0

    return v2

    :cond_4
    :try_start_7
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_16

    iget-wide v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_16

    iget-wide v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    goto/16 :goto_f

    :cond_5
    sget-boolean v3, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "DualDarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FSRelay fd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p3, :cond_7

    invoke-direct {p0, v4}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-direct {p0, v4}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    sget-boolean v4, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load FSRelay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v4, v3

    move v3, v2

    :goto_6
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_d

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "RELAY_FILE_INFO"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "CRYPTO_FILE_INFO"

    new-array v8, v2, [Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_a
    const-string v7, "INSTALL_CLIENT_LIBRARY_REQUEST"

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v8, "dual_dar_response"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    move v8, v6

    goto :goto_7

    :cond_b
    move v8, v2

    :goto_7
    move v4, v8

    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    const-string v6, "DualDarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FSRelay loading failure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    if-nez v4, :cond_11

    const-string v3, "DualDarManager"

    const-string v5, "FSRelay Load failed !!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    if-eqz v0, :cond_e

    :try_start_8
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_e

    :try_start_9
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    :catch_3
    move-exception v3

    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v3, :cond_10

    :try_start_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v6, v5, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_a

    :cond_f
    goto :goto_b

    :catch_4
    move-exception v3

    :try_start_c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_10
    :goto_b
    monitor-exit p0

    return v2

    :cond_11
    :try_start_d
    sget-boolean v3, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "DualDarManager"

    const-string v5, "FSRelay Loaded Successfully"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_12
    nop

    if-eqz v0, :cond_13

    :try_start_e
    iget-object v2, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v2, :cond_13

    :try_start_f
    iget-object v2, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_c

    :catch_5
    move-exception v2

    :try_start_10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-nez v2, :cond_15

    :try_start_11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_d

    :cond_14
    goto :goto_e

    :catch_6
    move-exception v2

    :try_start_12
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_15
    :goto_e
    monitor-exit p0

    return v6

    :cond_16
    :goto_f
    :try_start_13
    const-string v3, "DualDarManager"

    const-string/jumbo v4, "pfd is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    nop

    if-eqz v0, :cond_17

    :try_start_14
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v3, :cond_17

    :try_start_15
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_10

    :catch_7
    move-exception v3

    :try_start_16
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_17
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-nez v3, :cond_19

    :try_start_17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_11

    :cond_18
    goto :goto_12

    :catch_8
    move-exception v3

    :try_start_18
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_19
    :goto_12
    monitor-exit p0

    return v2

    :goto_13
    nop

    :try_start_19
    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at installLibrary - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v0, :cond_1a

    :try_start_1a
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v3, :cond_1a

    :try_start_1b
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_14

    :catch_9
    move-exception v3

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-nez v3, :cond_1c

    :try_start_1d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_15

    :catch_a
    move-exception v3

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_1b
    nop

    :cond_1c
    monitor-exit p0

    return v2

    :goto_16
    if-eqz v0, :cond_1d

    :try_start_1f
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    if-eqz v3, :cond_1d

    :try_start_20
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto :goto_17

    :catch_b
    move-exception v3

    :try_start_21
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    if-nez v3, :cond_1f

    :try_start_22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_c
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    goto :goto_18

    :cond_1e
    goto :goto_19

    :catch_c
    move-exception v3

    :try_start_23
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f
    :goto_19
    throw v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const-string v1, "KNOXCORE_PROXY_AGENT"

    const-string v2, "DUALDAR_MGR_SERVICE"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDualDARUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "GET_DUALDAR_USERS_REQUEST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "DualDarManager"

    const-string v3, "Failed to get service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "USERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstalledClientLibraryVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "GET_CLIENT_VERSION_REQUEST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "DualDarManager"

    const-string v3, "Failed to get service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v1, "CLIENT_VERSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized installLibrary(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDARManager;->installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecret(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "DualDarManager"

    const-string/jumbo v1, "setSecret() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "INNER_LAYER_SECRET"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "PUSH_SECRET_REQUEST"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dual_dar_response"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PUSH_SECRET_REQUEST response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    nop

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
