.class public Lcom/samsung/android/knox/deviceinfo/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field public static final ACTION_SIM_CARD_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SIM_CARD_CHANGED"

.field public static final EXTRA_SIM_CHANGE_INFO:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SIM_CHANGE_INFO"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

.field private mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DeviceInventory"

    sput-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    return-void
.end method

.method private externalSdCardAvailable()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getExternalSdCardDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    const-string/jumbo v1, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private getAvailableMemorySize(Landroid/os/StatFs;)J
    .locals 6

    const-wide/16 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    move-wide v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    :goto_0
    return-wide v0
.end method

.method private getExternalSdCardDirectory()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    aget-object v2, v1, v4

    sget-object v4, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subsystem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    return-object v2
.end method

.method private getInternalSdCardPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    if-nez v0, :cond_0

    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    return-object v0
.end method

.method private getTotalMemorySize(Landroid/os/StatFs;)J
    .locals 6

    const-wide/16 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    move-wide v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public dataUsageTimerActivation()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAvailableCapacityExternal()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getExternalSdCardDirectory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getAvailableMemorySize(Landroid/os/StatFs;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableCapacityExternal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v0
.end method

.method public getAvailableCapacityInternal()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getAvailableMemorySize(Landroid/os/StatFs;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableCapacityInternal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceOS(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceOSVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDroppedCallsCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getDroppedCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDroppedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLastSimChangeInfo()Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getLastSimChangeInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/IMiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with misc policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public getMissedCallsCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getMissedCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getMissedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSalesCode(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSerialNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuccessCallsCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getSuccessCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSuccessCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getTotalCapacityExternal()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getExternalSdCardDirectory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getTotalMemorySize(Landroid/os/StatFs;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTotalCapacityExternal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v0
.end method

.method public getTotalCapacityInternal()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getTotalMemorySize(Landroid/os/StatFs;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTotalCapacityInternal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public isDeviceLocked()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isDeviceLocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceRooted()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.isDeviceRooted"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isDeviceRooted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceSecure()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.isDeviceSecure"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isDeviceSecure(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetCallsCount()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.resetCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
