.class public Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    }
.end annotation


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mBackupSize:J

.field mExtraFlag:I

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field private final mOpToken:I

.field mOutput:Ljava/io/OutputStream;

.field mPkg:Landroid/content/pm/PackageInfo;

.field mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

.field mPrivilegeApp:Z

.field private final mQuota:J

.field mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field private final mTransportFlags:I

.field mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIIIZI)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v9, "_manifest"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string v9, "_meta"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    move/from16 v9, p9

    iput v9, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mExtraFlag:I

    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPrivilegeApp:Z

    move/from16 v13, p13

    iput v13, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mUserId:I

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v14

    const-string v15, "Timeout parameters cannot be null"

    invoke-static {v14, v15}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v14, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v14

    sput-object v14, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method static synthetic access$600()Lcom/android/server/backup/BackupManagerYuva;
    .locals 1

    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-object v0
.end method

.method private initializeAgent()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mUserId:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mUserId:I

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mUserId:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "a"

    const/4 v4, 0x0

    move-object v5, v8

    move-object v6, v1

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    new-instance v2, Landroid/os/Environment$UserEnvironment;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    array-length v7, v5

    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v15, v5, v3

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v10, "obb"

    const/4 v11, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object v12, v6

    move-object/from16 v14, p2

    invoke-static/range {v9 .. v14}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    if-eqz p3, :cond_0

    array-length v5, p3

    if-lez v5, :cond_0

    const v5, 0x1ffed01

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, p3}, Ljava/io/DataOutputStream;->write([B)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    const/16 v13, -0x3eb

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v15, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v11, v1

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v17, v1

    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    if-eqz v1, :cond_2

    if-nez v17, :cond_0

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v14

    if-eqz v1, :cond_1

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPrivilegeApp:Z

    if-eqz v1, :cond_2

    iget v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mExtraFlag:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    :cond_1
    move v7, v14

    goto :goto_0

    :cond_2
    move v7, v15

    :goto_0
    iget v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mUserId:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_3

    iget v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mUserId:I

    const/16 v2, 0xa0

    if-gt v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    move-object v9, v1

    goto :goto_2

    :cond_3
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v15}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_1

    :goto_2
    new-instance v18, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    iget-object v3, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v4, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    aget-object v5, v16, v14

    iget v6, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    if-nez v17, :cond_4

    move v8, v14

    goto :goto_3

    :cond_4
    move v8, v15

    :goto_3
    iget v10, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mExtraFlag:I

    iget v2, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mUserId:I

    move-object/from16 v1, v18

    move/from16 v19, v2

    move-object v2, v12

    move-object/from16 v20, v11

    move/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[BII)V

    move-object/from16 v1, v18

    aget-object v2, v16, v14

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    aput-object v0, v16, v14

    new-instance v0, Ljava/lang/Thread;

    const-string v2, "app-data-runner"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    aget-object v2, v16, v15

    iget-object v3, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v2, v3}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v3, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup failed on package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_5
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2, v14}, Lcom/android/server/backup/BackupManagerService;->setEdmBackupFail(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    :goto_4
    :try_start_2
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    if-eqz v16, :cond_8

    aget-object v0, v16, v15

    if-eqz v0, :cond_7

    aget-object v0, v16, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_7
    aget-object v0, v16, v14

    if-eqz v0, :cond_8

    aget-object v0, v16, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    goto/16 :goto_8

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Error bringing down backup stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_9
    nop

    move v13, v1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_5
    move-object v1, v0

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_6
    :try_start_3
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_a
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2, v14}, Lcom/android/server/backup/BackupManagerService;->setEdmBackupFail(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v2, -0x3eb

    :try_start_4
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    if-eqz v1, :cond_c

    aget-object v0, v1, v15

    if-eqz v0, :cond_b

    aget-object v0, v1, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_b
    aget-object v0, v1, v14

    if-eqz v0, :cond_c

    aget-object v0, v1, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_c
    goto :goto_7

    :catch_3
    move-exception v0

    const-string v3, "BackupManagerService"

    const-string v4, "Error bringing down backup stack"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x3e8

    sget-object v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_d
    nop

    :goto_7
    move v13, v2

    :goto_8
    goto :goto_b

    :goto_9
    nop

    :try_start_5
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    if-eqz v16, :cond_f

    aget-object v0, v16, v15

    if-eqz v0, :cond_e

    aget-object v0, v16, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_e
    aget-object v0, v16, v14

    if-eqz v0, :cond_f

    aget-object v0, v16, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_f
    goto :goto_a

    :catch_4
    move-exception v0

    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, -0x3e8

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_10
    :goto_a
    throw v1

    :cond_11
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to full agent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_12
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/backup/BackupManagerService;->setEdmBackupFail(Z)V

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->tearDown()V

    return v13
.end method

.method public preflightCheck()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    return v0

    :cond_1
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to full agent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3eb

    return v0
.end method

.method public sendQuotaExceeded(JJ)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Remote exception while telling agent about quota exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
