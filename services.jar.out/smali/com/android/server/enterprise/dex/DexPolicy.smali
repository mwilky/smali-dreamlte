.class public Lcom/android/server/enterprise/dex/DexPolicy;
.super Lcom/samsung/android/knox/dex/IDexPolicy$Stub;
.source "DexPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_DESK_MODE_ENTER:Ljava/lang/String; = "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

.field private static final ACTION_KNOX_DESKTOP_EXIT:Ljava/lang/String; = "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

.field private static final DEXPOLCY_ETHERNETONLY_NOTIFICATION_ID:I = 0x11cd

.field private static final DEXPOLICY_ETHERNETONLY_CHANNEL_ID:Ljava/lang/String; = "DEX_ETHERNET_ONLY"

.field private static final TAG:Ljava/lang/String; = "DexPolicyService"

.field private static appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private static isBlockerRegistered:Z

.field private static isBootCompleted:Z


# instance fields
.field private final blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mContext_temp:Lcom/samsung/android/knox/ContextInfo;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

.field private wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBootCompleted:Z

    sput-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/IDexPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dex/DexPolicy$1;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dex/DexPolicy$3;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "DexPolicyService"

    const-string v2, "SEC_PRODUCT_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP is true"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/enterprise/dex/DexPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/dex/DexPolicy$2;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/dex/DexPolicy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->enterDexModeSetPackageState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->exitDexModeSetPackageState()V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/enterprise/dex/DexPolicy;->isBootCompleted:Z

    return p0
.end method

.method private applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getRestrictionPolicy()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getWifiPolicy()V

    :cond_1
    const-string v0, "DexPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyEthernetOnly - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->storeCurrentPolicy(Lcom/samsung/android/knox/ContextInfo;)Z

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->storeNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)Z

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevCellDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevWifiTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevUsbTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevBtTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->restoreNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V

    :goto_0
    return-void
.end method

.method private compareSignatures([Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "DexPolicyService"

    const-string/jumbo v2, "signature is matched"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "DexPolicyService"

    const-string/jumbo v2, "signature is not matched!!!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_1
    const-string v1, "DexPolicyService"

    const-string/jumbo v2, "wrong signature info"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private convertToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "DexPolicyService"

    const-string v1, "convertToSignature, sign is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private enforceDexPermission()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enterDexModeSetPackageState()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "DexPolicyService"

    const-string/jumbo v2, "enterDexModeSetPackageState"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string v0, "adminUid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ADMIN"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()V

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "adminUid"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-direct {v1, v8, v13, v14, v15}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v13}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    const/4 v0, 0x4

    invoke-direct {v1, v8, v15, v14, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    nop

    move-object/from16 v0, v16

    goto :goto_2

    :cond_2
    move-object/from16 v16, v0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v12}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x8

    invoke-direct {v1, v8, v13, v14, v15}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    nop

    move-object/from16 v0, v16

    goto :goto_0

    :cond_4
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "DexPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enterDexModeSetPackageState : failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private exitDexModeSetPackageState()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "DexPolicyService"

    const-string/jumbo v2, "exitDexModeSetPackageState"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string v0, "adminUid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ADMIN"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, "DexPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exitDexModeSetPackageState : Admin list size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()V

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "adminUid"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v11

    const-string v12, "dexApplicationDisableList"

    const/4 v13, 0x0

    invoke-direct {v1, v8, v13, v12}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    const-string v12, "dexApplicationBlackList"

    invoke-direct {v1, v8, v13, v12}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    const-string v12, "dexApplicationWhiteList"

    invoke-direct {v1, v8, v13, v12}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-direct {v1, v8, v13, v14, v15}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v13}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    const/4 v0, 0x4

    invoke-direct {v1, v8, v15, v14, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    nop

    move-object/from16 v0, v16

    goto :goto_2

    :cond_2
    move-object/from16 v16, v0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v12}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x8

    invoke-direct {v1, v8, v13, v14, v15}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    goto :goto_3

    :cond_3
    const-string v0, "dexApplicationDisableList"

    invoke-direct {v1, v8, v9, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    const-string v0, "dexApplicationBlackList"

    invoke-direct {v1, v8, v10, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    const-string v0, "dexApplicationWhiteList"

    invoke-direct {v1, v8, v11, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    move-object/from16 v0, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "DexPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exitDexModeSetPackageState : failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getApplicationPolicy()V
    .locals 1

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    sput-object v0, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-void
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRestrictionPolicy()V
    .locals 1

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    return-void
.end method

.method private getWifiPolicy()V
    .locals 1

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    return-void
.end method

.method private isPrevBtTetheringEnabled()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevBtTethering"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPrevBtTetheringEnabled : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private isPrevCellDataEnabled()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevCellularData"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPrevCellDataEnabled : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private isPrevUsbTetheringEnabled()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevUsbTethering"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPrevUsbTetheringEnabled : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private isPrevWifiEnabled()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevWifi"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPrevWifiEnabled : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private isPrevWifiTetheringEnabled()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevWifiTethering"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPrevWifiTetheringEnabled : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private registerDexBlocker()V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "desktopmode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const-string v3, "DexPolicyService"

    const-string/jumbo v4, "registerDexBlocker was registered"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DexPolicyService"

    const-string/jumbo v4, "registerDexBlocker was failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private restoreNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "DEX_POLICY"

    const-string/jumbo v7, "prevDataStatus"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v2, v4

    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "DEX_POLICY"

    const-string/jumbo v7, "prevWifiStatus"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "DexPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreNetworkStatus() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_2
    nop

    :try_start_2
    const-string v7, "DexPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreNetworkStatus : failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_1
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void
.end method

.method private setApplicationPkgNameControlStateOnDex(Ljava/lang/String;IIZ)Z
    .locals 10

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "setApplicationPkgNameControlStateOnDex - write dexControlState"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, p2

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION"

    const-string/jumbo v5, "packageName"

    const-string v7, "controlStateOnDex"

    move v4, p2

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz p4, :cond_1

    or-int/2addr v2, p3

    goto :goto_0

    :cond_1
    not-int v3, p3

    and-int/2addr v2, v3

    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "controlStateOnDex"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION"

    const-string/jumbo v7, "packageName"

    move v6, p2

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    return v4
.end method

.method private setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z
    .locals 11

    const/4 v0, 0x0

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()V

    if-eqz p3, :cond_0

    const-string v1, "controlState"

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    const-string v1, "controlStateOnDex"

    goto :goto_0

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION"

    const-string/jumbo v4, "packageName"

    move v3, v7

    move-object v5, p2

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    and-int v3, v0, p4

    if-eq v3, p4, :cond_2

    move v1, v2

    nop

    :cond_2
    :goto_2
    move v8, v1

    goto :goto_3

    :cond_3
    and-int v3, v0, p4

    if-ne v3, p4, :cond_4

    move v1, v2

    nop

    :cond_4
    goto :goto_2

    :goto_3
    if-eqz v8, :cond_a

    const/4 v1, 0x2

    if-ne p4, v1, :cond_6

    if-eqz p3, :cond_5

    sget-object v1, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    xor-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    move v9, v1

    invoke-direct {p0, p2, v7, p4, p3}, Lcom/android/server/enterprise/dex/DexPolicy;->setApplicationPkgNameControlStateOnDex(Ljava/lang/String;IIZ)Z

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    xor-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x4

    if-ne p4, v1, :cond_8

    if-eqz p3, :cond_7

    sget-object v1, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v9, v1

    invoke-direct {p0, p2, v7, p4, p3}, Lcom/android/server/enterprise/dex/DexPolicy;->setApplicationPkgNameControlStateOnDex(Ljava/lang/String;IIZ)Z

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    :goto_4
    move v9, v1

    goto :goto_5

    :cond_8
    const/16 v1, 0x8

    if-ne p4, v1, :cond_a

    if-eqz p3, :cond_9

    sget-object v1, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v9, v1

    invoke-direct {p0, p2, v7, p4, p3}, Lcom/android/server/enterprise/dex/DexPolicy;->setApplicationPkgNameControlStateOnDex(Ljava/lang/String;IIZ)Z

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeAppPackageNameFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    :cond_a
    :goto_5
    if-nez p3, :cond_b

    invoke-direct {p0, p2, v7, p4, p3}, Lcom/android/server/enterprise/dex/DexPolicy;->setApplicationPkgNameControlStateOnDex(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    goto :goto_6

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setControlStateMask : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return v9
.end method

.method private setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-string v0, "DexPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEthernetOnlyApplied - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "ethernetOnlyApplied"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showEthernetOnlyNotification(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10402a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    const-string v2, "DexPolicyService"

    const-string v3, "Failed to get NotificationManager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x11cd

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string v7, "MDM_DEXPOLICY"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v6, 0x108066f

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string v6, "Dex Ethernet only mode"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v5, "DexPolicyService"

    const-string/jumbo v6, "showEthernetOnlyNotification was failed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private storeCurrentPolicy(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v5, v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string v9, "cellularDataEnabled"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v8, "WIFI"

    const-string v9, "allowWifi"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v1, v6

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "usbTetheringEnabled"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v2, v6

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "wifiTetheringEnabled"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string v9, "bluetoothTetheringEnabled"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    const-string v6, "DexPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "store current status - cell - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  wifi - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  usbTether - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  Wifitether - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  BTtether - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "DexPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "storeCurrentPolicy() failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v8, "DEX_POLICY"

    const-string/jumbo v9, "prevCellularData"

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v9, "DEX_POLICY"

    const-string/jumbo v10, "prevWifi"

    invoke-virtual {v7, v8, v9, v10, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v10, "DEX_POLICY"

    const-string/jumbo v11, "prevUsbTethering"

    invoke-virtual {v8, v9, v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    iget-object v9, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v11, "DEX_POLICY"

    const-string/jumbo v12, "prevWifiTethering"

    invoke-virtual {v9, v10, v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    iget-object v10, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v12, "DEX_POLICY"

    const-string/jumbo v13, "prevBtTethering"

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method private storeNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "DEX_POLICY"

    const-string/jumbo v7, "prevDataStatus"

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "DEX_POLICY"

    const-string/jumbo v8, "prevWifiStatus"

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method private unRegisterDexBlocker()V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "desktopmode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const-string v3, "DexPolicyService"

    const-string/jumbo v4, "registerDexBlocker was unregistered"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DexPolicyService"

    const-string/jumbo v4, "unRegisterDexBlocker was failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z
    .locals 9

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DEX_POLICY"

    invoke-virtual {v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "DEX_POLICY"

    invoke-virtual {v6, v7, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    move v1, v6

    const-string v6, "DexPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writePackageList("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") : update : ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "DEX_POLICY"

    invoke-virtual {v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    move v1, v6

    const-string v6, "DexPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writePackageList("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") : insert : ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "DexPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writePackageList : failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method


# virtual methods
.method public addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 8

    const-string v0, "DexPolicyService"

    const-string v1, "addPackageToDisableList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()V

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DexPolicyService"

    const-string v4, "addPackageToDisableList already blocked package"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/dex/DexPolicy;->appPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_1

    const-string v3, "DexPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackageToDisableList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    :cond_2
    const-string v4, "dexApplicationDisableList"

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    nop

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    return v3

    :cond_3
    return v3

    :catch_0
    move-exception v4

    const-string v5, "DexPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackageToDisableList : failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public addPackageToInstallBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 10

    const-string v0, "DexPolicyService"

    const-string v1, "addPackageToInstallBlackList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    if-nez v7, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v5, "DexPolicyService"

    const-string v7, "addPackageToInstallBlackList already blocked package"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_0
    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "DexPolicyService"

    const-string v7, "addPackageToInstallBlackList already blocked package"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    invoke-direct {p0, p1, v0, v5, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    :cond_3
    const-string v6, "dexApplicationBlackList"

    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    nop

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    return v5

    :cond_4
    return v5

    :catch_0
    move-exception v6

    const-string v7, "DexPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallBlackList : failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method public addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 10

    const-string v0, "DexPolicyService"

    const-string v1, "addPackageToInstallWhiteList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v4

    const-string v5, "DexPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackageToInstallWhiteList dexPackages size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    if-nez v7, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v5, "DexPolicyService"

    const-string v7, "addPackageToInstallWhiteList already blocked package"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_0
    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "DexPolicyService"

    const-string v7, "addPackageToInstallWhiteList already blocked package"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    invoke-direct {p0, p1, v0, v5, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z

    :cond_3
    const-string v6, "dexApplicationWhiteList"

    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    nop

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    return v5

    :cond_4
    return v5

    :catch_0
    move-exception v6

    const-string v7, "DexPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallWhiteList : failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method public allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "screenTimeoutChangeAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public applicationStateDexChecker(Ljava/lang/String;IIZ)Z
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p3

    const-string v0, "DexPolicyService"

    const-string/jumbo v3, "in applicationStateDexChecker"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v0, :cond_c

    :cond_0
    const/4 v6, 0x0

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v14, p2

    invoke-direct {v7, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    nop

    :goto_0
    :try_start_0
    iget-object v8, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION"

    const-string/jumbo v11, "packageName"

    const-string v13, "controlState"

    move v10, v14

    move-object/from16 v12, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v8, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION"

    const-string/jumbo v11, "packageName"

    const-string v13, "controlStateOnDex"

    move v10, v14

    move-object/from16 v12, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v8, -0x1

    if-ne v0, v8, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-ne v4, v8, :cond_5

    const/4 v4, 0x0

    :cond_5
    const/4 v8, 0x0

    move v9, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v9, v10, :cond_8

    :try_start_1
    const-string v10, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v5, :cond_6

    :try_start_2
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v10, v11

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v11}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v11

    :goto_2
    move-object/from16 v13, p1

    :try_start_4
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_5

    :cond_8
    move-object/from16 v13, p1

    :goto_3
    move v5, v8

    if-eqz v5, :cond_b

    if-eqz p4, :cond_9

    not-int v8, v2

    and-int/2addr v4, v8

    goto :goto_4

    :cond_9
    or-int/2addr v4, v2

    :goto_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-object v12, v8

    const-string v8, "controlStateOnDex"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION"

    const-string/jumbo v11, "packageName"

    move v10, v14

    move-object v15, v12

    move-object v12, v13

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v8

    const-string v9, "DexPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applicationStateDexChecker write Dexlist result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    if-nez p4, :cond_a

    return v9

    :cond_a
    and-int v10, v0, v2

    if-ne v10, v2, :cond_b

    if-eqz p4, :cond_b

    const-string v10, "DexPolicyService"

    const-string v11, "applicationStateDexChecker return true"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return v9

    :cond_b
    goto :goto_6

    :catch_1
    move-exception v0

    :goto_5
    const-string v4, "DexPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applicationStateDexChecker : failed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_c
    move/from16 v14, p2

    :goto_6
    const-string v0, "DexPolicyService"

    const-string v4, "applicationStateDexChecker return false"

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public checkDexList(Ljava/lang/String;ILandroid/content/pm/PackageParser$Package;I)Z
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p4

    const-string v0, "DexPolicyService"

    const-string/jumbo v3, "in check Dex list"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adminUid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ADMIN"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string v10, "adminUid"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object v15, v11

    iget-object v11, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "APPLICATION"

    const-string/jumbo v14, "packageName"

    const-string v16, "controlState"

    move v13, v10

    move-object/from16 v17, v15

    move-object/from16 v15, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    iget-object v11, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "APPLICATION"

    const-string/jumbo v14, "packageName"

    const-string v16, "controlStateOnDex"

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    and-int v12, v18, v2

    and-int/2addr v11, v2

    if-eq v12, v11, :cond_0

    const-string v8, "DexPolicyService"

    const-string v13, "This package is already added from Application Policy"

    invoke-static {v8, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    const/16 v13, 0x8

    if-ne v2, v13, :cond_1

    move-object/from16 v13, v17

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object/from16 v13, v17

    const/4 v14, 0x4

    if-ne v2, v14, :cond_5

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const-string v6, "DexPolicyService"

    const-string/jumbo v8, "find All signatur case"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_3
    :goto_3
    const/4 v6, 0x1

    move/from16 v2, p4

    goto :goto_2

    :cond_4
    move-object/from16 v2, p1

    move/from16 v2, p4

    goto/16 :goto_0

    :cond_5
    move-object/from16 v2, p1

    const-string v8, "DexPolicyService"

    const-string/jumbo v14, "input wrong State mask"

    invoke-static {v8, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_6
    move-object/from16 v2, p1

    move v6, v0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "DexPolicyService"

    const-string v7, "Can not find package name on dex list."

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :cond_7
    const/4 v7, 0x1

    if-nez v6, :cond_8

    const-string v0, "DexPolicyService"

    const-string v8, "Can not find signature."

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_8
    move-object/from16 v7, p3

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/samsung/android/knox/AppIdentity;

    const/4 v0, 0x0

    move-object v11, v0

    :try_start_0
    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->convertToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v12, "DexPolicyService"

    const-string v13, "convert to signature failed. added wrong signature"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_5
    invoke-direct {v1, v8, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->compareSignatures([Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v9, "DexPolicyService"

    const-string/jumbo v11, "find matched package name & package signature."

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :cond_9
    const/4 v11, 0x1

    goto :goto_4

    :cond_a
    const-string v0, "DexPolicyService"

    const-string v9, "Check dex list is fin."

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "ethernetOnlyEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_1
    :goto_0
    return v0
.end method

.method public enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "useDexStationMacAddress"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAdminUidForEthernetOnly()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "ethernetOnlyEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "DexPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdminUidForEthernetOnly - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
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

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "getPackagesFromDisableList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DEX_POLICY"

    const-string v5, "dexApplicationDisableList"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DexPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromDisableList : failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "getPackagesFromInstallBlackList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DEX_POLICY"

    const-string v5, "dexApplicationBlackList"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DexPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromInstallBlackList : failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "getPackagesFromInstallWhiteList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DEX_POLICY"

    const-string v5, "dexApplicationWhiteList"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DexPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromInstallWhiteList : failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public getVirtualMacAddress()Ljava/lang/String;
    .locals 10

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceDexPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string v3, ""

    :try_start_0
    const-string/jumbo v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    const-string/jumbo v6, "eth0"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const-string v7, "DexPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVirtualMacAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "DexPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getVirtualMacAddress : failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v3

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isDexActivated()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDexDisabled()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string v3, "dexDisabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDexDisabled : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method public isEthernetOnlyApplied()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "ethernetOnlyApplied"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEthernetOnlyApplied : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v1, "DexPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEthernetOnlyApplied - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isEthernetOnlyEnforced()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "ethernetOnlyEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEthernetOnlyEnforced : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method public isScreenTimeoutChangeAllowed()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "screenTimeoutChangeAllowed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isScreenTimeoutChangeAllowed : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method public isVirtualMacAddressEnforced()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "useDexStationMacAddress"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DexPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVirtualMacAddressEnforced : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
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
    .locals 2

    sget-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    :cond_1
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 8

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "removePackageFromDisableList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    const-string v3, "DexPolicyService"

    const-string/jumbo v5, "removePackageFromDisableList not find blocked package name"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v5, "dexApplicationDisableList"

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    move v1, v5

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, p2, v6, v4}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    if-eqz v1, :cond_2

    return v6

    :cond_2
    return v3

    :catch_0
    move-exception v4

    const-string v5, "DexPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePackageFromDisableList : failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public removePackageFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 13

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "removePackageFromInstallBlackList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, p2

    const/4 v7, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    move-object v6, v9

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v6, v9

    const/4 v5, 0x0

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    const/4 v8, 0x4

    if-eqz v5, :cond_3

    const-string v9, "DexPolicyService"

    const-string/jumbo v10, "removePackageFromInstallBlackList not find blocked package name"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_3
    const/4 v9, 0x1

    :try_start_0
    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v10, "dexApplicationBlackList"

    invoke-direct {p0, p1, v4, v10}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v10

    move v3, v10

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    if-ne v7, v9, :cond_4

    const-string v10, "DexPolicyService"

    const-string/jumbo v12, "removePackageFromInstallBlackList dex enable && package cnt = 1 "

    invoke-static {v10, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v11, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    nop

    if-eqz v3, :cond_5

    return v11

    :cond_5
    return v9

    :catch_0
    move-exception v8

    const-string v10, "DexPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removePackageFromInstallBlackList : failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    return v9
.end method

.method public removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 13

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "removePackageFromInstallWhiteList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, p2

    const/4 v7, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    move-object v6, v9

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v6, v9

    const/4 v5, 0x0

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    const-string v8, "DexPolicyService"

    const-string/jumbo v9, "removePackageFromBlackList not find blocked package name"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x4

    return v8

    :cond_3
    const/4 v8, 0x1

    :try_start_0
    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v9, "dexApplicationWhiteList"

    invoke-direct {p0, p1, v4, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    move v3, v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    if-ne v7, v8, :cond_4

    const-string v9, "DexPolicyService"

    const-string/jumbo v11, "removePackageFromInstallWhiteList dex enable && package cnt = 1 "

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-direct {p0, p1, v0, v10, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->setControlStateMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    nop

    if-eqz v3, :cond_5

    return v10

    :cond_5
    return v8

    :catch_0
    move-exception v9

    const-string v10, "DexPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removePackageFromInstallWhiteList : failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    return v8
.end method

.method public setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string v3, "dexDisabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    :cond_0
    sget-boolean v1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    :cond_1
    return v0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
