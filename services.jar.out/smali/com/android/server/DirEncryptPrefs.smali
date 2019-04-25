.class Lcom/android/server/DirEncryptPrefs;
.super Ljava/lang/Object;
.source "DirEncryptPrefs.java"


# static fields
.field private static final CRYPT_OLD_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "SDCardEncryption.Pref"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptPrefs"

.field private static final UUID_LIST_MAX_SIZE:I = 0x32

.field private static sPreferences:Lcom/android/server/DirEncryptPrefs;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DirEncryptPrefs;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addUUIDPrefs(IILjava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v4, :cond_0

    const-string v10, "SD card uuid field is null"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v9

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Add UUID] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v11, "/efs/sec_efs/"

    const-string v12, "SDCardEncryption.Pref"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 644 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    const/4 v0, 0x0

    invoke-direct {v1, v12}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v13

    move-object v5, v13

    const-string/jumbo v13, "policy"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v14

    move v8, v14

    const/4 v14, -0x1

    if-eq v8, v14, :cond_8

    nop

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v13, v15}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v15

    iget v11, v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    if-ne v3, v11, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    move v0, v11

    if-nez v3, :cond_3

    iget v11, v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    or-int/2addr v0, v11

    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    iget v14, v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    const/4 v11, 0x3

    if-ne v14, v11, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :goto_2
    or-int v11, v0, v16

    if-eqz v11, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SD card status is same "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    iget v0, v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-eq v2, v0, :cond_5

    const-string v0, "Only SD card policy update"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/DirEncryptPrefs;->updateMDMPolicyPrefs(I)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    const/4 v9, 0x1

    nop

    if-eqz v6, :cond_6

    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    const-string v0, "add complete"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_6
    :goto_3
    return v9

    :cond_7
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move v11, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v14, 0x32

    if-lt v0, v14, :cond_9

    const/4 v0, -0x1

    if-ne v8, v0, :cond_9

    const-string v0, "delete first UUID list"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v0, 0x0

    :goto_6
    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v6, v11

    nop

    if-eqz v7, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 644 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MDM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v6, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    if-eqz v7, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_c

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v6, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    const/4 v9, 0x1

    nop

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    const-string v0, "add complete"

    :goto_8
    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_9

    :catchall_0
    move-exception v0

    move v11, v8

    move v8, v7

    move-object v7, v5

    move-object v5, v0

    goto :goto_a

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_d

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    const-string v0, "add complete"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_d

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    const-string v0, "add complete"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    :cond_d
    :goto_9
    return v9

    :goto_a
    if-eqz v6, :cond_e

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    const-string v0, "add complete"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    :cond_e
    :goto_b
    throw v5
.end method

.method private checkUUIDPrefs(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string v4, "SD card uuid field is null"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v4, "policy"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exist list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string v1, "SD card uuid field is null"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exist SD card list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "can\'t find SD card uuid"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;
    .locals 2

    const-class v0, Lcom/android/server/DirEncryptPrefs;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/DirEncryptPrefs;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptPrefs;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    :cond_0
    sget-object v1, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeUUIDPrefs(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string v8, "SD card uuid field is null"

    invoke-static {v8}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v3

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remove uuid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v8, "policy"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    return v3

    :cond_1
    new-instance v8, Ljava/io/File;

    const-string v9, "/efs/sec_efs/"

    const-string v10, "SDCardEncryption.Pref"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    invoke-direct {p0, p1, v0}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    nop

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remove the item : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    if-nez v2, :cond_3

    const-string v8, "can\'t find remove uuid"

    invoke-static {v8}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v3

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 644 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MDM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    nop

    :goto_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_2

    :catchall_0
    move-exception v8

    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v7, :cond_5

    goto :goto_1

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    return v3

    :goto_3
    if-eqz v7, :cond_6

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v9

    :cond_6
    :goto_4
    throw v8
.end method

.method private restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sec_efs/"

    const-string v5, "SDCardEncryption.Pref"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    const-string/jumbo v4, "restoreUUIDPrefs"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-nez v2, :cond_1

    const-string/jumbo v4, "read data is null from file"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    const-string/jumbo v4, "policy"

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    nop

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_5

    :catch_2
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_3

    goto :goto_2

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    const-string v4, "#########################################"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[List "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const-string v4, "#########################################"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    return-object v0

    :goto_5
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v5

    :cond_5
    :goto_6
    throw v4

    :cond_6
    :goto_7
    const-string v4, "Can\'t read or open pref file"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateMDMPolicyPrefs(I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, "policy"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_0

    const-string/jumbo v6, "policy is same"

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/sec_efs/"

    const-string v8, "SDCardEncryption.Pref"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v6

    nop

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 644 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    nop

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v0, :cond_3

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v2

    :goto_3
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v7

    :cond_4
    :goto_4
    throw v6
.end method


# virtual methods
.method public clearPrefs(Ljava/lang/String;)V
    .locals 6

    const-string v0, "clearPrefs()"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptPrefs;->removeUUIDPrefs(Ljava/lang/String;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "policy"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sec_efs/"

    const-string v5, "SDCardEncryption.Pref"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "There is no list, so delete internal meta file !!!"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public haveEncPrefs()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/"

    const-string v2, "SDCardEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 8

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, "policy"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restorePrefs() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput v5, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    const/4 v6, 0x3

    iput v6, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy        : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current UUID  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encrypt state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z
    .locals 3

    iget v0, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v1, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget-object v2, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DirEncryptPrefs;->addUUIDPrefs(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
