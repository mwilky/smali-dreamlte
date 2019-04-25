.class public Lcom/samsung/android/knox/sdp/SdpFileSystem;
.super Ljava/lang/Object;
.source "SdpFileSystem.java"


# static fields
.field private static final BASE_USER_DATA_DIR:Ljava/lang/String; = "/data/enc_user"

.field private static final BASE_USER_SDCARD_DIR:Ljava/lang/String; = "/storage/enc_emulated"

.field private static final LEGACY_SDCARD_DIR:Ljava/lang/String; = "/storage/emulated"

.field private static final LEGACY_USER_DATA_DIR:Ljava/lang/String; = "/data/user"

.field private static final TAG:Ljava/lang/String; = "SdpFileSystem"

.field private static sService:Landroid/os/ISdpManagerService;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabasesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mEmulatedDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mEngineId:I

.field private mFilesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;

    :try_start_0
    const-string/jumbo v0, "sdp_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->enforcePermission()V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    const-string v1, "SdpFileSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SdpFileSystem created engine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 v2, -0x5

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method private static native Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
.end method

.method private static native Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I
.end method

.method private static createDirLocked(Ljava/io/File;)Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "SdpFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create files subdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    nop

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    return-object p0
.end method

.method private static enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0x63

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getSdpService()Landroid/os/ISdpManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/ISdpManagerService;->isLicensed()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpFileSystem"

    const-string v3, "Failed to talk with sdp service..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v2, -0x9

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "databases"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getEncDataDirFile()Ljava/io/File;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    if-gez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/enc_user/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFilesDir callihng createEncPkgDir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;

    iget v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-interface {v3, v4, v0}, Landroid/os/ISdpManagerService;->createEncPkgDir(ILjava/lang/String;)I

    move-result v3

    const-string v4, "SdpFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFilesDir done createEncPkgDir result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    nop

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    return-object v1

    :catch_0
    move-exception v3

    const-string v4, "SdpFileSystem"

    const-string v5, "RemoteException from call unregisterListener"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_4
    :goto_0
    const-string v0, "SdpFileSystem"

    const-string v2, "getEncPackageDir :: invalid object"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpFileSystem"

    const-string v3, "Failed to talk with sdp service..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getExternalStorageDirectory(I)Ljava/io/File;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->enforcePermission()V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/enc_emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private getManagedProfileKnoxDir(I)Ljava/io/File;
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SdpFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getManagedProfileKnoxDir :: Not applicable to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/emulated/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Knox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getManagedProfileKnoxDir :: Protected knox path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SdpFileSystem"

    const-string v4, "getManagedProfileKnoxDir :: The knox path exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getManagedProfileKnoxDir :: The knox path does not exist for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static declared-synchronized getSdpService()Landroid/os/ISdpManagerService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SdpFileSystem"

    const-string v3, "Failed to talk with sdp service..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_2
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v2, -0xd

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static getUserDataDir(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->enforcePermission()V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/enc_user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->printStackTrace()V

    return-object v0
.end method

.method private static isDefaultPathUser(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p0}, Landroid/os/ISdpManagerService;->isDefaultPathUser(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpFileSystem"

    const-string v3, "Failed to talk with sdp service..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private static isLegacyEncryption(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p0}, Landroid/os/ISdpManagerService;->isLegacyEncryption(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpFileSystem"

    const-string v3, "Failed to talk with sdp service..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 2

    const/16 v0, 0x1b0

    or-int/2addr v0, p2

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .locals 5

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "cache"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/enc_emulated/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 5

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "files"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getManagedProfileKnoxDir()Ljava/io/File;
    .locals 3

    const-string v0, "SdpFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getManagedProfileKnoxDir calling for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getManagedProfileKnoxDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserDataDir()Ljava/io/File;
    .locals 6

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get enc-package dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v1

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCryptFsMounted()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isLegacyEncryption(I)Z

    move-result v1

    return v1
.end method

.method public isCryptFsMounted(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isLegacyEncryption(I)Z

    move-result v0

    return v0
.end method

.method public isSensitive(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpFileSystem"

    const-string v3, "Error- Exception in setting Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0x10000000

    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_1

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    :cond_2
    return-object v0
.end method

.method public setSensitive(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SdpFileSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error to handle SDP_SetSensitiveFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SdpFileSystem"

    const-string v3, "Error- Exception in setting Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method
