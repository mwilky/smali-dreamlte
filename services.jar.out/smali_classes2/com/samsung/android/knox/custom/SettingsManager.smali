.class public Lcom/samsung/android/knox/custom/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsManager"

.field private static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;


# instance fields
.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/SettingsManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/custom/SettingsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/custom/SettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/SettingsManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public getAirGestureOptionState(I)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getBackupRestoreState(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBackupRestoreState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothVisibilityTimeout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChargingLEDState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargingLEDState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEthernetConfigurationType()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEthernetState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLTESettingState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMotionControlState(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMotionControlState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageVerifierState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPackageVerifierState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPowerSavingMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerSavingMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenWakeupOnPowerState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSettingsHiddenState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiConnectionMonitorState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiConnectionMonitorState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiFrequencyBand()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiFrequencyBand()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAdbState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setAdbState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAdbState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAirGestureOptionState(IZ)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setAirGestureOptionState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAirGestureOptionState(IZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setBackupRestoreState(IZ)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setBackupRestoreState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBackupRestoreState(IZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setBluetoothState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setBluetoothState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBluetoothState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setBluetoothVisibilityTimeout(I)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setBrightness(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setBrightness"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_8:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrightness(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setChargingLEDState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setChargingLEDState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargingLEDState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setDeveloperOptionsHidden()I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setDeveloperOptionsHidden"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeveloperOptionsHidden()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setEthernetConfiguration"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setEthernetState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setEthernetState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setEthernetState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setFlightModeState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setFlightModeState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFlightModeState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setGpsState(Z)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setInputMethod"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethod(Ljava/lang/String;Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setLTESettingState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setLTESettingState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->laterSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLTESettingState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1

    :cond_2
    :goto_0
    const/4 v1, -0x6

    return v1
.end method

.method public setMobileDataRoamingState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setMobileDataRoamingState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataRoamingState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setMobileDataState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setMobileDataState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setMotionControlState(IZ)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setMotionControlState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMotionControlState(IZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setPackageVerifierState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setPackageVerifierState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPackageVerifierState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setPowerSavingMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setPowerSavingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerSavingMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setScreenWakeupOnPowerState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setScreenWakeupOnPowerState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenWakeupOnPowerState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setSettingsHiddenState(ZI)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setSettingsHiddenState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsHiddenState(ZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setStayAwakeState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setStayAwakeState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStayAwakeState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setSystemLocale"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setUnknownSourcesState(Z)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setUsbDeviceDefaultPackage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiConnectionMonitorState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setWifiConnectionMonitorState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiConnectionMonitorState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiFrequencyBand(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setWifiFrequencyBand"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiFrequencyBand(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiNetworkNotificationState(Z)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setWifiState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiState(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SettingsManager.setWifiState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SettingsManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method
