.class public final Lcom/samsung/android/knox/internal/EDMNativeHelper;
.super Ljava/lang/Object;
.source "EDMNativeHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EDMNativeHelper"

    sput-object v0, Lcom/samsung/android/knox/internal/EDMNativeHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAVRCPProfileEnabled()Z
    .locals 3

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    :try_start_0
    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static isAudioRecordAllowed(I)Z
    .locals 3

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static isAuditLogEnabled()Z
    .locals 2

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/log/IAuditLog;->isAuditServiceRunning()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isBTOutgoingCallEnabled()Z
    .locals 2

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isOutgoingCallsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isCameraEnabled(I)Z
    .locals 6

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    nop

    :cond_0
    :goto_1
    const/4 v2, 0x1

    const-string v3, "device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    xor-int/2addr v1, v4

    move v2, v1

    :goto_2
    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_3
    return v2
.end method

.method public static isFaceRecognitionAllowedEvenCameraBlocked(I)Z
    .locals 2

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isIrisCameraEnabled(I)Z
    .locals 3

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static isMicrophoneEnabled(I)Z
    .locals 3

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static isPackageInAvrWhitelist(I)Z
    .locals 3

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    nop

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isScreenCaptureEnabled()Z
    .locals 3

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static isVideoRecordAllowed(I)Z
    .locals 3

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static nativeLogger(IIIILjava/lang/String;[B)V
    .locals 10

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    const/4 v6, 0x1

    aget-object v9, v1, v2

    move v4, p0

    move v5, p1

    move v7, p3

    move-object v8, p4

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/internal/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported conversion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static nativeLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static nativeLoggerPrivileged(IIIILjava/lang/String;[B)V
    .locals 13

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p5

    :try_start_1
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    move v9, v6

    goto :goto_1

    :cond_0
    move v9, v3

    :goto_1
    aget-object v12, v1, v4

    move v7, p0

    move v8, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, p5

    :goto_2
    sget-object v1, Lcom/samsung/android/knox/internal/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unsupported conversion"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public static nativeLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendIntent(I)V
    .locals 2

    const-string v0, "enterprise_policy_new"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->sendIntent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static native setAuditEnabled(Z)V
.end method

.method public static native setIptablesLogsEnabled(Z)V
.end method

.method public static native setKernelLogsEnabled(Z)V
.end method

.method public static updateRemoteScreenDimensionsAndCallerUid(III)V
    .locals 2

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->updateRemoteScreenDimensionsAndCallerUid(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
