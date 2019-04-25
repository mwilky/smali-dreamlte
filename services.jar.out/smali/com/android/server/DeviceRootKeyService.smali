.class public final Lcom/android/server/DeviceRootKeyService;
.super Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$BigData;,
        Lcom/android/server/DeviceRootKeyService$AllowList;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
    }
.end annotation


# static fields
.field private static final ACTIVITY:Ljava/lang/String; = "activity"

.field private static final BIGDATA_DRK:I = 0x0

.field private static final BIGDATA_KEYSTORE:I = 0x1

.field private static final ERR_GENERAL_BIGDATA:I = -0x15

.field private static final ERR_INVALID_ARUGEMENTS:I = -0x2

.field private static final ERR_MAKE_BIGDATA_BLOB:I = -0x16

.field private static final ERR_PERMISSION_DENIED:I = -0x5

.field private static final ERR_SEND_BIGDATA:I = -0x17

.field private static final ERR_WRITE_KEY_ERROR:I = -0xa

.field private static final KEY_TYPE_EC:I = 0x4

.field private static final KEY_TYPE_RSA:I = 0x1

.field private static final NOT_ERROR:I = 0x0

.field private static final PERM_ALL:I = 0xbf

.field private static final PERM_ALLOW_SPAY:I = 0x100

.field private static final PERM_CREATE_SERVICE_KEY:I = 0x4

.field private static final PERM_DEFAULT:I = 0x97

.field private static final PERM_EXIST_DRK:I = 0x1

.field private static final PERM_GET_DEVICE_INFO:I = 0x80

.field private static final PERM_GET_DRK_CERT:I = 0x10

.field private static final PERM_GET_UID:I = 0x2

.field private static final PERM_LIMIT:I = 0x3

.field private static final PERM_PSEUDO_AT_CMD:I = 0x8

.field private static final PERM_SELF_TEST_SERV_BLOB:I = 0x20

.field private static final PERM_SEND_BIGDATA:I = 0x40

.field private static final TAG:Ljava/lang/String; = "DEVROOT#Service"

.field private static final THREAD_TAG:Ljava/lang/String; = "DEVROOT#Socket"

.field private static final USER_UID:I = -0x270f

.field private static final VERSION:Ljava/lang/String; = "1.1.22"

.field private static mAMS:Lcom/android/server/am/ActivityManagerService;

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

.field private static final mLock:Ljava/lang/Object;

.field private static mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;


# instance fields
.field private final hqmCompId:Ljava/lang/String;

.field private hqmCustomDataset:Ljava/lang/String;

.field private final hqmFeature:Ljava/lang/String;

.field private final hqmHitType:Ljava/lang/String;

.field private hqmManufacture:Ljava/lang/String;

.field private final hqmType:I

.field private hqmVer:Ljava/lang/String;

.field private isSocketThreadRequest:Z

.field private mIsActivityManagerReady:Z

.field private mIsDrkServiceReady:Z

.field private mNativeRequestedProcess:Ljava/lang/String;

.field private mRequestedProcess:Ljava/lang/String;

.field private mSatsService:Lcom/samsung/android/service/sats/ISatsService;

.field private mThreadSocket:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "dk_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/DeviceRootKeyService;->hqmType:I

    const-string v2, "GPU"

    iput-object v2, v1, Lcom/android/server/DeviceRootKeyService;->hqmCompId:Ljava/lang/String;

    const-string v2, "SPUS"

    iput-object v2, v1, Lcom/android/server/DeviceRootKeyService;->hqmFeature:Ljava/lang/String;

    const-string/jumbo v2, "ph"

    iput-object v2, v1, Lcom/android/server/DeviceRootKeyService;->hqmHitType:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/DeviceRootKeyService;->hqmVer:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/DeviceRootKeyService;->hqmManufacture:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/DeviceRootKeyService;->hqmCustomDataset:Ljava/lang/String;

    iput-boolean v0, v1, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    iput-object v2, v1, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    iput-boolean v0, v1, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    iput-boolean v0, v1, Lcom/android/server/DeviceRootKeyService;->mIsDrkServiceReady:Z

    sput-object p1, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {v4, v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;-><init>(Lcom/android/server/DeviceRootKeyService;)V

    const-string v5, "DEVROOT#Socket"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    iget-object v3, v1, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v3, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v3}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>()V

    sput-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    new-instance v3, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v3}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>()V

    sput-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService;

    sput-object v3, Lcom/android/server/DeviceRootKeyService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceRootKeyService;->init()V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v4, "system"

    const/16 v5, 0xbf

    const/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.sec.keyverifier"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.spayfw"

    const/16 v7, 0x4b0

    invoke-virtual {v3, v4, v7}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.spayfw"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.spay"

    const/16 v7, -0x270f

    const/16 v8, 0x197

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.softsim"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.attestationproxy"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.android.server.IcccManagerService"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.samsungpay.gear"

    const/4 v8, 0x3

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.app.devicerootkeyserviceclient"

    const/16 v7, 0xb7

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    :cond_0
    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v4, "system_server"

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "/system/bin/sem_daemon"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "TmsService.Process"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.sec.downloadablekeystore"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.skms.android.agent:remote"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "com.samsung.android.activation"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "/system/bin/keystore"

    const/16 v5, 0x3f9

    const/16 v7, 0xc0

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "/system/bin/ssud"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v4, "saktest"

    const/16 v5, 0x83

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v4, "dk_native_client_test"

    const/16 v5, 0xf7

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v4, "pseudoAtCmd"

    const/16 v5, 0x9f

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "/data/sem"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v4, "testMLDAP"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v4, "/data/skpm"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v4, "qsee-lib-test"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    :cond_1
    const/4 v3, 0x0

    nop

    const/4 v0, 0x0

    move-object v4, v3

    move v3, v0

    :goto_0
    if-ge v3, v8, :cond_3

    const-wide/16 v5, 0x32

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    const-string v5, "HqmManagerService"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    move-object v4, v0

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceRootKeyService;->getPdpData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DeviceRootKeyService;->hqmCustomDataset:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/DeviceRootKeyService;->hqmCustomDataset:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ro.hardware.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DeviceRootKeyService;->hqmVer:Ljava/lang/String;

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DeviceRootKeyService;->hqmManufacture:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "GPU"

    const-string v12, "SPUS"

    const-string/jumbo v13, "ph"

    iget-object v14, v1, Lcom/android/server/DeviceRootKeyService;->hqmVer:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/DeviceRootKeyService;->hqmManufacture:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/DeviceRootKeyService;->hqmCustomDataset:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v9, v4

    move-object/from16 v17, v0

    invoke-virtual/range {v9 .. v18}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "DEVROOT#Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurs on getPdpData. Err = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    return-void
.end method

.method private SLOGE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[1.1.22] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private SLOGI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[1.1.22] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DeviceRootKeyService;IIZI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/DeviceRootKeyService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->verifyTestDrkCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceRootKeyService;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceRootKeyService;->sendBigData(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DEVROOT#Service"

    const-string v2, "It is only supported on eng binary."

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    if-nez v0, :cond_2

    const-string v0, "SatsService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/sats/ISatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/sats/ISatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    :cond_2
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/sats/ISatsService;->executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "DEVROOT#Service"

    const-string v3, "Failed to execute PsudoDrkAtCommand."

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "DEVROOT#Service"

    const-string v3, "Failed to connect SatsService."

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v1
.end method

.method private native generateServiceKey(Ljava/lang/String;IZ)[B
.end method

.method private native getBigDataMessage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getDeviceInformation()[B
.end method

.method private native getDrkCertificate(I)[B
.end method

.method private native getPdpData()Ljava/lang/String;
.end method

.method private native getProcessName(I)Ljava/lang/String;
.end method

.method private hasAccessPermission(IIZI)Z
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "DEVROOT#Service"

    const-string/jumbo v3, "hasAccessPermission start."

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->isServiceReady()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DEVROOT#Service"

    const-string v3, "DeviceRootKeyService isn\'t ready."

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "DEVROOT#Service"

    const-string v3, "DeviceRootKeyService called by native interface."

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v2, v0, p2, p4}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_3

    :cond_1
    const-string v2, "DEVROOT#Service"

    const-string v3, "DeviceRootKeyService called by java interface."

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_2

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "DEVROOT#Service"

    const-string v4, "Error occurs on checking package name."

    invoke-direct {p0, v3, v4}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_2
    sget-object v2, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v2, v0, p2, p4}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;II)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested package name = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied. Package name = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], Permission = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    goto :goto_4

    :cond_6
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    :goto_4
    return v1
.end method

.method private native init()V
.end method

.method private native isExistDRK(I)I
.end method

.method private native readDrkUID(I)Ljava/lang/String;
.end method

.method private native releaseSession()V
.end method

.method private sendBigData(ILjava/lang/String;)I
    .locals 3

    const-string v0, "DEVROOT#Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBigData() start, type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/DeviceRootKeyService$BigData;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/DeviceRootKeyService$BigData;-><init>(Lcom/android/server/DeviceRootKeyService;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$BigData;->sendIntent()I

    move-result v1

    return v1
.end method

.method private native tlvAdd(I[B)I
.end method

.method private native tlvInit()I
.end method

.method private native updateCertificateIssuedList(Ljava/lang/String;)Z
.end method

.method private native verifyProvBlob([B)[B
.end method

.method private native verifyTestDrkCommand(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    const-string v4, "DEVROOT#Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateServiceKeySession for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v4

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v5

    const/4 v6, 0x4

    invoke-direct {p0, v4, v5, v1, v6}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->isDrkServiceReady()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    if-eq p2, v0, :cond_2

    if-eq p2, v6, :cond_2

    const-string v0, "DEVROOT#Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is invalid."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_2
    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->tlvInit()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "DEVROOT#Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to init Tlv. Ret : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getValidKeyList()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p3, v6}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getTlvValue(I)[B

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/DeviceRootKeyService;->tlvAdd(I[B)I

    move-result v7

    move v0, v7

    if-eqz v7, :cond_4

    const-string v1, "DEVROOT#Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add Tlv. Ret : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_4
    goto :goto_1

    :cond_5
    :try_start_0
    const-string v0, "DEVROOT#Service"

    const-string/jumbo v4, "generateServiceKey locked"

    invoke-direct {p0, v0, v4}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->getBigDataMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/DeviceRootKeyService;->generateServiceKey(Ljava/lang/String;IZ)[B

    move-result-object v4

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v4, "DEVROOT#Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to generate. Name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", keyType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    nop

    move-object v4, v5

    :goto_2
    move-object v0, v4

    new-instance v4, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Process : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , ServiceName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , Result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    const-string v7, "Success."

    goto :goto_4

    :cond_7
    const-string v7, "Failure."

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/DeviceRootKeyService;->updateCertificateIssuedList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "DEVROOT#Service"

    const-string v7, "Failed to update list."

    invoke-direct {p0, v6, v7}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    const-string/jumbo v6, "user"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, v1, v3}, Lcom/android/server/DeviceRootKeyService;->sendBigData(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    const-string v6, "DEVROOT#Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to sendBigData(), retVal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    return-object v0

    :cond_a
    :goto_5
    return-object v5
.end method

.method public doSelfTestProvServiceBlob(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 6

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DEVROOT#Service"

    const-string v2, "It is only supported on eng binary."

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v0

    nop

    :try_start_0
    const-string v2, "DEVROOT#Service"

    const-string/jumbo v3, "verifyProvBlob locked"

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService;->verifyProvBlob([B)[B

    move-result-object v3

    move-object v1, v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    const-string v3, "DEVROOT#Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to verify certificate. Ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    return-object v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    throw v2
.end method

.method public getDeviceInfo()[B
    .locals 5

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->isDrkServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "DEVROOT#Service"

    const-string/jumbo v2, "getDeviceInformation locked"

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->getDeviceInformation()[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get device information. Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getDeviceRootKeyCertificate(I)[B
    .locals 4

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->isDrkServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string v0, "DEVROOT#Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :try_start_0
    const-string v0, "DEVROOT#Service"

    const-string/jumbo v1, "getDrkCertificate locked"

    invoke-direct {p0, v0, v1}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->getDrkCertificate(I)[B

    move-result-object v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "DEVROOT#Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get certificate. Ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    nop

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->isDrkServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string v0, "DEVROOT#Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]  is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :try_start_0
    const-string v0, "DEVROOT#Service"

    const-string/jumbo v2, "getDeviceRootKeyUID locked"

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->readDrkUID(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read. Type = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], Err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public isDrkServiceReady()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService;->mIsDrkServiceReady:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService;->mIsDrkServiceReady:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService;->mIsDrkServiceReady:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService;->mIsDrkServiceReady:Z

    return v0
.end method

.method public isExistDeviceRootKey(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->isDrkServiceReady()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v3, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const-string v1, "DEVROOT#Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    const-string v1, "DEVROOT#Service"

    const-string/jumbo v2, "isExistDRK locked"

    invoke-direct {p0, v1, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->isExistDRK(I)I

    move-result v2

    move v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-nez v0, :cond_2

    return v3

    :cond_2
    const-string v1, "DEVROOT#Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] , Ret = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/DeviceRootKeyService;->SLOGE(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    :goto_0
    return v4
.end method

.method public isServiceReady()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    return v0
.end method

.method public releaseServiceKeySession()I
    .locals 4

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->isDrkServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DEVROOT#Service"

    const-string/jumbo v1, "releaseSession locked"

    invoke-direct {p0, v0, v1}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->releaseSession()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const/4 v0, -0x5

    return v0
.end method

.method public setDeviceRootKey([B)I
    .locals 2

    const-string v0, "DEVROOT#Service"

    const-string v1, "This function is deprecated."

    invoke-direct {p0, v0, v1}, Lcom/android/server/DeviceRootKeyService;->SLOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
