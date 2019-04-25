.class public Lcom/android/server/enterprise/auditlog/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# static fields
.field private static final ADAYINMILLISEC:J = 0x5265c00L

.field private static final BUFFERREADSIZE:I = 0x10000

.field private static final EDM_AUDIT_LOG_FILENAME:Ljava/lang/String; = "/data/system/"

.field private static final TOTALNUMBEROFFILES:I = 0x8fc

.field private static mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isWriting:Z

.field private mAdminCriticalSize:F

.field private mAdminDirectoryPath:Ljava/lang/String;

.field private mAdminMaximumSize:F

.field private mBufferLimitSize:J

.field private volatile mCircularBufferSize:J

.field private mContext:Landroid/content/Context;

.field private mCriticalIntent:Z

.field private mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field private mDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFullBuffer:F

.field private mFullIntent:Z

.field private volatile mIsBootCompleted:Z

.field private volatile mIsDumping:Z

.field private mIsFirstNode:Z

.field private volatile mLastDumpedFile:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMaximumIntent:Z

.field private volatile mNumberOfDeprecatedFiles:I

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private mTailTimestamp:J

.field private mTotalDirectoryOccupation:J

.field private volatile mTypeOfDump:Z

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CircularBuffer"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->isWriting:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsFirstNode:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    sget-object v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    const/high16 v0, 0x42c20000    # 97.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getNumberOfDeprecatedFiles()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->populateCircularBuffer()V

    return-void
.end method

.method private addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->checkCriticalSizes()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->cleanBuffer()V

    :cond_1
    new-instance v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkCriticalSizes()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    const-wide/16 v6, 0x64

    mul-long/2addr v6, v4

    iget-wide v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v6, v4

    long-to-int v4, v6

    int-to-float v5, v4

    iget v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_0

    iget-boolean v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    if-nez v5, :cond_1

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.AUDIT_CRITICAL_SIZE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "mdm.intent.action.audit.log.critical.size"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    const-string v0, "admin_uid"

    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v0, v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKPUPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.action.AUDIT_CRITICAL_SIZE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    const-string v10, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v11, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-boolean v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "CircularBuffer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AuditLog has reached its critical size. Percentage is "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    nop

    move-object v0, v5

    goto :goto_1

    :cond_0
    iput-boolean v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    :cond_1
    :goto_1
    int-to-float v5, v4

    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_2

    iget-boolean v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    if-nez v5, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.AUDIT_MAXIMUM_SIZE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "mdm.intent.action.audit.log.maximum.size"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    const-string v0, "admin_uid"

    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v0, v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKPUPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.action.AUDIT_MAXIMUM_SIZE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    const-string v10, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v11, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-boolean v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    nop

    move-object v0, v5

    goto :goto_3

    :cond_2
    iput-boolean v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    :cond_3
    :goto_3
    int-to-float v5, v4

    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_4

    iget-boolean v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    if-nez v5, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.AUDIT_FULL_SIZE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    iget v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "mdm.intent.action.audit.log.full.size"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    const-string v0, "admin_uid"

    iget v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKPUPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.AUDIT_FULL_SIZE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    const-string v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v6, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-boolean v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v6, "Full Size Reached!"

    iget-object v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    nop

    move-object v0, v5

    goto :goto_5

    :cond_4
    iput-boolean v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    :cond_5
    :goto_5
    return-void
.end method

.method private cleanBuffer()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v0, v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    :goto_1
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory is deleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory is deleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-string v0, "CircularBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is deleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v3, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;-><init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v0

    if-lez v3, :cond_4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    return-object v2

    :cond_4
    return-object v1
.end method

.method private formatIfEmptyOrCorrupted(Ljava/io/File;)V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rwd"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    move v3, v8

    if-lez v8, :cond_3

    const/4 v6, 0x0

    add-int/lit8 v8, v3, -0x1

    aget-byte v8, v1, v8

    if-nez v8, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v8, v1, v2

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    move v6, v2

    :cond_0
    aget-byte v8, v1, v2

    if-nez v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    const-wide/32 v8, 0x10000

    mul-long/2addr v8, v4

    int-to-long v10, v6

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "CircularBuffer"

    const-string/jumbo v3, "formatIfEmptyOrCorrupted.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "CircularBuffer"

    const-string/jumbo v3, "formatIfEmptyOrCorrupted.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_5
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    const-string v3, "CircularBuffer"

    const-string/jumbo v4, "formatIfEmptyOrCorrupted.IOException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_6
    throw v1
.end method

.method private getNumberOfDeprecatedFiles()I
    .locals 7

    const-string v0, "auditNumberOfDepFiles"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "CircularBuffer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private isCompressed(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    array-length v4, v2

    if-ge v4, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-byte v1, v2, v3

    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-ne v1, v4, :cond_1

    aget-byte v1, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, -0x75

    if-ne v1, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    nop

    :goto_0
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return v3

    :goto_2
    nop

    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_3
    return v3

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    :goto_4
    throw v1
.end method

.method private markDeprecatedFiles()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v1, v4

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private populateCircularBuffer()V
    .locals 13

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_2
    new-instance v7, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v7

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->isCompressed(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->formatIfEmptyOrCorrupted(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-nez v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v8

    const-string v9, "CircularBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    if-le v3, v8, :cond_5

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->reCalculateDirectoryAndBubbleSizes([Ljava/io/File;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    :goto_4
    return-void
.end method

.method private reCalculateDirectoryAndBubbleSizes([Ljava/io/File;)V
    .locals 7

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    return-void
.end method

.method private setNumberOfDeprecatedFiles(I)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "auditNumberOfDepFiles"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v3, "AUDITLOG"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method

.method private totalNumberFiles()J
    .locals 9

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x8fc

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v7, v0

    div-long/2addr v5, v7

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v0, v5

    return-wide v0

    :cond_0
    return-wide v1

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public closeFile()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected createBubbleDir()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_bubble"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method public deleteAllFiles()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v0, v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_bubble/bubbleFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_bubble"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    return-void

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getBufferLogSize()J
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    const-string v3, "auditLogBufferSize"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getCriticalLogSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentLogFileSize()I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public getDumpFilesList()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLastTimestamp()J
    .locals 6

    const-wide/16 v0, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogLastTimestamp"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumLogSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    float-to-int v0, v0

    return v0
.end method

.method protected resizeBubbleFile(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_bubble/bubbleFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_bubble/bubbleFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "rws"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    long-to-int v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "CircularBuffer"

    const-string/jumbo v3, "resizeBubbleFile.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "CircularBuffer"

    const-string/jumbo v3, "resizeBubbleFile.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v3, "CircularBuffer"

    const-string/jumbo v4, "resizeBubbleFile.IOException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    throw v1
.end method

.method public setBootCompleted(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public setBufferLogSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    return-void
.end method

.method public setCriticalLogSize(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    return-void
.end method

.method public declared-synchronized setIsDumping(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->markDeprecatedFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setLastTimestamp(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "auditLogLastTimestamp"

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v5, "AUDITLOG"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    :cond_1
    return-void
.end method

.method public setMaximumLogSize(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    return-void
.end method

.method public setTypeOfDump(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    :cond_2
    monitor-exit v0

    :goto_0
    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    nop

    const-string v1, "CircularBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
