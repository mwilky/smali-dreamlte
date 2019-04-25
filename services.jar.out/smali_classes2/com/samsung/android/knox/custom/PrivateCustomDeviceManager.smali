.class public Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
.super Ljava/lang/Object;
.source "PrivateCustomDeviceManager.java"


# static fields
.field private static final GEAR_PACKAGE_FILTER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PrivateCustomDeviceManager"

.field private static gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

.field private static mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    const-string v0, "com.samsung.android.hostmanager"

    const-string v1, "com.samsung.android.gear1plugin"

    const-string v2, "com.samsung.android.wms"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public getGearNotificationStateInternal(ILjava/lang/String;)Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrivateCustomDeviceManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    nop

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public getLoadingLogoPath()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PrivateCustomDeviceManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsbConnectionTypeInternal()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PrivateCustomDeviceManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoOpenLastAppAllowed()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PrivateCustomDeviceManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PrivateCustomDeviceManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setKnoxCustomQSTileList(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKnoxCustomQSTileList(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PrivateCustomDeviceManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stayInForeground(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stayInDexForegroundMode(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PrivateCustomDeviceManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
