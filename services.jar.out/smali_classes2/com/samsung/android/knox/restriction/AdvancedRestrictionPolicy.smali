.class public Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
.super Ljava/lang/Object;
.source "AdvancedRestrictionPolicy.java"


# static fields
.field public static final CCMODE_STATE_DISABLED:I = 0x1

.field public static final CCMODE_STATE_ENABLED:I = 0x4

.field public static final CCMODE_STATE_ENFORCING:I = 0x3

.field public static final CCMODE_STATE_NONE:I = 0x0

.field public static final CCMODE_STATE_NOT_SUPPORTED:I = -0x1

.field public static final CCMODE_STATE_READY:I = 0x2

.field public static final CONSTRAINED_STATE_DISABLED:I = 0x0

.field public static final CONSTRAINED_STATE_ENABLED_AND_DEVICE_CONSTRAINED:I = 0x2

.field public static final CONSTRAINED_STATE_ENABLED_BUT_DEVICE_NOT_CONSTRAINED:I = 0x1

.field public static final CONSTRAINED_STATE_RESTRICT_BLUETOOTH:I = 0x8

.field public static final CONSTRAINED_STATE_RESTRICT_CAMERA:I = 0x1

.field public static final CONSTRAINED_STATE_RESTRICT_EXTERNAL_SDCARD:I = 0x2

.field public static final CONSTRAINED_STATE_RESTRICT_MTP:I = 0x4

.field public static final CONSTRAINED_STATE_RESTRICT_SCREEN_CAPTURE:I = 0x40

.field public static final CONSTRAINED_STATE_RESTRICT_TETHERING:I = 0x10

.field public static final CONSTRAINED_STATE_RESTRICT_USB_DEBUGGING:I = 0x20

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

.field private mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AdvancedRestrictionPolicy"

    sput-object v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-void
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    if-nez v0, :cond_0

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v0
.end method


# virtual methods
.method public allowBLE(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowBLE"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBluetoothPolicy()Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->allowBLE(Z)Z

    move-result v0

    return v0
.end method

.method public allowFaceRecognitionEvenCameraBlocked(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowFirmwareAutoUpdate(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowFirmwareAutoUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowLocalContactStorage(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowRemoteControl(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowRemoteControl"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Remote Control Service is not yet ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at AdvancedRestrictionPolicy API allowRemoteControl "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public allowWifiScanning(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.allowWifiScanning"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->allowWifiScanning(Z)Z

    move-result v0

    return v0
.end method

.method public disableConstrainedState()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.disableConstrainedState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->disableConstrainedState()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public enableConstrainedState(Ljava/lang/String;I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->enableConstrainedState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enableConstrainedState(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.enableConstrainedState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enableConstrainedState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public enableConstrainedState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.enableConstrainedState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enableConstrainedState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception occured! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public enableODETrustedBootVerification(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.enableODETrustedBootVerification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCCModeState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getConstrainedState()I
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getConstrainedState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isBLEAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.isBLEAllowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBluetoothPolicy()Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->isBLEAllowed()Z

    move-result v0

    return v0
.end method

.method public isFaceRecognitionAllowedEvenCameraBlocked()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFirmwareAutoUpdateAllowed(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxDelegationEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLocalContactStorageAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isODETrustedBootVerificationEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteControlAllowed()Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Remote Control Service is not yet ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at AdvancedRestrictionPolicy API isRemoteControlAllowed "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isWifiScanningAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.isWifiScanningAllowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isWifiScanningAllowed()Z

    move-result v0

    return v0
.end method

.method public setCCMode(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.setCCMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setKnoxDelegationEnabled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AdvancedRestrictionPolicy.setKnoxDelegationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
