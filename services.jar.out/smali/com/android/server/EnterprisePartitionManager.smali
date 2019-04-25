.class public Lcom/android/server/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EnterprisePartitionManager$EpmMigrationCmd;,
        Lcom/android/server/EnterprisePartitionManager$EpmResponseCode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CopyFlagExitOneError:I = 0x8

.field public static final CopyFlagForce:I = 0x1

.field public static final CopyFlagRecursive:I = 0x2

.field public static final CopyFlagRemoveSource:I = 0x4

.field public static final CopyFlagRenameWithNumber:I = 0x20

.field private static final DLP_NOTIFY_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final ENODEV:I = 0x13

.field public static final ENOENT:I = 0x2

.field private static final EPM_SOCKET_NAME:Ljava/lang/String; = "epm"

.field private static final EPM_SUB_CMD_CALCULATE_PKG_DIR:Ljava/lang/String; = "calculate_pkg_dir"

.field private static final EPM_SUB_CMD_CLEAR_PKG_DATA_DIR:Ljava/lang/String; = "clear_pkg_data_dir"

.field private static final EPM_SUB_CMD_CREATE_CHAMBER:Ljava/lang/String; = "create_chamber"

.field private static final EPM_SUB_CMD_CREATE_ENC_DIR:Ljava/lang/String; = "create_enc_dir"

.field private static final EPM_SUB_CMD_REMOVE_CHAMBER:Ljava/lang/String; = "remove_chamber"

.field private static final EPM_SUB_CMD_REMOVE_ENC_DIR:Ljava/lang/String; = "remove_enc_dir"

.field static final EPM_TAG:Ljava/lang/String; = "EnterprisePartitionManager"

.field public static PARTITON_TYPE_INTERNAL_SDCARD:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_READ:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I = 0x0

.field public static PARTITON_TYPE_NON_KNOX:I = 0x0

.field public static PARTITON_TYPE_PRIVATE_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_SDCARD:I = 0x0

.field public static final PartitionInserted:I = 0x276

.field public static final PartitionRemoved:I = 0x277

.field public static final TYPE_KNOX_CONTAINER_CE:I = 0x1

.field public static final TYPE_KNOX_CONTAINER_CE_NO_REMOUNT:I = 0x4

.field public static final TYPE_KNOX_CONTAINER_DE:I = 0x3

.field public static final TYPE_SECURE_FILE_SYSTEM:I = 0x2

.field public static final UnsolicitedDlpEvents:I = 0x262

.field public static final UnsolicitedShowToast:I = 0x259

.field private static final isKnoxBuildEnabled:Z

.field private static mInstallLock:Ljava/lang/Object;

.field private static final mKnoxInfo:Landroid/os/Bundle;

.field private static final mKnoxVersion:Ljava/lang/String;

.field private static mPackageTasker:Lcom/android/server/pm/Installer;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/EnterprisePartitionManager;


# instance fields
.field private mReady:Z

.field private mSessionIdDstPath:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storage:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x65

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_PRIVATE_DATA:I

    const/16 v0, 0x66

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD:I

    const/16 v0, 0x67

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_NON_KNOX:I

    const/16 v0, 0x68

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    const/16 v0, 0x69

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    const/16 v0, 0x6a

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I

    const/16 v0, 0x6b

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_READ:I

    const/16 v0, 0x6c

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "v00"

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/EnterprisePartitionManager;->mReady:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    const-string v0, "Knox is not supported on this device.."

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addToAuditLog(IIIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private command(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private createConnector()V
    .locals 0

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;
    .locals 1

    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/EnterprisePartitionManager;

    invoke-direct {v0}, Lcom/android/server/EnterprisePartitionManager;-><init>()V

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    :cond_0
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    return-object v0
.end method

.method public static isEPMSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    return v0
.end method

.method private isFailed(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isOnGoing(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isSuccess(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private rescanSdcard(Landroid/content/Context;Ljava/io/File;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_0

    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    sput-object p1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    :goto_0
    return-void
.end method


# virtual methods
.method public calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelCopyChunks(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/pm/Installer;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    :goto_2
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .locals 3

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    const/16 v0, -0x13

    return v0

    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->changeKnoxFilePermission(Ljava/lang/String;III)I

    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v0, -0x1

    :goto_0
    :try_start_1
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public changePrivateModePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 10

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/16 v1, -0x13

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x2

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {p3, p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    if-lez p4, :cond_4

    invoke-virtual {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v3, v8

    move v4, p2

    move-object v5, v9

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v0, -0x1

    :goto_1
    :try_start_1
    monitor-exit v1

    return v0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_6
    :goto_3
    return v2

    :cond_7
    :goto_4
    return v2
.end method

.method public copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I
    .locals 21

    move-object/from16 v1, p0

    move/from16 v14, p2

    move/from16 v15, p4

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/16 v2, -0x13

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/16 v16, -0x1

    const/16 v0, 0x20

    invoke-static/range {p1 .. p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, -0x2

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v19, v12

    goto/16 :goto_6

    :cond_1
    invoke-static/range {p3 .. p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    goto/16 :goto_5

    :cond_2
    if-lez v14, :cond_3

    invoke-virtual {v1, v14}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    if-lez v15, :cond_4

    invoke-virtual {v1, v15}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p10, :cond_6

    or-int/lit8 v0, v0, 0x4

    :cond_6
    move/from16 v17, v0

    sget-object v18, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v10, p7

    int-to-long v8, v10

    move-object v3, v12

    move v4, v14

    move-object v5, v13

    move v6, v15

    move/from16 v7, v17

    move-wide/from16 v19, v8

    move-wide/from16 v8, p5

    move-wide/from16 v10, v19

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-wide/from16 v12, p8

    :try_start_1
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/Installer;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_7

    const/4 v2, 0x0

    :goto_0
    goto :goto_1

    :cond_7
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8

    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move v2, v0

    :goto_1
    nop

    move/from16 v16, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    :goto_2
    const/4 v0, -0x1

    move/from16 v16, v0

    :goto_3
    :try_start_2
    monitor-exit v18

    return v16

    :goto_4
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    :goto_5
    return v3

    :cond_a
    move-object/from16 v19, v12

    :goto_6
    return v3
.end method

.method public createChamber(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createEncPkgDir(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createPartition(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->createPartitionCmd(II)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "EnterprisePartitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path translation failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    :cond_2
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Installer;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    monitor-exit v2

    return v0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v5

    move-object v3, v5

    const/4 v5, 0x0

    aget-wide v5, v3, v5
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    const/4 v1, -0x1

    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    const/4 v9, 0x1

    aget-wide v4, v3, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    const/4 v9, 0x2

    aget-wide v6, v3, v9

    const/4 v9, 0x3

    aget-wide v9, v3, v9

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    const/4 v8, 0x1

    :cond_1
    const-string/jumbo v9, "result"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "last_modified_date"

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v9, "file_size"

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v9, "is_dir"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_2
    :goto_2
    const/4 v1, -0x2

    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v7, v5, v3, v4, v1}, Lcom/android/server/pm/Installer;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v7
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v7

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    nop

    :cond_2
    return-object v2

    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_3
    :goto_2
    return-object v2
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 9

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "EnterprisePartitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path translation failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    :cond_2
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v4

    aget-wide v5, v4, v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    monitor-exit v3

    return v0

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isMounted(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->isMountedCmd(I)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public migrateSdpDb(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .locals 2

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManager;->mountCmd(ILjava/lang/String;ZI)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public mountPersonalPage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const/16 v5, 0x24

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 10

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/16 v1, -0x13

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    or-int/lit8 p5, p5, 0x4

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x2

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {p3, p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    if-lez p4, :cond_4

    invoke-virtual {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v3, v8

    move v4, p2

    move-object v5, v9

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v0, -0x1

    :goto_1
    :try_start_1
    monitor-exit v1

    return v0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_6
    :goto_3
    return v2

    :cond_7
    :goto_4
    return v2
.end method

.method public removeChamber(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removePartition(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->removePartitionCmd(II)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public varargs sendDLPCommand(II[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDualDARPolicy(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->setDualDARPolicy(II)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public syncFS(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unmount(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->unmountCmd(II)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public unmountPersonalPage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unmountPrivateMode(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public verifyPassword(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
