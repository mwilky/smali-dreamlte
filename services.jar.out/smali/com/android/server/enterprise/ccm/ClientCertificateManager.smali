.class public Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.super Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CCM_PRIVATE_KEY:I = 0x3

.field private static final CCM_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.ccm.date"

.field private static final CHECK_LICENSE_TIMEOUT_MILLIS:I = 0x5dc

.field private static final CSR_MAX_SUBJECT_LENGTH:I = 0x200

.field private static final DBG:Z

.field private static final DKS_TIMEOUT_MILLIS:I = 0x14

.field public static final KEYSTORE_KEYCHAIN_CCM_MARKER:Ljava/lang/String; = "keystorekeychain"

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"

.field private static final KNOX_CCM_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field private static TAG:Ljava/lang/String; = null

.field private static final UPDATE_ACM_TIMEOUT_MILLIS:I = 0x1388

.field private static final defaultPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContainerEventHandler:Landroid/os/Handler;

.field private static mInternalHandler:Landroid/os/Handler;

.field private static mLicenseHandler:Landroid/os/Handler;

.field private static mUpdateACMHandler:Landroid/os/Handler;


# instance fields
.field private final INVALID_SLOT_ID:J

.field private LicenseHandlerThread:Landroid/os/HandlerThread;

.field private final TIMA_SERVICE:Ljava/lang/String;

.field private final TZ_CCM_APP_NAME:Ljava/lang/String;

.field private final TZ_CCM_SUCCESS:J

.field private UpdateACMHandlerThread:Landroid/os/HandlerThread;

.field private mContainerEventHandlerThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mDefaultCertAlias:Ljava/lang/String;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotCount:I

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private mUm:Landroid/os/UserManager;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    const-string v0, "ClientCertificateManager Service"

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "com.samsung.android.spayfw"

    const-string v2, "com.samsung.android.spay"

    const-string v3, "com.sec.android.app.shealth"

    const-string v4, "com.samsung.android.spaymini"

    const-string v5, "com.samsung.android.oneconnect"

    const-string v6, "com.samsung.android.knox.analytics.uploader"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TIMA_SERVICE:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_SUCCESS:J

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->INVALID_SLOT_ID:J

    const-string/jumbo v0, "tz_ccm"

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_APP_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "ClientCertificateManager Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUm:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setupIntentFilters()V

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "ClientCertificateManager Constructor get SemPersonaManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v0, :cond_3

    :try_start_0
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Called TIMA service getTimaVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v0}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateEnterpriseDBForDefaultCCMProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Called update adminInfo for ccm profile succeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Called update adminInfo for ccm profile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method static native CCM_SetTokenTUIPasswd(II)I
.end method

.method static native CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->existCCMprofile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mInternalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContainerEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateAccessMethod(Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->notifyLicenseStatusInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    move-result v0

    return v0
.end method

.method private addDefaultPackageToExemptList()V
    .locals 7

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "addDefaultPackageToExemptList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultPackageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, -0x1

    if-eq v4, v3, :cond_2

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    invoke-static {v5, v4, v0, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addExemptList()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v7, "/data/system/enterprise.db"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v0, v6

    if-eqz v0, :cond_0

    const-string v6, "SELECT * FROM MUMCONTAINER;"

    invoke-virtual {v0, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v1, v6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "DB is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v4

    :catch_0
    move-exception v6

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "No container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v5

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    const/4 v7, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "com.samsung.android.email.provider"

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v4, v8, v9, v7, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_4

    :cond_8
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "com.samsung.android.email.sync"

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v4, v8, v9, v7, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_4

    :cond_9
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "com.android.exchange"

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_a

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v4, v8, v9, v7, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_b
    return-void

    :cond_c
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "No Admin for this container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static native ccm_create_slot(IIILjava/lang/String;)J
.end method

.method static native ccm_delete_alias_list(I[Ljava/lang/String;)J
.end method

.method static native ccm_delete_certificate(IILjava/lang/String;)J
.end method

.method static native ccm_delete_csr_profile(IILjava/lang/String;)J
.end method

.method static native ccm_delete_slot(II)J
.end method

.method static native ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B
.end method

.method static native ccm_gen_csr_without_template(III[BLjava/lang/String;[B)[B
.end method

.method static native ccm_gen_key_pair(IILjava/lang/String;I)[B
.end method

.method static native ccm_generate_csr(IILjava/lang/String;)[B
.end method

.method static native ccm_get_aliases_having_private_key(I)[Ljava/lang/String;
.end method

.method static native ccm_get_error_message(J)Ljava/lang/String;
.end method

.method static native ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J
.end method

.method static native ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J
.end method

.method static native ccm_manage_exempt_list(ZIIIZ)J
.end method

.method static native ccm_set_csr_profile(IILjava/lang/String;I[BI)J
.end method

.method static native ccm_update_lock_status(IIZ)J
.end method

.method private checkAliasExists(IILjava/lang/String;Z)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in checkAliasExists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdminId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", UserId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Alias - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCsrRecord - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, p4

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "alias"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CCMCertTable"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    if-lez v2, :cond_3

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Alias Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v3, 0x1

    return v3

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAliasExists - Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkDefaultCCMProfile()Z
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "checkDefaultCCMProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultPackageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    return v0
.end method

.method private checkMPforCCM()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUm:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMPforCCM() user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", CCM? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    const/16 v4, 0x20

    if-nez v3, :cond_5

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMPforCCM() user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", provision? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    sget-object v6, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in checkMPforCCM(): provisionUser user.id CCMProfile.AccessControlMethod.AFW inAFW"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    goto :goto_2

    :cond_5
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMPforCCM() user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    iget v5, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_a

    :cond_7
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v4

    if-gez v4, :cond_8

    return-void

    :cond_8
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isAccessControlMethodAFW(I)Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUpdateACMHandler:Landroid/os/Handler;

    if-eqz v5, :cond_9

    const/4 v5, 0x3

    iput v5, v4, Landroid/os/Message;->what:I

    sget-object v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUpdateACMHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_9
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateAccessMethod Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private deleteCCMDefaultPolicyRecord(I)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCCMDefaultPolicyRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "uid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v0

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMDefaultPolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCCMDefaultPolicyRecord() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private deleteCCMProfile(I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const-wide/16 v2, 0x0

    invoke-static {v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCCMProfile - native ccm_delete_slot failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v2, "uid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    aput-object v3, v4, v1

    move-object v1, v4

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v4, v5, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCCMProfile - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v0
.end method

.method private deleteCCMProfileUsingAdminId(IIZ)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCCMProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const-wide/16 v2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCCMProfileUsingAdminId - native ccm_delete_slot failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    if-eqz p3, :cond_4

    :try_start_0
    const-string v2, "adminUid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ClientCertificateManagerTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    const-string v2, "adminUid"

    const-string/jumbo v3, "uid"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ClientCertificateManagerTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCCMProfileUsingAdminId - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return v0
.end method

.method private deleteCSRProfileUsingAdminId(II)Z
    .locals 11

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCSRProfileUsingAdminId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCSRProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "csr"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, -0x1

    if-ne v3, p1, :cond_3

    const-string/jumbo v5, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const-string v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in deleteCSRProfileUsingAdminId: AdminId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    const-string v7, "alias"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId - templateName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v7, 0x0

    invoke-static {p1, p2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "deleteCSRProfileUsingAdminId - native ccm_delete_csr_profile failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    goto :goto_1

    :cond_8
    const/4 v5, 0x2

    if-ne v3, p1, :cond_9

    const-string/jumbo v3, "uid"

    const-string v6, "csr"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    invoke-virtual {v6, v7, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_2

    :cond_9
    const-string v3, "adminUid"

    const-string/jumbo v6, "uid"

    const-string v7, "csr"

    filled-new-array {v3, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    move-object v5, v6

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    invoke-virtual {v6, v7, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v4

    :cond_a
    goto :goto_3

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCSRProfileUsingAdminId - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return v1
.end method

.method private deleteCertificateProfile(I)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCertificateProfile - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCertificateProfile - native ccm_delete_certificate failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const-string/jumbo v0, "uid"

    const-string v2, "csr"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v3, v5, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCertificateProfile - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method private deleteCertificateProfileUsingAdminId(IIZ)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCertificateProfileUsingAdminId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCertificateProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCertificateProfileUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x1

    move v2, v0

    const/4 v3, 0x2

    if-eqz p3, :cond_5

    :try_start_0
    const-string v4, "adminUid"

    const-string v5, "csr"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v3

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CCMCertTable"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    const-string v4, "adminUid"

    const-string/jumbo v5, "uid"

    const-string v6, "csr"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    move-object v0, v5

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CCMCertTable"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCertificateProfileUsingAdminId - Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "out deleteCertificateProfileUsingAdminId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2
.end method

.method private deleteCertificateUsingAdminId(IILjava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in deleteCertificateUsingAdminId"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCertificateUsingAdminId - TIMA version does not include CCM"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static/range {p1 .. p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCertificateUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    const/4 v0, 0x0

    const-string v3, "adminUid"

    const-string/jumbo v4, "uid"

    const-string v5, "alias"

    const-string v6, "csr"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v5, v9

    const-string/jumbo v8, "installerId"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CCMCertTable"

    invoke-virtual {v10, v11, v3, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    if-nez v11, :cond_5

    return v2

    :cond_5
    const-string/jumbo v12, "installerId"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v0, v13

    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "adminUid"

    const-string/jumbo v4, "uid"

    const-string v9, "alias"

    const-string/jumbo v6, "installerId"

    const-string v7, "csr"

    filled-new-array {v14, v4, v9, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    aput-object v11, v6, v2

    const/4 v7, 0x1

    aput-object v12, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object v13, v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v6, v9

    iget-object v7, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CCMCertTable"

    invoke-virtual {v7, v9, v4, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCertificateUsingAdminId - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2
.end method

.method private deleteDefaultCCMProfile(J)V
    .locals 9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDefaultCCMProfile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "INVALID_SLOT_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v0, "1000"

    const-string v1, "0"

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "adminUid"

    const-string/jumbo v6, "uid"

    const-string/jumbo v7, "slotId"

    const-string/jumbo v8, "pkgName"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v2

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ClientCertificateManagerTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDefaultCCMProfile - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v1, :cond_1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v2, v1, :cond_1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "ClientCertificateManager.enforceAdminPermission() call comes from the profile owner"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    return-object v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_CCM"

    const-string v4, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_CCM"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    :cond_2
    return-void
.end method

.method private enforcePermissionDks()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private existCCMprofile()Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ClientCertificateManagerTable"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "existCCMprofile- Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private existDefaultProfile(J)Z
    .locals 17

    move-wide/from16 v0, p1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "existDefaultProfile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    const-string v3, "1000"

    const-string v4, "0"

    const-string v5, "adminUid"

    const-string/jumbo v6, "uid"

    const-string/jumbo v7, "pkgName"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "slotId"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    aput-object v3, v10, v7

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v11, 0x2

    aput-object v9, v10, v11

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v5, v10, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    if-eqz v13, :cond_1

    const-string/jumbo v14, "slotId"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v16, v8

    int-to-long v7, v15

    cmp-long v7, v7, v0

    if-nez v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v16, v8

    :cond_2
    add-int/lit8 v8, v16, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    :goto_1
    return v2
.end method

.method private fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fixContextInfoForMP() returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v3, -0x1

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_0
    const-string/jumbo v0, "uid"

    const-string/jumbo v5, "pkgName"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    const-string v5, "adminUid"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v8, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    :goto_1
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    array-length v11, v7

    move v12, v10

    :goto_2
    if-ge v12, v11, :cond_3

    aget-object v13, v7, v12

    new-array v14, v8, [Ljava/lang/String;

    aput-object v6, v14, v10

    aput-object v13, v14, v9

    iget-object v15, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ClientCertificateManagerTable"

    invoke-virtual {v15, v9, v0, v14, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    const-string v12, "adminUid"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v3, v12

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v9, -0x1

    if-ne v9, v3, :cond_5

    const-string/jumbo v9, "uid"

    const-string v11, "allowAllPkgs"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    const-string v11, "adminUid"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "ClientCertificateManagerTable"

    invoke-virtual {v13, v14, v9, v8, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v12, v13

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    if-eqz v10, :cond_4

    const-string v13, "adminUid"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v3, v14

    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getAdminIdForCaller - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_4

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAdminIdForCaller - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return v3
.end method

.method private declared-synchronized getCCMVersionBoot()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCCMVersionBoot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientCertificateManager.getCallingOrCurrentUserId() cInfo.mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    return v0
.end method

.method private getDefaultPackageList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDefaultPackageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "adminUid"

    const-string/jumbo v4, "uid"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string/jumbo v5, "pkgName"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ClientCertificateManagerTable"

    invoke-virtual {v7, v8, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cvList size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v8, v6

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "pkgName"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName in DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method private getDeleteSlotList(II)J
    .locals 11

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDeleteSlotList, adminUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", containerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide v0, 0xffffffffL

    const-string v2, "adminUid"

    const-string/jumbo v3, "uid"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const-string/jumbo v4, "slotId"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ClientCertificateManagerTable"

    invoke-virtual {v6, v7, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cvList size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-nez v5, :cond_1

    return-wide v0

    :cond_1
    const-string/jumbo v7, "slotId"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_2
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDeleteSlotList slotId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-wide v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getErrorMessage(J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_error_message(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMUMContainerOwnerUid(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    return v0
.end method

.method private getPackageUid(ILjava/lang/String;)I
    .locals 7

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getPackageUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    if-nez p2, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getPackageUid - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getPackageUid -  Invalid Context "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    move v0, v4

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageUid - User Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", appId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageUid - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getProfileOwnerUid(I)I
    .locals 7

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v3

    move v0, v3

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getProfileOwnerUid() componentName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getProfileOwnerUid() componentName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v3

    move v0, v3

    :cond_2
    :goto_1
    return v0
.end method

.method private getSlotCount()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ClientCertificateManagerTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getWrappedPin([B)[B
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getWrappedPin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->loadTui()I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    const-string/jumbo v2, "tz_ccm"

    invoke-interface {v1, v2, p1}, Landroid/service/tima/ITimaService;->tuiDecryptPinHash(Ljava/lang/String;[B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getWrappedPin - tuiDecryptPinHash failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_default_cert_alias()Ljava/lang/String;
.end method

.method private handleCCMBuildUpdate()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "ro.build.date"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.ccm.date"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleCCMBuildUpdate - updated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "persist.sys.ccm.date"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addExemptList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private hasGrantInternal(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "alias"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertGrantTable"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    move v1, v5

    if-eqz v1, :cond_2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "alias"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "callingUid"

    iget v7, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertGrantTable"

    const-string v8, "allow"

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hasGrantInternal - allow :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    move v2, v6

    if-nez v2, :cond_1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "hasGrantInternal - uidCount = 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v2, 0x0

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasGrantInternal - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_CCM"

    const/4 v6, 0x1

    const-string v7, "API_CCM:hasGrant"

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v5, "pN"

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget v7, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :cond_6
    return v2
.end method

.method private initParams()V
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "TIMA3: in initParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initParams - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x3f2

    const/16 v1, 0x3e8

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->init_params(III)J

    return-void
.end method

.method static native init_params(III)J
.end method

.method private insertOrUpdateCCMProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;J)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in insertOrUpdateCCMProfileInternal"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez v2, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "cxtInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v4, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdminId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ContainerId -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " whiteListAllPackages - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "adminUid"

    const-string/jumbo v7, "uid"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    aput-object v7, v9, v0

    const/4 v10, 0x1

    aput-object v8, v9, v10

    iget-object v11, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ClientCertificateManagerTable"

    invoke-virtual {v11, v12, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    :try_start_0
    iget-boolean v11, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    if-eqz v11, :cond_7

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "adminUid"

    iget v13, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "accessType"

    iget-object v13, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget-object v13, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_4

    iget-object v0, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "loginRetry"

    iget-object v12, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v12, v12, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "loginExpiration"

    iget-object v12, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v12, v12, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v12, "loginRetry"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "loginExpiration"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    :goto_0
    const-string/jumbo v0, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "allowAllPkgs"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "adminUid"

    iget v13, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v12, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    move v4, v12

    if-eq v10, v4, :cond_6

    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "insertOrUpdateCCMProfileInternal whiteListAllPackages - DB operation failed"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    goto/16 :goto_3

    :cond_7
    iget-object v11, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "adminUid"

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "accessType"

    iget-object v15, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v15}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget-object v15, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v14, v15, :cond_8

    iget-object v14, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    if-eqz v14, :cond_9

    const-string/jumbo v14, "loginRetry"

    iget-object v15, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v15, v15, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "loginExpiration"

    iget-object v15, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v15, v15, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v14, "loginRetry"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "loginExpiration"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    :goto_2
    const-string/jumbo v14, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v14, "pkgName"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "adminUid"

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v14, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ClientCertificateManagerTable"

    invoke-virtual {v0, v15, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    if-eq v10, v0, :cond_b

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "insertOrUpdateCCMProfileInternal packages - DB operation failed"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    :cond_b
    nop

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_d

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "insertOrUpdateCCMProfileInternal - Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    return v4
.end method

.method private insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in insertOrUpdateCertificateProfileInternal"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_f

    if-nez v3, :cond_1

    goto/16 :goto_9

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InstallerId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ContainerId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " allowAllPackages - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " AdminId - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isCSRRecord - "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v4

    const-string v0, "adminUid"

    const-string/jumbo v11, "uid"

    const-string/jumbo v12, "installerId"

    const-string v13, "alias"

    const-string v14, "csr"

    filled-new-array {v0, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v0, v13

    const/4 v12, 0x2

    iget v14, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v12

    const/4 v12, 0x3

    iget-object v14, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    aput-object v14, v0, v12

    const/4 v12, 0x4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v12

    move-object v12, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v0, v14, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertOrUpdateCertificateProfileInternal - Exception delete"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    const-string/jumbo v7, "keystorekeychain"

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v13, v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    iget-boolean v0, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    if-eq v13, v0, :cond_b

    if-ne v13, v4, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object v0, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "insertOrUpdateCertificateProfileInternal - Invalid Package list"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    :cond_6
    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v7, :cond_7

    aget-object v15, v0, v14

    iget-object v13, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_7
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object v0, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v0

    const-string v0, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "alias"

    iget-object v15, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allowWiFi"

    iget-boolean v15, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "installerId"

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "allowRawSigning"

    iget-boolean v15, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v0

    const-string v0, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "alias"

    iget-object v4, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "installerId"

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "csr"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMCertTable"

    invoke-virtual {v0, v4, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v4, 0x1

    if-eq v4, v0, :cond_9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "insertOrUpdateCertificateProfileInternal - DB operation failed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_9
    nop

    move-object/from16 v17, v7

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_a

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    move/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    const-string/jumbo v7, "insertOrUpdateCertificateProfileInternal - Exception"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move/from16 v16, v4

    move-object/from16 v17, v7

    :goto_4
    move/from16 v5, v16

    :goto_5
    move-object/from16 v7, v17

    move/from16 v4, p5

    goto/16 :goto_3

    :cond_b
    :goto_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v0

    const-string v0, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "alias"

    iget-object v7, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allowAllPkgs"

    iget-boolean v7, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "allowWiFi"

    iget-boolean v7, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "installerId"

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "csr"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "allowRawSigning"

    iget-boolean v7, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v6, :cond_c

    const-string/jumbo v0, "pkgName"

    const-string/jumbo v7, "keystorekeychain"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v0

    const-string v0, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "alias"

    iget-object v13, v3, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v7, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "installerId"

    iget v13, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "csr"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_3
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "CCMCertTable"

    invoke-virtual {v0, v13, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    nop

    move v5, v0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_d

    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "insertOrUpdateCertificateProfileInternal - Exception allowAllPackages"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    nop

    :cond_e
    :goto_8
    return v5

    :cond_f
    :goto_9
    move/from16 v10, p3

    move/from16 v9, p4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "insertOrUpdateCertificateProfileInternal - Invalid Arguments"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v4, 0x0

    return v4
.end method

.method private isAccessControlMethodAFW(I)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in isAccessControlMethodAFW userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget-object v4, v2, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isAccessControlMethodAFW return - true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private isCCMDefaultCertStore(I)Z
    .locals 9

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in isCCMDefaultCertStore useId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string/jumbo v1, "enabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMDefaultPolicy"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-nez v5, :cond_1

    return v0

    :cond_1
    const-string/jumbo v6, "enabled"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move v4, v8

    nop

    :cond_2
    move v0, v4

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCCMDefaultCertStore() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCCMDefaultCertStore returning - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method private isDelegatedAppSupported()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isDelegatedAppSupported false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isDelegatedAppSupported false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isInstalledKeyChainAlias"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isInstalledKeyChainAlias - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "uid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "pkgName"

    const-string/jumbo v6, "keystorekeychain"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "csr"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v1, v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    :cond_6
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isInstalledKeyChainAlias - Alias list empty or null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    const/4 v0, 0x0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInstalledKeyChainAlias - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v0, 0x0

    :goto_2
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInstalledKeyChainAlias - Alias list :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0

    :cond_a
    :goto_3
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isInstalledKeyChainAlias - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v1
.end method

.method private isKnoxWorkSpace(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientCertificateManager.isPremiumContainer() : true for user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientCertificateManager.isPremiumContainer() : false for user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private markUserAsCCMProvisioned(I)V
    .locals 2

    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    return-void
.end method

.method private notifyLicenseStatusInternal()Z
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ClientCertificateManagerTable"

    const-string/jumbo v5, "uid"

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const-string v5, "adminUid"

    const-string/jumbo v6, "uid"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "accessType"

    const-string/jumbo v9, "slotId"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v5, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    if-nez v10, :cond_0

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "contentvalue is null"

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v11, "accessType"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(notifyLicenseStatusInternal)uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",adminid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",CAT="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v12, "AFW"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-wide/16 v13, 0x5dc

    if-eqz v12, :cond_2

    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mLicenseHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    iput v6, v12, Landroid/os/Message;->what:I

    iput v4, v12, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v12, Landroid/os/Message;->arg2:I

    const-string v6, "LOCK_STATE"

    iput-object v6, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mLicenseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    const-string v12, "LOCK_STATE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mLicenseHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    iput v6, v12, Landroid/os/Message;->what:I

    iput v4, v12, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v12, Landroid/os/Message;->arg2:I

    const-string v6, "AFW"

    iput-object v6, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mLicenseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyLicenseStatusInternal Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Error making CCM default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCCMDefaultCertStore says: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->markUserAsCCMProvisioned(I)V

    return-void
.end method

.method private removeAllGrants()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeAllGrants - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "CCMCertGrantTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllGrants - Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private removeGrantsForAlias(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeGrantsForAlias - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v0, "alias"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CCMCertGrantTable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGrantsForAlias - Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private resetDefaultCCMProfile(II)V
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetDefaultCCMProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDeleteSlotList(II)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reset : INVALID_SLOT_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->existDefaultProfile(J)Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is not related with default profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is related with default profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteDefaultCCMProfile(J)V

    return-void
.end method

.method private setCCMAsDefaultCertStore(IZ)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in setCCMAsDefaultCertStore userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_1

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "enabled"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string/jumbo v2, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CCMDefaultPolicy"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCCMAsDefaultCertStore() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setCCMProfileDefaultForContainer(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)Z

    move-result v0

    return v0
.end method

.method private setCCMProfileDefaultForContainer(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)Z
    .locals 13

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in setCCMProfileDefaultForContainer containerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setCCMProfileDefaultForContainer - TIMA version does not include CCM"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v5

    :cond_2
    new-instance v4, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    iput-object p2, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v7

    invoke-static {p1, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    iget-object v9, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v9}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v3, p1, v9, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v1

    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setCCMProfileDefaultForContainer - slot Id is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", Owner Admin Id is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide v9, 0xffffffffL

    cmp-long v9, v9, v1

    if-nez v9, :cond_5

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setCCMProfileDefaultForContainer - native create_slot failed"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5

    :cond_5
    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "adminUid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "accessType"

    iget-object v11, v4, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v11}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "slotId"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "allowAllPkgs"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ClientCertificateManagerTable"

    invoke-virtual {v11, v12, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "setCCMProfileDefaultForContainer - DB operation failed"

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v3, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :cond_7
    nop

    invoke-static {v5, v3, p1, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    const/4 v9, -0x1

    const-string v10, "com.samsung.android.email.provider"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    invoke-static {v6, v3, p1, v9, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_0

    :cond_8
    const-string v11, "com.samsung.android.email.sync"

    invoke-direct {p0, p1, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_9

    invoke-static {v6, v3, p1, v9, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_0

    :cond_9
    const-string v11, "com.android.exchange"

    invoke-direct {p0, p1, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_a

    invoke-static {v6, v3, p1, v9, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v6

    iput v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    invoke-direct {p0, p1, v5, v5, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    return v0

    :catch_0
    move-exception v6

    invoke-static {v3, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    return v5
.end method

.method private setGrantInternal(ILjava/lang/String;Z)V
    .locals 5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setGrantInternal - uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    const/4 v1, 0x2

    nop

    :cond_1
    move v0, v1

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "callingUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "alias"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "allow"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "callingUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "alias"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMCertGrantTable"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setGrantInternal() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setupIntentFilters()V
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setupIntentFilters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setupPersonaStateReceiver()V
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, " setupPersonaStateReceiver called1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$3;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method private unloadTui()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unloadTUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v0}, Landroid/service/tima/ITimaService;->unloadTui()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateAccessMethod(Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;I)Z
    .locals 7

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAccessMethod uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateAccessMethod - native create_slot failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "accessType"

    iget-object v5, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v5}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "adminUid"

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ClientCertificateManagerTable"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    const/4 v5, 0x1

    return v5
.end method

.method private updateContainerLockStatus()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateContainerLockStatus():userid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",isDevicelocked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isDeviceSecure:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v7, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateEnterpriseDBForDefaultCCMProfile()Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e8

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "default admin uid already exist"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    const/4 v4, 0x1

    if-nez v2, :cond_3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "adminName"

    const-string v7, "CCM-System"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "canRemove"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ADMIN_INFO"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    if-eq v4, v7, :cond_2

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "insert admin info table - DB operation failed"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "success default admin uid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    nop

    return v4

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to update default admin uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v1
.end method

.method private updateLockStatus(IZZZ)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateLockStatus - TIMA version does not include CCM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    if-nez p4, :cond_2

    :try_start_0
    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v2, :cond_2

    return v3

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v3, p1, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    move v0, v5

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skipping updateLockStatus for KnoxWorkspace, user.id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateLockStatus, user.id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", locked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v7, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J

    :cond_6
    :goto_1
    goto :goto_0

    :cond_7
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateLockStatus, users null, so falling back to just userId"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    goto :goto_4

    :goto_3
    nop

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const/4 v2, 0x1

    return v2
.end method

.method private validateCallerContainer(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_6

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateCallerContainer - UserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", appId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callingUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq v3, p2, :cond_6

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-le v3, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v4

    if-ne v4, v0, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "ClientCertificateManager.validateCallerContainer() callingUid is owner of the profile"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v5

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateCallerContainer - mumContainerOwnerUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ownerUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callerUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", containerId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v4, v6, :cond_5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v5, v6, :cond_5

    if-ne v4, v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v6, "Caller does not belong to the container"

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_0
    return v2

    :cond_6
    return v2
.end method

.method private validatePackageExemption(IILjava/lang/String;)Z
    .locals 8

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in validatePackageExemption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AdminId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " UserId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "allowAllPkgs"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ClientCertificateManagerTable"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "All packages are allowed access to CCM token"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4

    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    const-string/jumbo v6, "pkgName"

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_5

    return v4

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validatePackageExemption - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method private validatePackageList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z
    .locals 10

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in validatePackageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdminId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " UserId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "adminUid"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "uid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "allowAllPkgs"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ClientCertificateManagerTable"

    invoke-virtual {v8, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v8

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validatePackageList adminId - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-lez v2, :cond_5

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "All packages are allowed access to CCM token"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3

    :cond_5
    iget-boolean v4, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    if-eqz v4, :cond_7

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "CCM profile does not allow all packages"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    iget-object v4, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v4, :cond_b

    iget-object v4, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "uid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ClientCertificateManagerTable"

    const-string/jumbo v7, "pkgName"

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v6, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_9

    return v3

    :cond_9
    goto :goto_2

    :catch_1
    move-exception v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validatePackageList tokenPkgList - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return v1

    :cond_b
    :goto_3
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid package list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v1
.end method

.method private verifyCertChain([B)[B
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "verifyCertChain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p1}, Landroid/service/tima/ITimaService;->verifyCertChain([B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain - failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private verifyCertificateInstaller(IIILjava/lang/String;Z)Z
    .locals 7

    :try_start_0
    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdminId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", UserId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CallerUid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Alias - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCsrRecord - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-ne v0, p2, :cond_1

    return v1

    :cond_1
    move v2, p5

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "installerId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "alias"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "csr"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_3

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "verifyCertificateInstaller - Caller is certificate installer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyCertificateInstaller - Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public SetTokenTUIPasswd(II)I
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetTokenTUIPasswd - slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "minTUIPinLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIPasswd(II)I

    move-result v0

    return v0
.end method

.method public addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_CCM:addPackageToExemptList"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "pN"

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in addPackageToExemptList for cxtInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "addPackageToExemptList - packageName null after getValidString"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPackageToExemptList packageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "addPackageToExemptList - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v2

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "addPackageToExemptList - CCM is not enabled by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v4, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPackageToExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1

    :cond_a
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_d

    const-wide/16 v5, 0x0

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3, v7, v2, v4, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_c

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackageToExemptList - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v1

    :cond_c
    return v3

    :cond_d
    return v1

    :cond_e
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "addPackageToExemptList - Invalid input"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v1
.end method

.method public deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCCMProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCCMProfile - null cxtInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCCMProfile - CCM is set default for userId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    return v3

    :cond_6
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v2

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCCMProfile - CCM is not enabled by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    :cond_8
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v2

    if-eq v3, v2, :cond_9

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in deleteCCMProfile - deleteCSRProfileUsingAdminId failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    move-result v2

    if-eq v3, v2, :cond_b

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete certificates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0

    :cond_b
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z

    move-result v2

    if-eq v3, v2, :cond_d

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->removeAllGrants()V

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    return v3
.end method

.method public deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCSRProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCSRProfile - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCSRProfile - CCM is not enabled for caller"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_7

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "deleteCSRProfile - failed to get admin Id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v8, 0x1

    move-object v3, p0

    move v5, v2

    move v6, v0

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "deleteCSRProfile - verifyCertificateInstaller returned false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v1

    :cond_9
    const-wide/16 v3, 0x0

    invoke-static {v2, v0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "deleteCSRProfile - native ccm_delete_csr_profile failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v1

    :cond_b
    const-string v3, "adminUid"

    const-string/jumbo v4, "uid"

    const-string v5, "alias"

    const-string/jumbo v6, "installerId"

    const-string v7, "csr"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p2, v4, v1

    const/4 v1, 0x3

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    move-object v1, v4

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    invoke-virtual {v4, v6, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteCSRProfile - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_0
    return v5

    :cond_d
    :goto_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCSRProfile - Invalid Arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v1
.end method

.method public deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCertificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v6, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteCertificate - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v6

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v7, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_4

    const/16 v0, 0x3e8

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "deleteCertificate - failed to get admin Id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v8, v0

    invoke-direct {p0, v8, v7, p2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCertificate - alias doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v6

    :cond_6
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v8

    move v3, v7

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteCertificate - verifyCertificateInstaller failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v6

    :cond_8
    invoke-direct {p0, v8, v7, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_a

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteCertificate - failed to delete certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v6

    :cond_a
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_CCM"

    const-string v3, "API_CCM:deleteCertificate"

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "pN"

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return v1

    :cond_b
    :goto_0
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteCertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v6
.end method

.method public generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in generateCSR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    if-eqz p5, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateCSR - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    const/4 v0, -0x1

    if-ne v0, v2, :cond_4

    const/16 v2, 0x3e8

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in generateCSR - failed to get admin Id"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v2, v1, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_generate_csr(IILjava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateCSR - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0
.end method

.method public generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 10

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in generateCSRUsingByteArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isDelegatedAppSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateCSRUsingByteArray - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    if-eqz p2, :cond_11

    if-eqz p4, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    array-length v0, p4

    const/16 v2, 0x200

    if-le v0, v2, :cond_6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateCSRUsingByteArray - subject length exceeds maximum value 512"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateCSRUsingByteArray - CCM is not enabled for caller"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_a

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateCSRUsingByteArray - failed to get admin Id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v1

    :cond_a
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generateCSRUsingByteArray - challengePassword is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    :try_start_0
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v6, p3}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v7

    move-object v3, v7

    array-length v7, v3

    const/16 v8, 0x7f

    if-le v7, v8, :cond_d

    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "generateCSRUsingByteArray - challenge password too long"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v1

    :cond_d
    array-length v7, v3

    if-gtz v7, :cond_f

    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_e

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "generateCSRUsingByteArray - challenge password length equal or less than 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v1

    :cond_f
    array-length v1, v3

    const/4 v7, 0x2

    add-int/2addr v1, v7

    new-array v1, v1, [B

    move-object v4, v1

    array-length v1, v3

    const/4 v8, 0x0

    invoke-static {v3, v8, v4, v7, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v1, -0x60

    aput-byte v1, v4, v8

    const/4 v1, 0x1

    array-length v7, v3

    int-to-byte v7, v7

    aput-byte v7, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_10

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateCSRUsingByteArray - encode challengePassword Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_0
    move-object v9, v3

    move-object v1, v4

    move v3, v2

    move v4, v0

    move v5, p5

    move-object v6, p4

    move-object v7, p2

    move-object v8, v1

    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_csr_without_template(III[BLjava/lang/String;[B)[B

    move-result-object v3

    return-object v3

    :cond_11
    :goto_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateCSRUsingByteArray - Invalid Arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v1
.end method

.method public generateCSRUsingString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in generateCSRUsingString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isDelegatedAppSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-nez p4, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateCSRUsingString - Invalid Arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-direct {v2, p4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in generateCSRUsingString - x509Principal Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_CSR:generateCSRUsingTemplate"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "pN"

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in generateCSRUsingTemplate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingTemplate - TIMA version does not include CCM"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2

    :cond_2
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x40

    if-le v1, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingTemplate - CCM is not enabled for caller"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v2

    :cond_5
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generateCSRUsingTemplate - challengePassword is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    :try_start_0
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v6, p4}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v7

    move-object v1, v7

    array-length v7, v1

    const/16 v8, 0x7f

    if-le v7, v8, :cond_8

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "generateCSRUsingTemplate - challenge password too long"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v2

    :cond_8
    array-length v7, v1

    if-gtz v7, :cond_a

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "generateCSRUsingTemplate - challenge password length equal or less than 0"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v2

    :cond_a
    array-length v7, v1

    const/4 v8, 0x2

    add-int/2addr v7, v8

    new-array v7, v7, [B

    move-object v4, v7

    array-length v7, v1

    const/4 v9, 0x0

    invoke-static {v1, v9, v4, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v7, -0x60

    aput-byte v7, v4, v9

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateCSRUsingTemplate - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v6, v5, :cond_d

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "generateCSRUsingTemplate - failed to get admin Id"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v2

    :cond_d
    invoke-static {v5, v3, p2, p3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    return-object v2

    :cond_e
    :goto_1
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "generateCSRUsingTemplate - Invalid Arguments"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-object v2
.end method

.method public generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)[B
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in generateKeyPair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isDelegatedAppSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateKeyPair - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateKeyPair - CCM is not enabled for caller"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_7

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateKeyPair - failed to get admin Id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1

    :cond_7
    invoke-static {v2, v0, p2, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_key_pair(IILjava/lang/String;I)[B

    move-result-object v3

    if-nez v3, :cond_9

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "generateKeyPair - failed in ccm_gen_key_pair"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v1

    :cond_9
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateKeyPair - succeed in ccm_gen_key_pair"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v3
.end method

.method public getAliasesForCaller(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getAliasesForCaller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAliasesForCaller - null cxtInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAliasesForCaller - Invalid Context"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    nop

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "installerId"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "csr"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMCertTable"

    const-string v5, "alias"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-object v0
.end method

.method public getAliasesForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getAliasesForPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAliasesForPackage - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, " getAliasesForPackage - token access is not permitted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Package - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "uid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    const-string v7, "alias"

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    goto :goto_0

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "uid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "allowAllPkgs"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAliasesForPackage - aliasesList2 Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_9

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    return-object v3

    :cond_b
    :goto_2
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAliasesForPackage - Invalid input parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v0
.end method

.method public getAliasesForWiFi()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getAliasesForWiFi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAliasesForWiFi - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "allowWiFi"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "allowRawSigning"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "csr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMCertTable"

    const-string v5, "alias"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    nop

    return-object v0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAliasesForWiFi - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;
    .locals 14

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getCCMProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCCMProfile - null cxtInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCCMProfile - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdminId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " UserId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v4, -0x1

    if-ne v4, v3, :cond_7

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getCCMProfile - admin not found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1

    :cond_7
    const-string v4, "adminUid"

    const-string/jumbo v5, "uid"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const-string v6, "accessType"

    const-string v8, "allowAllPkgs"

    const-string/jumbo v9, "loginRetry"

    const-string/jumbo v10, "loginExpiration"

    filled-new-array {v6, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ClientCertificateManagerTable"

    invoke-virtual {v8, v9, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_c

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_8

    return-object v1

    :cond_8
    const-string v1, "accessType"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-result-object v9

    iput-object v9, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v9, "allowAllPkgs"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    :cond_9
    sget-object v10, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget-object v11, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v10, v11, :cond_b

    new-instance v10, Lcom/samsung/android/knox/keystore/TUIProperty;

    invoke-direct {v10}, Lcom/samsung/android/knox/keystore/TUIProperty;-><init>()V

    iput-object v10, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    const-string/jumbo v10, "loginRetry"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, "loginExpiration"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v10, :cond_a

    iget-object v12, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v12, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    :cond_a
    if-eqz v11, :cond_b

    iget-object v12, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v12, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    :cond_b
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "uid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ClientCertificateManagerTable"

    const-string/jumbo v13, "pkgName"

    invoke-virtual {v11, v12, v13, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_c

    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PackageList - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCCMProfile - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_0
    return-object v0
.end method

.method public getCCMVersion()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCCMVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCCMVersion - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_ccm_version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCertificateAliases"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCertificateAliases - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCertificateAliases - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    move-object v2, v0

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "uid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    nop

    return-object v2

    :catch_0
    move-exception v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateAliases - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0
.end method

.method public getCertificateAliasesHavingPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCertificateAliasesHavingPrivateKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCertificateAliasesHavingPrivateKey - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCertificateAliasesHavingPrivateKey - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCertificateAliasesHavingPrivateKey - userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_aliases_having_private_key(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v4, v3

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    nop

    return-object v1

    :cond_8
    :goto_0
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getCertificateAliasesHavingPrivateKey - native ccm_get_aliases_having_private_key returnd null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object v0

    :catch_0
    move-exception v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateAliasesHavingPrivateKey - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getDefaultCertificateAlias()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getDefaultCertificateAlias"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDefaultCertificateAlias - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_default_cert_alias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getKeyChainMarkedAliases"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKeyChainMarkedAliases - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKeyChainMarkedAliases - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    nop

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "pkgName"

    const-string/jumbo v4, "keystorekeychain"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "csr"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMCertTable"

    const-string v5, "alias"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getKeyChainMarkedAliases - Alias list empty or null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getKeyChainMarkedAliases - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKeyChainMarkedAliases - Alias list :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 18

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getSlotIdForCaller"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    iget v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    const-wide/16 v3, -0x1

    if-gtz v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getSlotIdForCaller - CCM profile is not set"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide v3

    :cond_2
    if-nez v2, :cond_4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getSlotIdForCaller - null cxtInfo"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-wide v3

    :cond_4
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getSlotIdForCaller - Invalid Context "

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    :cond_5
    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSlotIdForCaller callingUid - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v0, 0x3e8

    const/4 v7, 0x0

    if-ne v6, v0, :cond_11

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    const/4 v9, 0x0

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSlotIdForCaller UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", alias - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x0

    iget-object v10, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    if-nez v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    :cond_8
    if-eqz v3, :cond_a

    iget-object v10, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "Digital Signature"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    const/4 v0, 0x1

    :cond_a
    move v10, v0

    if-nez v10, :cond_c

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v11, v0

    const-string/jumbo v0, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "csr"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "alias"

    invoke-virtual {v11, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "CCMCertTable"

    invoke-virtual {v0, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v9, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_c

    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getSlotIdForCaller - slotId Exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_0
    if-nez v10, :cond_d

    if-gtz v9, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const-string/jumbo v0, "uid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v7

    move-object v12, v0

    const-string/jumbo v0, "slotId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const/4 v0, 0x0

    move-object v14, v0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ClientCertificateManagerTable"

    invoke-virtual {v0, v15, v11, v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v0

    nop

    move-wide/from16 v16, v4

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_e

    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v4

    const-string/jumbo v4, "getSlotIdForCaller - retrieving slot Id Exception"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_e
    move-wide/from16 v16, v4

    :goto_1
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v4, "slotId"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_f
    move-wide/from16 v16, v4

    :cond_10
    return-wide v16

    :cond_11
    move-wide/from16 v16, v4

    move v4, v7

    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    :goto_2
    if-ge v4, v5, :cond_13

    aget-object v7, v0, v4

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v8, 0x0

    cmp-long v8, v16, v8

    if-ltz v8, :cond_12

    goto :goto_3

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_13
    :goto_3
    return-wide v16
.end method

.method public getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in getSlotIdForPackage"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    const-wide/16 v4, -0x1

    if-gtz v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getSlotIdForPackage - CCM profile is not set"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide v4

    :cond_2
    iget-boolean v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getSlotIdForPackage - TIMA version does not include CCM"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-wide v4

    :cond_4
    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    if-nez v3, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    invoke-virtual {v1, v3, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, " getSlotIdForPackage - token access is not permitted"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-wide v4

    :cond_7
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    :cond_8
    const/4 v0, 0x0

    if-eqz v2, :cond_c

    iget-object v4, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "Digital Signature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_a
    iget-object v4, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string/jumbo v9, "knox_ccm_policy"

    const-string/jumbo v10, "getSlotIdForPackage"

    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Security Exception Occurred while pid["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] with uid["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] trying to access methodName [getSlotIdForPackage] in ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "knox_ccm_policy"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] service"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    :goto_0
    move v4, v0

    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " packageName - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " alias - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v4, :cond_12

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v12, v0

    const-string/jumbo v0, "uid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "csr"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const-string v0, "alias"

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "CCMCertTable"

    invoke-virtual {v0, v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_f

    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getSlotIdForPackage - slotId Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    if-nez v5, :cond_12

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v0

    const-string/jumbo v0, "uid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "allowAllPkgs"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "csr"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const-string v0, "alias"

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v0, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v5, v0

    goto :goto_2

    :catch_1
    move-exception v0

    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_11

    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSlotIdForPackage - allPackages Exception"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_2
    if-lez v5, :cond_12

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "in getSlotIdForPackage - all packages are allowed access"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-nez v4, :cond_13

    if-gtz v5, :cond_13

    if-eqz v2, :cond_13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    :cond_13
    const-string/jumbo v0, "uid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    new-array v0, v10, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v0, v12

    move-object v10, v0

    const-string/jumbo v0, "slotId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "ClientCertificateManagerTable"

    invoke-virtual {v0, v14, v11, v10, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v13, v0

    goto :goto_3

    :catch_2
    move-exception v0

    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_14

    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSlotIdForPackage - retrieving slot Id Exception"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_3
    if-eqz v13, :cond_16

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-nez v0, :cond_15

    return-wide v8

    :cond_15
    const-string/jumbo v1, "slotId"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_16
    return-wide v8

    :cond_17
    :goto_4
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSlotIdForPackage failed - Invalid arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public getWifiAliasPreferredUid(Ljava/lang/String;)I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public hasGrant(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->hasGrantWithCxt(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    return v1
.end method

.method public hasGrantWithCxt(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasGrant - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->hasGrantInternal(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public insertOrUpdateCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCCMProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "insertOrUpdateCCMProfile - getSlotIdForCaller failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    return v2

    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertOrUpdateCCMProfile - slot Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;J)Z

    move-result v2

    return v2
.end method

.method public insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z
    .locals 9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    iget-object v1, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "insertOrUpdateCertificateProfile - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "insertOrUpdateCertificateProfile - CCM is not enabled for caller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    iget-object v1, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "insertOrUpdateCertificateProfile - Invalid packageList"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0

    :cond_7
    goto :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    iget-object v2, p2, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v8

    const/4 v2, -0x1

    if-ne v2, v8, :cond_a

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in insertOrUpdateCertificateProfile - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0

    :cond_a
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v8

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v0

    return v0

    :cond_b
    :goto_1
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "insertOrUpdateCertificateProfile - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v0
.end method

.method public installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_CCM:installCertificate"

    const/4 v10, 0x1

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v11, v0

    const-string v0, "cB"

    const/4 v12, 0x0

    if-eqz v9, :cond_1

    array-length v1, v9

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v12

    :goto_1
    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "pN"

    iget-object v1, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v2, p1

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installCertificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v13

    if-eqz v13, :cond_1e

    if-eqz v8, :cond_1e

    if-eqz v9, :cond_1e

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-boolean v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCertificate - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v12

    :cond_5
    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCertificate - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v12

    :cond_7
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "installCertificate - Invalid packageList"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v12

    :cond_9
    goto :goto_2

    :cond_a
    invoke-direct {v7, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {v7, v13, v15, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v14

    const/4 v0, -0x1

    if-ne v0, v14, :cond_c

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installCertificate - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v12

    :cond_c
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-direct {v7, v14, v15, v0, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v2, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v5, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move v3, v14

    move v4, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installCertificate - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v12

    :cond_e
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/ccm/CertificateHandler;

    invoke-direct {v0}, Lcom/android/server/enterprise/ccm/CertificateHandler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v1, p4

    :try_start_1
    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/ccm/CertificateHandler;->extractPkcs12([BLjava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_19

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v2, :cond_f

    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "installCertificate - pkcs12 certificate"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move/from16 v22, v14

    move/from16 v23, v15

    goto/16 :goto_7

    :cond_f
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isPrivateKeyExists()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v2, :cond_11

    :try_start_4
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - certificate does not contain private key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_10
    return v12

    :cond_11
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getKeyAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    const-string v5, "RSA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v5, :cond_12

    :try_start_6
    const-string v5, "EC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v5, :cond_12

    move/from16 v22, v14

    move/from16 v23, v15

    goto :goto_4

    :cond_12
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    if-nez v5, :cond_14

    :try_start_8
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_13

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "installCertificate - failed to get certificate chain"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_13
    return v12

    :cond_14
    :try_start_9
    iget-object v6, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/16 v17, 0x3

    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getFormattedPrivateKey()[B

    move-result-object v18

    const/16 v19, 0x0

    iget-boolean v10, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iget-boolean v12, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move/from16 v22, v14

    move/from16 v23, v15

    move-object/from16 v16, v6

    move/from16 v20, v10

    move/from16 v21, v12

    :try_start_a
    invoke-static/range {v14 .. v21}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v14

    cmp-long v6, v3, v14

    if-eqz v6, :cond_16

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_15

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "installCertificate - native ccm_install_object failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_15
    const/4 v3, 0x0

    return v3

    :cond_16
    move-object v6, v5

    const/4 v9, 0x1

    :try_start_b
    iput-boolean v9, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    const/4 v1, 0x0

    nop

    move-object v0, v1

    move-object v9, v6

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v6

    goto/16 :goto_7

    :cond_17
    move/from16 v22, v14

    move/from16 v23, v15

    :goto_4
    :try_start_c
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installCertificate - certificate does not support key algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v3, 0x0

    return v3

    :cond_19
    move/from16 v22, v14

    move/from16 v23, v15

    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v2

    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v1

    :goto_5
    iget-boolean v1, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    iget-boolean v2, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iget-boolean v5, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    iget-object v6, v8, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    move-object/from16 v21, v0

    invoke-static/range {v14 .. v21}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1b

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "installCertificate - native ccm_install_certificate failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v1, 0x0

    return v1

    :cond_1b
    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v13

    move-object v3, v8

    move/from16 v4, v22

    move/from16 v5, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1c

    const/4 v1, 0x0

    return v1

    :cond_1c
    return v2

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v1, p4

    :goto_6
    move/from16 v22, v14

    move/from16 v23, v15

    :goto_7
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installCertificate - Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v2, 0x0

    return v2

    :cond_1e
    :goto_8
    move-object/from16 v1, p4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "installCertificate - Invalid Arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v2, 0x0

    return v2
.end method

.method public installKeyPair(Lcom/samsung/android/knox/ContextInfo;[B[B[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installKeyPair() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v13, p2

    invoke-static {v9, v13}, Lcom/sec/generic/util/CCMKeyCertUtils;->doesCCMSupportKeyAlgorithm([B[B)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_1

    return v14

    :cond_1
    move-object v15, v13

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installKeyPair()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    :try_start_0
    const-string v1, "USRPKEY_"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    new-instance v1, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v1}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    move-object v5, v1

    iput-boolean v14, v5, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    iput-object v6, v5, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    const-string/jumbo v1, "keystorekeychain"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_2

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v4, v5, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    iput-boolean v0, v5, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    if-eqz v15, :cond_5

    invoke-static {v15}, Lcom/sec/generic/util/CCMKeyCertUtils;->getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v1

    move-object v3, v1

    invoke-static/range {p3 .. p3}, Lcom/sec/generic/util/CCMKeyCertUtils;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v1

    move-object v2, v1

    if-nez v2, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "cert is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_3
    const/4 v1, 0x0

    if-eqz v12, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v1

    const/16 v16, 0x3

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v17

    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v19, v2

    move-object v2, v8

    move-object/from16 v20, v3

    move-object v3, v5

    move-object/from16 v21, v4

    move/from16 v4, v16

    move-object/from16 v22, v5

    move-object/from16 v5, v17

    move-object/from16 v16, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v14

    :cond_5
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v16, v6

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz v10, :cond_7

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_7
    move-object/from16 v1, v22

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v8, v1, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v7, v8, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->removeKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return v14

    :cond_8
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupport privatekey format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v14

    :cond_9
    :goto_0
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_CCM:installKeyPair"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "pN"

    iget-object v2, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    const/4 v1, 0x1

    return v1
.end method

.method public installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v15, p5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v14

    const/4 v13, -0x1

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    if-nez p7, :cond_1

    move/from16 v17, v13

    move-object v10, v14

    goto/16 :goto_0

    :cond_1
    invoke-direct {v6, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-boolean v0, v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v13

    :cond_3
    invoke-direct {v6, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    const/16 v0, 0x3e8

    invoke-virtual {v6, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-direct {v6, v14, v12, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v0

    if-ne v13, v0, :cond_4

    const/16 v0, 0x3e8

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "installObject - failed to get admin Id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v11, v0

    const/4 v10, 0x0

    invoke-direct {v6, v11, v12, v15, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v1, v14, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    move-object v0, v6

    move v2, v11

    move v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v13

    :cond_6
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v7, v11

    move v8, v12

    move-object v9, v15

    move v5, v10

    move/from16 v10, p6

    move/from16 v16, v11

    move-object/from16 v11, p7

    move v4, v12

    move-object/from16 v12, p8

    move/from16 v17, v13

    move v13, v2

    move-object v2, v14

    move v14, v3

    invoke-static/range {v7 .. v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v7

    cmp-long v0, v0, v7

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v17

    :cond_8
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    move-object v7, v0

    iput-object v15, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    iput-boolean v5, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iput-boolean v5, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v2

    move-object v10, v2

    move-object v2, v7

    move/from16 v3, v16

    move v11, v4

    move v12, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v0

    if-eq v8, v0, :cond_a

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v0, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v11, v15}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    return v17

    :cond_a
    return v12

    :cond_b
    move/from16 v17, v13

    move-object v10, v14

    :goto_0
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - invalid input parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v17
.end method

.method public installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_11

    if-eqz v7, :cond_11

    if-eqz p4, :cond_11

    iget-object v0, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v9

    :cond_3
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v9

    :cond_5
    iget-object v0, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "installObjectWithProfile - Invalid packageList"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v9

    :cond_7
    goto :goto_0

    :cond_8
    invoke-direct {v6, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    iget-object v0, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {v6, v8, v15, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v14

    const/4 v0, -0x1

    if-ne v0, v14, :cond_a

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v9

    :cond_a
    iget-object v0, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-direct {v6, v14, v15, v0, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v4, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    move v2, v14

    move v3, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v9

    :cond_c
    const-wide/16 v0, 0x0

    iget-object v12, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iget-boolean v3, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    move v10, v14

    move v11, v15

    move/from16 v13, p3

    move/from16 v18, v14

    move-object/from16 v14, p4

    move v5, v15

    move-object/from16 v15, p5

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-static/range {v10 .. v17}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v9

    :cond_e
    const/4 v10, 0x0

    move-object v0, v6

    move-object v1, v8

    move-object v2, v7

    move/from16 v3, v18

    move v4, v5

    move v11, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_10

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget v0, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, v7, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-static {v0, v11, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    return v9

    :cond_10
    return v1

    :cond_11
    :goto_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v9
.end method

.method public installObjectWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isAccessControlMethodPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAccessControlMethodPassword - null cxtInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget-object v3, v1, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v2, v3, :cond_4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAccessControlMethodPassword return - true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v0
.end method

.method public isCCMEmptyForKeyChain(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isCCMPolicyEnabledByAdmin(I)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isCCMPolicyEnabledByAdmin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCCMPolicyEnabledByAdmin - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCCMPolicyEnabledByAdmin - AdminId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ClientCertificateManagerTable"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledByAdmin - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    if-lez v0, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    return v1
.end method

.method public isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isCCMPolicyEnabledForCaller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCCMPolicyEnabledForCaller - CCM profile is not set"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    if-nez p1, :cond_4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCCMPolicyEnabledForCaller - null cxtInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCCMPolicyEnabledForCaller - Invalid Context "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCCMPolicyEnabledForCaller callingUid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_7

    const/4 v1, 0x1

    return v1

    :cond_7
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_9

    aget-object v5, v3, v1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCCMPolicyEnabledForCaller returned - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v2
.end method

.method public isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 12

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in isCCMPolicyEnabledForPackage. packageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v1, "SecurityPolicy"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "security policy must not be allowed to access CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    if-eqz p2, :cond_5

    const-string v1, "com.android.exchange"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.android.email"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.android.email"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "SmartCardEmailPolicy is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    if-eqz p2, :cond_7

    const-string v1, "com.android.browser"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.chrome.deviceextras.samsung"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.sec.android.providers.downloads"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.android.providers.downloads"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    nop

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "SmartCardBrowserPolicy is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v1, :cond_9

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCCMPolicyEnabledForPackage - CCM profile is not set"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0

    :cond_9
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCCMPolicyEnabledForPackage - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "uid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "adminUid"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "allowAllPkgs"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ClientCertificateManagerTable"

    invoke-virtual {v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v6

    goto :goto_1

    :catch_0
    move-exception v6

    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isCCMPolicyEnabledForPackage - allPackages Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1
    if-lez v2, :cond_d

    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForPackage - all packages are allowed access"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    goto :goto_0

    :cond_e
    if-nez v2, :cond_12

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_f

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_10

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdminId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " UserId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " packageName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "uid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "adminUid"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ClientCertificateManagerTable"

    invoke-virtual {v8, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v2, v8

    goto :goto_3

    :catch_1
    move-exception v8

    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_11

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - adminId Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_3
    goto :goto_2

    :cond_12
    if-lez v2, :cond_13

    return v6

    :cond_13
    return v0
.end method

.method public isCCMPolicyEnabledForUid(I)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isKeyChainMarkedAlias - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in keychainMarkedReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "keychainMarkedReset - Cannot clear credentials, not a system app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    if-nez p1, :cond_4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "keychainMarkedReset - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "keychainMarkedReset - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {v0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_alias_list(I[Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "keychainMarkedReset - native ccm_delete_alias_list failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2

    :cond_8
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "pkgName"

    const-string v7, "csr"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    const-string/jumbo v8, "keystorekeychain"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    move-object v2, v6

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    invoke-virtual {v6, v7, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->removeAllGrants()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "keychainMarkedReset - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyLicenseStatus()Z
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyLicenseStatus call: double EnterpriseLicenseService notification contract"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->notifyLicenseStatusInternal()Z

    move-result v0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUpdateACMHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    sget-object v3, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v2, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUpdateACMHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateAccessMethod Failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminRemoved - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    return-void
.end method

.method public registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 4

    const/4 v0, -0x1

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in registerForDefaultCertificate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_7

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerForDefaultCertificate - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in registerForDefaultCertificate - calling UID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_6

    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Called TIMA service registerForDefaultCertificate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    move v0, v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v0

    :cond_7
    :goto_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerForDefaultCertificate - invalid input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v1
.end method

.method public removeKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in removeKeyPair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeKeyPair - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    const/16 v2, 0x3e8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_6

    const/16 v2, 0x3e8

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeKeyPair - failed to get admin Id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v9, v2

    invoke-direct {p0, v9, v1, p2, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeKeyPair - alias doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeKeyPair - alias installed by MDM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0

    :cond_a
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v9

    move v5, v1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeKeyPair - verifyCertificateInstaller failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v0

    :cond_c
    invoke-direct {p0, v9, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_e

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeKeyPair - failed to delete certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v0

    :cond_e
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->removeGrantsForAlias(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_CCM"

    const-string v4, "API_CCM:removeKeyPair"

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "pN"

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return v3

    :cond_f
    :goto_1
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeKeyPair - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v0
.end method

.method public removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_CCM:removePackageFromExemptList"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "pN"

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in removePackageFromExemptList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList packageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removePackageFromExemptList - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removePackageFromExemptList - CCM is not enabled by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v4, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_b

    const-wide/16 v5, 0x0

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1, v7, v2, v4, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackageFromExemptList - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1

    :cond_a
    return v3

    :cond_b
    return v1

    :cond_c
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removePackageFromExemptList - Invalid input"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v1
.end method

.method public setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const/4 v9, 0x1

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_CCM"

    const-string v5, "API_CCM:setCCMProfile"

    const/4 v10, 0x1

    invoke-direct {v3, v4, v10, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v3, "pN"

    iget-object v4, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in setCCMProfile cxtInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    const/4 v12, 0x0

    if-eqz v0, :cond_24

    if-nez v8, :cond_1

    move-object/from16 v18, v11

    goto/16 :goto_9

    :cond_1
    invoke-direct {v7, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v13

    iget-boolean v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCCMProfile - TIMA version does not include CCM"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v12

    :cond_3
    iget-object v14, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const/4 v0, 0x0

    sget-object v3, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v3, v14, :cond_5

    iget-object v3, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlPassword:Ljava/lang/String;

    invoke-direct {v7, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMProfile - Invalid Password Access Control arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v12

    :cond_5
    move-object v15, v0

    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v0, v14, :cond_d

    const/4 v3, 0x0

    iget-object v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v0}, Landroid/service/tima/ITimaService;->getTuiVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    if-nez v3, :cond_8

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMProfile - TUI is not supported"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "TUI is not supported"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v12

    :cond_a
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v0, v0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    if-ltz v0, :cond_b

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v0, v0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    if-nez v0, :cond_d

    :cond_b
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v12

    :cond_d
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v7, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMProfile - Invalid packageList"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v12

    :cond_f
    goto :goto_1

    :cond_10
    iget-boolean v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    if-nez v0, :cond_14

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCCMProfile - null packageList"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    :cond_12
    :try_start_1
    iget-object v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v12

    :goto_2
    if-ge v4, v3, :cond_13

    aget-object v5, v0, v4

    iget-object v6, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_13
    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_3
    invoke-direct {v7, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    iget v0, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v3, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v3}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v3

    invoke-static {v0, v6, v3, v15}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v4

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCCMProfile - slot Id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-wide v0, 0xffffffffL

    cmp-long v0, v0, v4

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCCMProfile - native create_slot failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v12

    :cond_17
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v0, v14, :cond_1f

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v0, v0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertChain([B)[B

    move-result-object v16

    if-nez v16, :cond_19

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget v0, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    return v12

    :cond_19
    const/4 v1, 0x0

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v0, v0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    if-eqz v0, :cond_1c

    :try_start_2
    iget-object v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget-object v2, v2, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v12, v12, v3}, Landroid/service/tima/ITimaService;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget v0, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    return v12

    :cond_1b
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "tuiInitSecret success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exception - tuiInitSecret failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_4
    move-object v0, v1

    long-to-int v2, v4

    iget-object v1, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v3, v1, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    iget-object v1, v8, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    iget v1, v1, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    move/from16 v17, v1

    move-object v1, v7

    move-object/from16 v18, v11

    move-wide v10, v4

    move/from16 v4, v17

    move-object v5, v0

    move v12, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setTokenTUIProperty(IIILjava/lang/String;[B)I

    move-result v1

    if-eqz v1, :cond_1e

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCCMProfile - setTokenTUIProperty() returns an error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget v2, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    const/4 v2, 0x0

    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_5

    :cond_1f
    move-object/from16 v18, v11

    move v2, v12

    move-wide v10, v4

    move v12, v6

    :goto_5
    invoke-direct {v7, v13, v8, v10, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_20

    iget v0, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    return v2

    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_3
    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_21
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v5, v0

    :try_start_4
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_21

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_7
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCCMProfile - isPersona: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v5, 0x0

    invoke-direct {v7, v12, v1, v2, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    iget v0, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v6, 0x1

    invoke-static {v5, v0, v12, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    invoke-direct {v7, v12, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMDefaultCertStore says: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return v9

    :goto_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_24
    move-object/from16 v18, v11

    :goto_9
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_25

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMProfile - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v3, 0x0

    return v3
.end method

.method public setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_CSR:setCSRProfile"

    const/4 v9, 0x1

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v10, v0

    const-string/jumbo v0, "pN"

    iget-object v1, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v2, p1

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setCSRProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v8, :cond_13

    if-eqz v11, :cond_13

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCSRProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v12

    :cond_3
    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCSRProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v12

    :cond_5
    invoke-direct {v7, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "O="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "emailAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v0, 0x2

    if-le v4, v0, :cond_d

    add-int/lit8 v0, v4, -0x2

    invoke-virtual {v5, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "in setCSRProfile - Exception "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v7, v11, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)I

    move-result v3

    const/4 v1, -0x1

    if-ne v1, v3, :cond_f

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in setCSRProfile - failed to get admin Id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v12

    :cond_f
    const-wide/16 v1, 0x0

    iget-object v15, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    iget v14, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    iget-object v13, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->ordinal()I

    move-result v18

    move v13, v3

    move/from16 v16, v14

    move v14, v6

    move-object/from16 v17, v0

    invoke-static/range {v13 .. v18}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_set_csr_profile(IILjava/lang/String;I[BI)J

    move-result-wide v13

    cmp-long v1, v1, v13

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in setCSRProfile - native ccm_set_csr_profile failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v12

    :cond_11
    new-instance v1, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v1}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    move-object v13, v1

    iget-object v1, v8, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    iput-object v1, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    iput-boolean v12, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    iput-boolean v12, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iput-boolean v12, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    const/4 v14, 0x1

    move-object v1, v7

    move-object v2, v11

    move v15, v3

    move-object v3, v13

    move/from16 v16, v4

    move v4, v15

    move-object/from16 v17, v5

    move v5, v6

    move/from16 v18, v6

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;IIZ)Z

    move-result v1

    if-eq v9, v1, :cond_12

    return v12

    :cond_12
    return v9

    :cond_13
    :goto_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCSRProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v12
.end method

.method public setDefaultCCMProfile()Z
    .locals 12

    const-wide v0, 0xffffffffL

    const/16 v2, 0x3e8

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in setDefaultCCMProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setDefaultCCMProfile - TIMA version does not include CCM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateEnterpriseDBForDefaultCCMProfile()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "update db failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    new-instance v3, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v3}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    sget-object v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v5, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    move v5, v4

    :goto_0
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v5}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v0

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDefaultCCMProfile - slot Id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", caller Id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide v5, 0xffffffffL

    cmp-long v5, v5, v0

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setDefaultCCMProfile - native create_slot failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v4

    :cond_7
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-object v5, v10

    const-string v10, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "uid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "accessType"

    iget-object v11, v3, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v11}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "loginRetry"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "loginExpiration"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "slotId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v10, "pkgName"

    invoke-virtual {v5, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v10

    const-string v10, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "uid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "pkgName"

    invoke-virtual {v6, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v10

    if-eq v9, v10, :cond_9

    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setDefaultCCMProfile packages - DB operation failed"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_9
    goto/16 :goto_1

    :cond_a
    nop

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addDefaultPackageToExemptList()V

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v5

    iput v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    invoke-direct {p0, v4, v4, v4, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    return v9

    :catch_0
    move-exception v5

    invoke-static {v2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    return v4
.end method

.method public setGrant(ILjava/lang/String;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setGrant - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    move v0, p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isInstalledKeyChainAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setGrant - uid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",alias:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setGrantInternal(ILjava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public setTokenTUIProperty(IIILjava/lang/String;[B)I
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTokenTUIProperty - slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loginExpirationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTokenTUIProperty - loginRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p4, p5, p3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->handleCCMBuildUpdate()V

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setupPersonaStateReceiver()V

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersionBoot()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CCM InternalHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->thread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CCM LicenseHandlerThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->LicenseHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CCM UpdateACMHandlerThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->UpdateACMHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CCM ContainerEventHandlerThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContainerEventHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->UpdateACMHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->LicenseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContainerEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Initialize mInternalHandler & start the thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mInternalHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->LicenseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mLicenseHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->UpdateACMHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mUpdateACMHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContainerEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContainerEventHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkMPforCCM()V

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateContainerLockStatus()V

    return-void
.end method

.method public updateDBdata(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermissionDks()V

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDBdata - Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    nop

    const-string v0, "ClientCertificateManagerTable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method updateLicenseStatus(IILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return v1

    :cond_0
    const-string v2, "LOCK_STATE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v0, "LOCK_STATE"

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const-string v2, "AFW"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v0, "AFW"

    :goto_0
    nop

    invoke-virtual {v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->getValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateLicenseStatus - native create_slot failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateLicenseStatus]ccm_create_slot, slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",newacs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "accessType"

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ClientCertificateManagerTable"

    invoke-virtual {v6, v7, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    return v6

    :cond_6
    return v1

    :cond_7
    return v1
.end method
