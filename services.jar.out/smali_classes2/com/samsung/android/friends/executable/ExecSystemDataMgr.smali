.class public Lcom/samsung/android/friends/executable/ExecSystemDataMgr;
.super Ljava/lang/Object;
.source "ExecSystemDataMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ExecSystemDataMgr"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static changeFilePermission(Ljava/io/File;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ExecSystemDataMgr"

    const-string/jumbo v3, "setReadable() failed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ExecSystemDataMgr"

    const-string/jumbo v3, "setWritable() failed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v2, "setExecutable() failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ExecSystemDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to change a permission of file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ExecSystemDataMgr"

    const-string v3, "copyPackageAssetsToSysDir"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez v2, :cond_0

    return v4

    :cond_0
    const-string/jumbo v0, "paramStr0"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "paramList0"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "ExecSystemDataMgr"

    const-string v7, "getPackageManager() failed"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_2
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {v6, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v7, v0

    if-nez v7, :cond_3

    const-string v0, "ExecSystemDataMgr"

    const-string v8, "getApplicationInfo() failed"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_3
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v8, v0

    if-nez v8, :cond_4

    const-string v0, "ExecSystemDataMgr"

    const-string v9, "getResourcesForApplication() failed"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_4
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object v9, v0

    if-nez v9, :cond_5

    const-string v0, "ExecSystemDataMgr"

    const-string v10, "getAssets() failed"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v0, v10, v11}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v13, v12, v4

    aget-object v11, v12, v11

    const-string v14, "ExecSystemDataMgr"

    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v14, v10, v15}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {v1, v14, v11}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->createFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v16, :cond_6

    :try_start_2
    const-string v15, "ExecSystemDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Failed to create "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v17, v0

    :goto_1
    if-eqz v14, :cond_7

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1, v14}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    nop

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    const/4 v4, 0x0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v15, v0

    :try_start_4
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v14, :cond_8

    :try_start_5
    invoke-static {v15, v14}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    return v11

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1

    :cond_a
    :goto_3
    move v1, v4

    const-string v0, "ExecSystemDataMgr"

    const-string v4, "arguments wrong!"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v1
.end method

.method private createFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "ExecSystemDataMgr"

    const-string v1, "createFile"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_1
    new-array v5, v5, [B

    :goto_0
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    invoke-virtual {v3, v5, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v4, v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v4, v2

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v4, v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_5
    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return v0

    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_2
    throw v2
.end method

.method private deleteFiles(Landroid/os/Bundle;)Z
    .locals 12

    const-string/jumbo v0, "paramStrA0"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const-string v3, "ExecSystemDataMgr"

    const-string v4, "deleteFiles %d"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v4, v6}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-lez v2, :cond_7

    array-length v3, v0

    move v4, v1

    move v1, v8

    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v6, v0, v1

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "/data/system/friends"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ExecSystemDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wrong filePath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "ExecSystemDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is a directory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "ExecSystemDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to delete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v7

    invoke-static {v7}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    :cond_7
    if-eqz v1, :cond_8

    if-ne v1, v2, :cond_8

    goto :goto_4

    :cond_8
    move v5, v8

    :goto_4
    return v5
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExecSystemDataMgr"

    const-string v2, "failed to delete a file or a directory!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private deleteSubDirs(Landroid/os/Bundle;)Z
    .locals 9

    const-string v0, "ExecSystemDataMgr"

    const-string v1, "deleteSubDirs"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "paramStr1"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ExecSystemDataMgr"

    const-string v4, "data is wrong!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_0
    move v3, v2

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ExecSystemDataMgr"

    const-string/jumbo v6, "target is not a directory!"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    array-length v6, v5

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v7}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return v3
.end method

.method private makeDir(Landroid/os/Bundle;)Z
    .locals 7

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v1, "makeDir"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ExecSystemDataMgr"

    const-string v3, "data is wrong!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_0
    const/4 v1, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ExecSystemDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to create a path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_4
    throw v2
.end method

.method private readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v1, "readStringFromFile"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "paramStr0"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ExecSystemDataMgr"

    const-string v5, "data is wrong!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v3

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x400

    :try_start_1
    new-array v5, v5, [C

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v8, v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    invoke-virtual {v6, v5, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string/jumbo v7, "paramStr0"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :try_start_2
    invoke-static {v3, v4}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v2

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v3, v4}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method private writeStringToFile(Landroid/os/Bundle;)Z
    .locals 7

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v1, "writeStringToFile"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "paramStr1"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v1, v5}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v4}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v1, v5}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    return v2

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_2
    throw v1

    :cond_3
    :goto_4
    const-string v1, "ExecSystemDataMgr"

    const-string/jumbo v4, "wrong param %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 3

    const-string v0, "ExecSystemDataMgr"

    const-string v1, "ActionSystemDataMgr"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_1

    const v0, 0x120013

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->writeStringToFile(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteSubDirs(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->makeDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteFiles(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12000b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
