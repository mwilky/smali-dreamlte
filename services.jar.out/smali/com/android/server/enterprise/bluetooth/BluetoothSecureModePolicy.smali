.class public Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
.super Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;
.source "BluetoothSecureModePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BTSecureModePolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field private mSecureManager:Landroid/bluetooth/BluetoothSecureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    return-void
.end method

.method private enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_BLUETOOTH_SECUREMODE"

    const-string v3, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInstance()Landroid/bluetooth/BluetoothSecureManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0
.end method

.method private shouldAllowDisableSecureMode(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v5

    const-string v6, "BluetoothSecureModeTable"

    const-string v7, "BluetoothSecureModeEnabled"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private shouldAllowEnableSecureMode()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v5

    const-string v6, "BluetoothSecureModeTable"

    const-string v7, "BluetoothSecureModeEnabled"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private validateBluetoothWhiteListConfig(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget-object v3, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    if-ltz v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    array-length v3, v3

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v3, "BTSecureModePolicyService"

    const-string v4, "Bluetooth securemode whitelist values are invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    :goto_2
    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Bluetooth securemode whitelist is null or empty"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    nop

    :goto_0
    move v1, v2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget-object v5, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    iget v6, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    iget-object v7, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v8, v5, v6, v7}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v8

    move v0, v8

    if-nez v0, :cond_1

    const-string v8, "BTSecureModePolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addBluetoothDevicesToWhiteList failed: name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "cod: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BTSecureModePolicyService"

    const-string v5, "Failed talking to BT Secure Manager "

    invoke-static {v2, v5, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_2
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    return v0
.end method

.method public disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->shouldAllowDisableSecureMode(I)Z

    move-result v6

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BluetoothSecureModeTable"

    const-string v9, "BluetoothSecureModeEnabled"

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "scan_mode"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "pairing_mode"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "hfp_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "a2dp_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "hid_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "hdp_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "pan_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "opp_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "pbap_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "gatt_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "map_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "ftp_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v8, "sap_enable"

    invoke-virtual {v7, v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v10}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v10}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v8

    move-object v7, v8

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v8, v10}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v7

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    const-string v8, "BTSecureModePolicyService"

    const-string v9, "Failed talking to BT Secure Manager "

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "BluetoothSecureModeTable"

    const-string v10, "BluetoothSecureModeEnabled"

    const/4 v11, 0x1

    invoke-virtual {v8, v1, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v8

    :try_start_3
    const-string v9, "BTSecureModePolicyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_1
    :goto_2
    const-string v7, "BTSecureModePolicyService"

    const-string/jumbo v8, "disableSecureMode BT shutdown"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump SecurityPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v1, "BluetoothSecureModeTable"

    const-string v2, "BluetoothSecureModeEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public enableDeviceWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "BTSecureModePolicyService"

    const-string v5, "Failed talking to BT Secure Manager "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    return v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public enableSecureMode(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget v6, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->shouldAllowEnableSecureMode()Z

    move-result v11

    const-string v0, "BTSecureModePolicyService"

    const-string/jumbo v12, "enableSecureMode"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz v11, :cond_10

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_0
    move v0, v12

    :goto_0
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v0, v13, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget-object v13, v13, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget v14, v14, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget-object v15, v15, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v12, v13, v14, v15}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_2
    if-eqz v2, :cond_f

    const-string v0, "BTSecureModePolicyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "configObj.whitelistEnable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    const/4 v12, 0x1

    if-ne v0, v12, :cond_3

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0, v12}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    :cond_3
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "BluetoothSecureModeTable"

    const-string v14, "BluetoothSecureModeEnabled"

    invoke-virtual {v0, v6, v13, v14, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "scan_mode"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "pairing_mode"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "hfp_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    if-eqz v14, :cond_4

    move v14, v12

    goto :goto_1

    :cond_4
    nop

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "a2dp_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    if-eqz v14, :cond_5

    move v14, v12

    goto :goto_2

    :cond_5
    nop

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "hid_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    if-eqz v14, :cond_6

    move v14, v12

    goto :goto_3

    :cond_6
    nop

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "hdp_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hdpEnable:Z

    if-eqz v14, :cond_7

    move v14, v12

    goto :goto_4

    :cond_7
    nop

    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "pan_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    if-eqz v14, :cond_8

    move v14, v12

    goto :goto_5

    :cond_8
    nop

    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "opp_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    if-eqz v14, :cond_9

    move v14, v12

    goto :goto_6

    :cond_9
    nop

    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "pbap_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    if-eqz v14, :cond_a

    move v14, v12

    goto :goto_7

    :cond_a
    nop

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "gatt_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->gattEnable:Z

    if-eqz v14, :cond_b

    move v14, v12

    goto :goto_8

    :cond_b
    nop

    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "map_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    if-eqz v14, :cond_c

    move v14, v12

    goto :goto_9

    :cond_c
    nop

    const/4 v14, 0x0

    :goto_9
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "ftp_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    if-eqz v14, :cond_d

    move v14, v12

    goto :goto_a

    :cond_d
    nop

    const/4 v14, 0x0

    :goto_a
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v13, "sap_enable"

    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    if-eqz v14, :cond_e

    move v14, v12

    goto :goto_b

    :cond_e
    nop

    const/4 v14, 0x0

    :goto_b
    invoke-virtual {v0, v13, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0, v12}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    goto :goto_e

    :goto_c
    move-object v12, v0

    :try_start_2
    const-string v0, "BTSecureModePolicyService"

    const-string v13, "Failed talking to BT Secure Manager "

    invoke-static {v0, v13, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "BluetoothSecureModeTable"

    const-string v14, "BluetoothSecureModeEnabled"

    const/4 v15, 0x0

    invoke-virtual {v0, v6, v13, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_e

    :catch_1
    move-exception v0

    :try_start_4
    const-string v13, "BTSecureModePolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_e

    :goto_d
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f
    :goto_e
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :cond_10
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    return v4
.end method

.method public getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListFirstIndex()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListCod(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    invoke-direct {v6, v3, v4, v5}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListNextIndex(I)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BTSecureModePolicyService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureModeConfiguration(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;

    invoke-direct {v0}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_e

    nop

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v2, "scan_mode"

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pairing_mode"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "hfp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v4, "a2dp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "hid_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "hdp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hdpEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pan_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "opp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pbap_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "gatt_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->gattEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "map_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "ftp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "sap_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_c

    move v1, v3

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_d

    move v2, v3

    nop

    :cond_d
    iput-boolean v2, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "BTSecureModePolicyService"

    const-string v3, "Failed talking to BT Secure Manager "

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public isDeviceWhiteListEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z

    :cond_0
    return-void
.end method

.method public removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    nop

    :goto_0
    move v1, v2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget-object v5, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    iget v6, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v5, v6}, Landroid/bluetooth/BluetoothSecureManager;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "BTSecureModePolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteList failed: name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cod: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BTSecureModePolicyService"

    const-string v5, "Failed talking to BT Secure Manager"

    invoke-static {v2, v5, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_2
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    return v0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
