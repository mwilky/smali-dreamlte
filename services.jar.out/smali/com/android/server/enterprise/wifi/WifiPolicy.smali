.class public Lcom/android/server/enterprise/wifi/WifiPolicy;
.super Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;
.source "WifiPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;,
        Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;,
        Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field private static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field private static final DEFAULT_IP_ADDRESS:Ljava/lang/String; = "192.168.1.100"

.field private static final EAP:Ljava/lang/String; = "eap"

.field private static final ENGINE:Ljava/lang/String; = "engine"

.field private static final ENGINE_ID:Ljava/lang/String; = "engine_id"

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field private static final EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field private static final HC:Ljava/lang/String; = "a-zA-Z0-9\\_"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final KEY_ID:Ljava/lang/String; = "key_id"

.field private static final MAX_EAP_ID_LENGTH:I = 0xc8

.field private static final MAX_EAP_PW_LENGTH:I = 0xc8

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PASSWORD_LENGTH:I = 0x40

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PHASE1:Ljava/lang/String; = "phase1"

.field private static final PHASE2:Ljava/lang/String; = "phase2"

.field private static final PREF_KEYSTORE:Ljava/lang/String; = "keystore://"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field private static final UPDATE_EDM_CONFIGURED_NETWORKS:I = 0x0

.field private static final UPDATE_WPS_CONFIGURED_NETWORKS:I = 0x1

.field private static isAPSettingFromAdmin:Z

.field private static isBootCompleted:Z

.field private static final mSecurityLevel:[Ljava/lang/String;

.field private static final sAcceptableSecurityLevels:[Ljava/lang/String;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field mContext:Landroid/content/Context;

.field private mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsCurrentlyInContainerLauncher:Z

.field private mIsShouldBlockWifiSSID:Z

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkSsid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiSSIDContainerReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;

.field private mWifiStateHandler:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    sput-boolean v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    const-string v1, "Open"

    const-string v2, "WEP"

    const-string v3, "WPA/WPA2/FT PSK"

    const-string v4, "802.1x EAP-LEAP"

    const-string v5, "802.1x EAP-FAST"

    const-string v6, "802.1x EAP-PEAP"

    const-string v7, "802.1x EAP-TTLS"

    const-string v8, "802.1x EAP-TLS"

    const-string v9, "FT-PSK"

    const-string v10, "802.1x EAP-PEAP-FT"

    const-string v11, "802.1x EAP-PEAP-CCKM"

    const-string v12, "802.1x EAP-TTLS-FT"

    const-string v13, "802.1x EAP-TTLS-CCKM"

    const-string v14, "802.1x EAP-TLS-FT"

    const-string v15, "802.1x EAP-TLS-CCKM"

    const-string v16, "802.1x EAP-LEAP-FT"

    const-string v17, "802.1x EAP-LEAP-CCKM"

    const-string v18, "802.1x EAP-FAST-FT"

    const-string v19, "802.1x EAP-FAST-CCKM"

    const-string v20, "802.1x EAP-PWD"

    const-string v21, "802.1x EAP-PWD-FT"

    const-string v22, "802.1x EAP-PWD-CCKM"

    const-string v23, "802.1x EAP-SIM"

    const-string v24, "802.1x EAP-SIM-FT"

    const-string v25, "802.1x EAP-SIM-CCKM"

    const-string v26, "802.1x EAP-AKA"

    const-string v27, "802.1x EAP-AKA-FT"

    const-string v28, "802.1x EAP-AKA-CCKM"

    const-string v29, "802.1x EAP-AKA\'"

    const-string v30, "802.1x EAP-AKA\'-FT"

    const-string v31, "802.1x EAP-AKA\'-CCKM"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const-string v1, "NONE"

    const-string v2, "WEP"

    const-string v3, "PSK"

    const-string v4, "EAP-LEAP"

    const-string v5, "EAP-FAST"

    const-string v6, "EAP-PEAP"

    const-string v7, "EAP-TTLS"

    const-string v8, "EAP-TLS"

    const-string v9, "FT-PSK"

    const-string v10, "EAP-PEAP-FT"

    const-string v11, "EAP-PEAP-CCKM"

    const-string v12, "EAP-TTLS-FT"

    const-string v13, "EAP-TTLS-CCKM"

    const-string v14, "EAP-TLS-FT"

    const-string v15, "EAP-TLS-CCKM"

    const-string v16, "EAP-LEAP-FT"

    const-string v17, "EAP-LEAP-CCKM"

    const-string v18, "EAP-FAST-FT"

    const-string v19, "EAP-FAST-CCKM"

    const-string v20, "EAP-PWD"

    const-string v21, "EAP-PWD-FT"

    const-string v22, "EAP-PWD-CCKM"

    const-string v23, "EAP-SIM"

    const-string v24, "EAP-SIM-FT"

    const-string v25, "EAP-SIM-CCKM"

    const-string v26, "EAP-AKA"

    const-string v27, "EAP-AKA-FT"

    const-string v28, "EAP-AKA-CCKM"

    const-string v29, "EAP-AKA\'"

    const-string v30, "EAP-AKA\'-FT"

    const-string v31, "EAP-AKA\'-CCKM"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiSSIDContainerReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsCurrentlyInContainerLauncher:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsShouldBlockWifiSSID:Z

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v0, "dex_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dex/DexPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiPolicyHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiStateHandler:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsCurrentlyInContainerLauncher:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/wifi/WifiPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsCurrentlyInContainerLauncher:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiStateHandler:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    :cond_0
    return-void
.end method

.method private alignConfiguredNetworks()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1

    :cond_0
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enableNetwork(Ljava/lang/String;)Z

    :goto_1
    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .locals 2

    sget-boolean v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.ENABLE_NETWORK_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.NETID_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.ENABLE_OTHERS_INTERNAL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private checkSecurityLevel(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 6

    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "WifiPolicyService"

    const-string v3, "Profile not set, security is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiProfile - sec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v2, "PSK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "WifiPolicyService"

    const-string v3, "PSK not set"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v2, "WEP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-lt v2, v3, :cond_7

    iget v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v4, 0x4

    if-le v2, v4, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey1 not set but index is set to 1"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    iget v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    iget-object v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey2 not set but index is set to 2"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    iget v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_6

    iget-object v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey3 not set but index is set to 3"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    iget v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne v2, v4, :cond_8

    iget-object v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey4 not set but index is set to 4"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    :goto_0
    const-string v2, "WifiPolicyService"

    const-string v3, "WebKeyId invalid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    return v3
.end method

.method private clearAuthConfigFromDb(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "networkSSID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WifiProxyAuthTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method private computeprefixLength(Ljava/net/InetAddress;)I
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    aget-byte v5, v1, v0

    move v6, v4

    move v4, v3

    :goto_1
    const/16 v7, 0x8

    if-ge v4, v7, :cond_1

    const/4 v7, 0x1

    shl-int/2addr v7, v4

    and-int/2addr v7, v5

    if-eqz v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    return v4
.end method

.method private convertArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private convertAuthConfigToContentValues(ILjava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "networkSSID"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "host"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "port"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "username"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "password"

    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x22

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)I
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_0
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v7, v5}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v7, v5}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    :cond_3
    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    move v2, v4

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "WifiPolicyService"

    const-string v2, "SSID is empty"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    const-string v2, "WifiPolicyService"

    const-string v3, "SSID exceeds maximum length 32"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x1

    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    const-string v3, "WifiPolicyService"

    const-string v4, "CCM configuration"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v3, "WifiPolicyService"

    const-string v4, "UCM configuration"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    :cond_4
    return-object v1
.end method

.method private disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_1
    return v0
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    return v3

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x1

    return v2
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 10

    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "edmAddOrUpdateTask - updating network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v3

    aput-object v5, v4, v2

    if-eqz v2, :cond_2

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v3

    aput-object v5, v4, v2

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    :cond_2
    goto/16 :goto_1

    :cond_3
    const-string v2, "WPA/WPA2/FT PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "*"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "802.1x EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    if-eq v4, v2, :cond_6

    const/16 v4, 0x13

    if-eq v4, v2, :cond_6

    const/16 v4, 0x12

    if-eq v4, v2, :cond_6

    const/4 v4, 0x3

    if-ne v4, v2, :cond_5

    goto :goto_0

    :cond_5
    new-instance v4, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "*"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    :cond_8
    nop

    :cond_9
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    new-instance v4, Landroid/net/StaticIpConfiguration;

    invoke-direct {v4}, Landroid/net/StaticIpConfiguration;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v7, v8, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v7, v8, :cond_c

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_b

    goto :goto_3

    :cond_b
    if-eqz v6, :cond_d

    move-object v5, v6

    goto :goto_4

    :cond_c
    :goto_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    :cond_d
    :goto_4
    new-instance v7, Landroid/net/IpConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    invoke-direct {v7, v2, v8, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    sget-object v7, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "Open"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    nop

    :goto_5
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_f

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v8, v8, v3

    if-eqz v8, :cond_e

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v3

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method private enableNetwork(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 3

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string/jumbo v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_WIFI"

    const-string v3, "com.samsung.android.knox.permission.KNOX_WIFI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemProcess()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemUser()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "enforceUCMPermission"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find credential storage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    goto :goto_2

    :cond_3
    const-string v1, "WifiPolicyService"

    const-string v2, "Couldn\'t enforce UCM permission. Is UCM service running?"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method private enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_WIFI"

    const-string v3, "com.samsung.android.knox.permission.KNOX_WIFI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_INFO"

    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI"

    const-string v2, "blockedSSIDList"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "networkLastSSID"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const-string v0, "adminUid"

    const-string/jumbo v1, "networkSSID"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v6, "networkSSID"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string/jumbo v2, "networkSSID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAllNetworkSSIDforKNOX()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "getAllNetworkSSIDforKNOX"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wifiSSIDforKNOX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    move v0, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "wifiSSIDforKNOX"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    invoke-static {v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "host"

    const-string/jumbo v2, "port"

    const-string/jumbo v3, "username"

    const-string/jumbo v4, "password"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "networkSSID"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WifiProxyAuthTable"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "host"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "port"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v10, "username"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "password"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v4, v11, v5, v6}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI"

    const-string v2, "blockedSSIDList"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, p1, :cond_1

    move-object v2, v5

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method private getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_0

    const-string v0, "dex_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dex/DexPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string/jumbo v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    const-string/jumbo v2, "eap"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v3, v3, v2

    return-object v3

    :cond_1
    return-object v3

    :cond_2
    const-string/jumbo v2, "phase2"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "NULL"

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    if-ltz v3, :cond_3

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v2, v4, v3

    :cond_3
    const-string v4, "NULL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "None"

    return-object v4

    :cond_4
    return-object v2

    :cond_5
    const-string/jumbo v2, "identity"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6
    const-string v2, "anonymous_identity"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_7
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_8
    const-string v2, "client_cert"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "key_id"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    const-string v2, "ca_cert"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_a
    :goto_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_b
    return-object v3
.end method

.method private getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "adminUid"

    const-string/jumbo v2, "networkSSID"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p3, v5, v4

    invoke-virtual {v3, v6, v0, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v1
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "adminUid"

    const-string/jumbo v2, "networkSSID"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v1, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v6, :cond_0

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    goto/16 :goto_e

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "networkSSID"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getNetworkConfiguration config.SSID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_1

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    return-object v2

    :cond_1
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string/jumbo v10, "networkEngineID"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "WifiPolicyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "engine_id from mdm database "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v6, :cond_2

    const-string v11, "WifiPolicyService"

    const-string v12, "create configuration with ccm"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    goto :goto_0

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v2, :cond_3

    const-string v11, "WifiPolicyService"

    const-string v12, "create configuration with UCM"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    :cond_3
    :goto_0
    iput-object v8, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v6, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string/jumbo v11, "networkBSSID"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v11, "networkKeyMgmt"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v11

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const-string/jumbo v11, "networkAllowedProtos"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v11

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const-string/jumbo v11, "networkAuthAlg"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v11

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const-string/jumbo v11, "networkAllowedPairwiseCiphers"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v11

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const-string/jumbo v11, "networkAllowedGroupProtocols"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v11

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const-string/jumbo v11, "networkPSK"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string/jumbo v12, "networkWEPKey1"

    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string/jumbo v12, "networkWEPKey2"

    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string/jumbo v12, "networkWEPKey3"

    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x3

    const-string/jumbo v12, "networkWEPKey4"

    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    const-string/jumbo v2, "networkWEPKeyId"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v9, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string/jumbo v2, "networkEAP"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v11, v5

    :goto_1
    sget-object v12, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v12, v12

    if-ge v11, v12, :cond_5

    sget-object v12, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const-string/jumbo v11, "networkPhase1"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v5

    :goto_3
    sget-object v14, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    array-length v14, v14

    if-ge v13, v14, :cond_7

    sget-object v14, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    aget-object v14, v14, v13

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-nez v12, :cond_8

    iget-object v13, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    :cond_8
    const-string/jumbo v13, "networkPhase2"

    invoke-virtual {v7, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move v15, v5

    :goto_5
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v15, v6, :cond_a

    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v6, v6, v15

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    const/4 v14, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez v14, :cond_b

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_b
    const-string/jumbo v6, "networkIdentity"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v15, "networkIdentity"

    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v6, "networkAnonymousId"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v15, "networkAnonymousId"

    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :cond_d
    const-string/jumbo v6, "networkPassword"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v15, "networkPassword"

    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v6, "networkClientCertification"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v15, "networkClientCertification"

    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_f
    const-string/jumbo v6, "networkCaCertificate"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v15, "networkCaCertificate"

    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    :cond_10
    const/4 v6, 0x1

    iput-boolean v6, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-object v6, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_11

    iget v15, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v15, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v15, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v15, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_11
    const-string/jumbo v15, "networkStaticIpEnabled"

    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    new-instance v5, Landroid/net/StaticIpConfiguration;

    invoke-direct {v5}, Landroid/net/StaticIpConfiguration;-><init>()V

    move-object/from16 v17, v1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_7

    :cond_12
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_7
    const-string/jumbo v2, "networkStaticIp"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v3

    const-string/jumbo v3, "networkStaticGateway"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v4

    const-string/jumbo v4, "networkStaticPrimaryDns"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v6

    const-string/jumbo v6, "networkStaticSecondaryDns"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v8

    const-string/jumbo v8, "networkStaticSubnetMask"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v5, v2, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {v0, v5, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    invoke-direct {v0, v5, v4, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v2

    const-string/jumbo v2, "networkProxyState"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    if-nez v26, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    sget-object v16, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    :goto_8
    move-object/from16 v27, v2

    move-object/from16 v29, v3

    :goto_9
    move-object/from16 v3, v16

    move-object/from16 v2, v23

    goto :goto_d

    :pswitch_0
    sget-object v16, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v23

    goto :goto_8

    :pswitch_1
    sget-object v16, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v23

    goto :goto_8

    :pswitch_2
    sget-object v16, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_8

    :cond_14
    :goto_a
    move-object/from16 v27, v2

    const-string/jumbo v2, "networkManualProxyEnabled"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_15

    move-object/from16 v28, v2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b

    :cond_15
    move-object/from16 v28, v2

    :goto_b
    move-object/from16 v29, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v30, v2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_16

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v3

    move-object/from16 v16, v2

    move-object/from16 v23, v3

    goto :goto_c

    :cond_16
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v16, v2

    :goto_c
    goto :goto_9

    :goto_d
    nop

    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object v9

    :cond_17
    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_e
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v2, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-ne v2, v4, :cond_3

    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNetworkIdBySSID  result:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    aget-object v1, p2, v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-ltz p3, :cond_3

    const/4 v2, 0x3

    if-le p3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, p3

    if-eqz v3, :cond_1

    const-string v1, "*"

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUserIdListfromSSIDPolicy()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "adminUid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ContainerOnly_wifiAP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private isAnyKnoxLauncherModeSSIDPolicy()Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getUserIdListfromSSIDPolicy()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxLauncherMode(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v1
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isDPMNetworkSSID(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const/4 v7, -0x2

    invoke-virtual {v1, v6, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "WifiPolicyService"

    const-string v4, "The profile creator is a Device Owner"

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private isKnoxLauncherMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOX_SETTINGS_KNOX_STYLE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAUNCHER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isNetworkSSIDforContainerListEmpty()Z
    .locals 4

    const-string/jumbo v0, "wifiSSIDforKNOX"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ContainerOnly_wifiAP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    return v2
.end method

.method private isNetworkSecureInternal(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v2

    invoke-static {p2}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    nop

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v1, "WifiPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Network id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isSecurityLevelSupported(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "security level not supported"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private declared-synchronized isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v1, "*"

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isWifiSsidRestrictionActive(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI"

    const-string/jumbo v2, "wifiSsidRestriction"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "WifiPolicyService"

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isvalidSSIDName(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isvalidSSIDName() : SSID is invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsShouldBlockWifiSSID:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    sget-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v3, :cond_0

    const-string v3, "WHITE_BLACK_SSID_LIST"

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v3, "BLACKLIST"

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v3, "WHITELIST"

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "BLACKLIST"

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "WHITELIST"

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v4, "adminUid"

    const-string v5, "WIFI_SSID"

    const-string v6, "WIFI_LIST_TYPE"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v8, "adminUid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v9, "WIFI_LIST_TYPE"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    const-string v9, "WIFI_SSID"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "*"

    invoke-static {v8, v9, v10}, Lcom/android/server/enterprise/utils/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    :cond_4
    goto :goto_2

    :cond_5
    iget-boolean v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsShouldBlockWifiSSID:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "BLACKLIST"

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllNetworkSSIDforKNOX()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "WHITELIST"

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v8, "*"

    invoke-static {v7, v6, v8}, Lcom/android/server/enterprise/utils/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    :cond_6
    sget-boolean v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v6, :cond_7

    const-string v6, "WHITE_BLACK_SSID_LIST"

    invoke-direct {p0, v6, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadWifiManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    array-length v0, p1

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .locals 6

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "makeUCMWifiURI"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;
    .locals 2

    const-string/jumbo v0, "networkProxyPacUrl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;
    .locals 5

    const-string/jumbo v0, "networProxyName"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "192.168.1.100"

    :cond_0
    const-string/jumbo v1, "networkProxyPort"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    const-string/jumbo v2, "networkProxyExclList"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v4, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v4

    return-object v4
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    return-void
.end method

.method private removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 10

    const-string v0, "WifiPolicyService"

    const-string v1, ">>> removeNetworkConfiguration "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-nez p2, :cond_2

    return v2

    :cond_0
    if-nez p2, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_CONF"

    const-string/jumbo v4, "networkSSID"

    invoke-virtual {v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    const-string v3, "WifiPolicyService"

    const-string v4, "No admin found for the given SSID"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_4
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_5
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v8, :cond_6

    const-string v3, "WifiPolicyService"

    const-string v8, "Not a valid MDM SSID"

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_6
    iget v2, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v2, :cond_8

    const-string v2, "WifiPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "forgetting network id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_7

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I

    :cond_7
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    :cond_8
    const/4 v2, 0x0

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string/jumbo v5, "networkSSID"

    invoke-virtual {v2, v4, v1, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_b

    if-eqz p3, :cond_b

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    :cond_b
    const-string v2, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    return v0
.end method

.method private saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/AuthConfig;

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WifiProxyAuthTable"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertAuthConfigToContentValues(ILjava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "blockedSSIDList"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.android.knox.intent.extra.WIFI_TYPE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "WifiPolicyService"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_0
    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/InetAddress;

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_6

    :try_start_1
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v4, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v4, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    const-string v3, "WifiPolicyService"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_6
    :goto_3
    return v3
.end method

.method private setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method private setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiPolicyService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v0, "192.168.1.1"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v1, :cond_1

    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    nop

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v2

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    move v1, v2

    :cond_1
    :goto_0
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "WifiPolicyService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1

    :cond_2
    const-string v0, "192.168.1.100"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v1, 0x18

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v1

    :cond_4
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "networkSSID"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkBSSID"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkKeyMgmt"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkAllowedProtos"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkAuthAlg"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkAllowedPairwiseCiphers"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkAllowedGroupProtocols"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkPSK"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkWEPKey1"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkWEPKey2"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkWEPKey3"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkWEPKey4"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v4, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkWEPKeyId"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-ltz v3, :cond_0

    const-string/jumbo v3, "networkEAP"

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    aget-object v4, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v9

    const-string v3, "NULL"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "networkPhase1"

    const-string/jumbo v4, "fast_provisioning="

    const-string v7, ""

    invoke-virtual {v9, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v3, "networkPhase1"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    aget-object v10, v3, v4

    const-string v3, "NULL"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "networkPhase2"

    const-string v4, "auth="

    const-string v7, ""

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string/jumbo v3, "networkPhase2"

    const-string v4, "None"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v3, "networkIdentity"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkAnonymousId"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkPassword"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkClientCertification"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkPrivateKey"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkCaCertificate"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkStaticIpEnabled"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    sget-object v7, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v4, v7, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v12

    iget-object v12, v12, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v13, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->prefixLengthToNetmaskInt(I)I

    move-result v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    :cond_6
    const-string/jumbo v13, "wifi.interface"

    const-string/jumbo v14, "wlan0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/RouteInfo;

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v15}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_7
    goto :goto_5

    :cond_8
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v14

    iget-object v14, v14, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/InetAddress;

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/InetAddress;

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    :cond_a
    move-object v15, v4

    move-object v12, v7

    move-object v13, v8

    move-object v14, v11

    move-object v11, v3

    const-string/jumbo v3, "networkStaticIp"

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkStaticGateway"

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkStaticPrimaryDns"

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkStaticSecondaryDns"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkStaticSubnetMask"

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkManualProxyEnabled"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v7, :cond_b

    move v5, v6

    nop

    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_d

    const/4 v3, 0x0

    :cond_c
    :goto_7
    move v8, v3

    goto :goto_8

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_c

    const/4 v3, 0x2

    goto :goto_7

    :goto_8
    const-string/jumbo v3, "networkProxyState"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "networProxyName"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkProxyPort"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "networkProxyExclList"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkProxyUsername"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkProxyPassword"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "networkProxyPacUrl"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v3, 0x0

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEngineId()Ljava/lang/String;

    move-result-object v7

    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "engine_id_str "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string/jumbo v4, "secpkcs11"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "engine id is secpkcs11 "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "ucsengine"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "engine id is UCM "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    :cond_11
    :goto_9
    move v6, v3

    const-string/jumbo v3, "networkEngineID"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string/jumbo v16, "networkSSID"

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move/from16 v5, p1

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v17

    move/from16 v17, v8

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "networkLastSSID"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    move-object v2, p2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    move-object v2, v1

    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, -0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_2
    return v3
.end method

.method private setWifiAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "WifiPolicyService"

    const-string/jumbo v4, "setWifiAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private declared-synchronized setWifiSSIDContainerReceiverActive(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiSSIDContainerReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiSSIDContainerReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiSSIDContainerReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;

    invoke-static {v1, v2}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiSSIDContainerReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;

    invoke-static {v2, v3}, Landroid/os/ContainerStateReceiver;->unregister(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiSSIDContainerReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;

    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsCurrentlyInContainerLauncher:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setWifiStateChangeAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiStateChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "WifiPolicyService"

    const-string/jumbo v4, "setWifiStateChangeAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_12

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "phase2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    const-string v3, "None"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    goto/16 :goto_7

    :cond_4
    const-string/jumbo v1, "phase1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    nop

    :goto_3
    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v1, :cond_8

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    return-object v0

    :cond_7
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    return-object v0

    :cond_8
    :goto_5
    goto/16 :goto_7

    :cond_9
    const-string/jumbo v1, "identity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xc8

    if-eqz v1, :cond_b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_a

    const-string v1, "WifiPolicyService"

    const-string v2, "Identity value excedes maximum length 200"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    const-string v1, "anonymous_identity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const-string/jumbo v1, "password"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_d

    const-string v1, "WifiPolicyService"

    const-string v2, "Password excedes maximum length 200"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const-string v1, "client_cert"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "key_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    const-string v1, "ca_cert"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    return-object v0

    :cond_11
    :goto_6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :goto_7
    return-object p1

    :cond_12
    return-object v0
.end method

.method private updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration;-><init>()V

    move-object v0, v2

    :cond_1
    const/4 v2, 0x0

    const-string/jumbo v3, "networkStaticIp"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "networkStaticGateway"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "networkStaticPrimaryDns"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "networkStaticSecondaryDns"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "networkStaticSubnetMask"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_6
    :goto_0
    if-nez v2, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    return-object p1

    :cond_8
    :goto_1
    return-object v1
.end method

.method private updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration;-><init>()V

    move-object v0, v2

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    return-object p1
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_0
    return-object p1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 9

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method private updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    move-object v0, v1

    invoke-virtual {v0, p2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    :goto_0
    return-object p1
.end method

.method private updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v0, v1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private updateNetworkProxyPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "192.168.1.100"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/ProxyInfo;->setPassword(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_2

    if-lez p2, :cond_1

    const v0, 0xffff

    if-le p2, v0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "192.168.1.100"

    invoke-static {v1, p2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/net/ProxyInfo;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    :goto_0
    return-object p1

    :cond_3
    return-object v1
.end method

.method private updateNetworkProxyUsername(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "192.168.1.100"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/ProxyInfo;->setUsername(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_5

    if-ltz p2, :cond_5

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    :cond_3
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v1, p2

    goto :goto_0

    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    :goto_0
    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method private updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    const/4 v1, 0x4

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, p2, -0x1

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private updateSystemUIMonitor(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    return-void
.end method

.method private updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 12

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    const-string v3, "192.168.1.100"

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const-class v5, [Ljava/lang/String;

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v11, Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v11

    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    return-object v1
.end method

.method private updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 13

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiPolicyService"

    const-string/jumbo v2, "specified profile not found"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWifiConfigLinkSecurity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x6

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v0, v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x7

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v0, v0, v6

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v6, 0x18

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v7, 0xe

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v7, 0x13

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v8, 0x10

    aget-object v0, v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v8, 0x11

    aget-object v0, v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v8, 0x12

    if-eqz v0, :cond_f

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v9, 0x14

    aget-object v0, v0, v9

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x3

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v10, 0x15

    aget-object v0, v0, v10

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v10, 0x17

    aget-object v0, v0, v10

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v11, 0x1a

    aget-object v0, v0, v11

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x5

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v12, 0x1b

    aget-object v0, v0, v12

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v12, 0x1d

    aget-object v0, v0, v12

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_17
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v12, 0x1e

    aget-object v0, v0, v12

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_19
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_1a
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_1b
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_1d
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_1e
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_1f
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_20
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_21
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :goto_0
    return-object p1
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    const/4 v6, 0x1

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v6, v7, :cond_2

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v6, :cond_1

    const v6, 0x10402d8

    invoke-static {v6}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    const/4 v2, 0x1

    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateSSIDList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiPolicyService"

    const-string/jumbo v2, "validateSSIDList() : ssid list removed null "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isvalidSSIDName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string/jumbo v3, "wifiSsidRestriction"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has changed Wifi SSID restriction to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    return v0
.end method

.method public addBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    const-string v0, "BLOCKED_NETWORKS"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has blocked access to Wifi SSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_0
    return v0
.end method

.method public addUrlForNetworkProxyBypass(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "adminUid"

    const-string/jumbo v4, "networkSSID"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "networkProxyExclList"

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method public addWifiSsidToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "WIFI_SSID"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "adminUid"

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "WIFI_LIST_TYPE"

    const-string v9, "BLACKLIST"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    iget-object v8, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move v4, v8

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "WifiPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Admin "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has added SSID "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to the restriction blacklist."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    :goto_2
    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v4

    :cond_4
    :goto_3
    const-string v0, "WifiPolicyService"

    const-string v4, "addWifiSsidToBlackList() : failed with invalid request"

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public addWifiSsidToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    const/4 v0, 0x1

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "WIFI_SSID"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "adminUid"

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "WIFI_LIST_TYPE"

    const-string v9, "WHITELIST"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v8, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has added SSID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to the restriction whitelist."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    :goto_2
    nop

    move v0, v8

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v0

    :cond_4
    :goto_3
    const-string v4, "WifiPolicyService"

    const-string v5, "addWifiSsidToWhiteList() : failed with invalid request"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4
.end method

.method public allowOpenWifiAp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v5, 0xd

    if-eq v3, v5, :cond_0

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v2, v4}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string v3, "allowOpenWifi"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowWifiApSettingUserModification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string v3, "allowWifiApSettingModification"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowWifiScanning(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "WIFI"

    const-string v5, "allowWifiScanning"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-nez p2, :cond_0

    :try_start_0
    const-string/jumbo v4, "wifi_scan_always_enabled"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowWifiScanning - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public clearUrlsFromNetworkProxyBypassList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "adminUid"

    const-string/jumbo v2, "networkSSID"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "networkProxyExclList"

    const-string/jumbo v5, "networkManualProxyEnabled"

    const-string/jumbo v6, "networkProxyState"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    invoke-virtual {v5, v6, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "networkProxyExclList"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_CONF"

    invoke-virtual {v8, v9, v0, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string/jumbo v9, "networkManualProxyEnabled"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v4, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v8, "networkProxyState"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_3

    :cond_2
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_3
    return v6

    :cond_4
    :goto_0
    return v1
.end method

.method public clearWifiSsidBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "adminUid"

    const-string v2, "WIFI_LIST_TYPE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "BLACKLIST"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v3, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "WifiPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has removed all SSIDs from the restriction blacklist."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v0
.end method

.method public clearWifiSsidWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "adminUid"

    const-string v2, "WIFI_LIST_TYPE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "WHITELIST"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v3, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "WifiPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has removed all SSIDs from the restriction whitelist."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump WifiPolicyService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WifiPolicy Cache]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/sec/enterprise/WifiPolicyCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WifiPolicyService]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWifiAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAllowStateChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAllowAutomaticConnections : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAllowUserChanges : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mPromptCredentialsEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string/jumbo v2, "networkSSID"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized edmUpdateConfiguredNetworks()V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_7
    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v9, :cond_5

    const/4 v9, 0x0

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_8
    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_9
    if-eqz v9, :cond_a

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)I

    :cond_a
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    if-nez v9, :cond_c

    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    const/4 v5, 0x1

    :cond_c
    goto/16 :goto_1

    :cond_d
    if-eqz v5, :cond_e

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllSsidBlacklist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 12
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v1

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "getAllSsidBlacklist"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "BLACKLIST"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllSsidBlacklist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllSsidWhitelist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 12
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v1

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "getAllSsidWhitelist"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "WHITELIST"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllSsidWhitelist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllWifiSsidBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "BLACKLIST"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAllWifiSsidWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "WHITELIST"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowUserChanges"

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

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .locals 4

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p3

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowUserProfiles"

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    const v2, 0x10402da

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_3
    return v0
.end method

.method public getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowAutomaticConnection"

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

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4
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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI"

    const-string/jumbo v2, "minimumRequiredSecurity"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v4

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v5

    if-le v4, v5, :cond_0

    move v1, v3

    :cond_0
    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNetworkAnonymousIdValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "anonymous_identity"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCaCertification(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "ca_cert"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "keystore://CACERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkClientCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "client_cert"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "keystore://USRCERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkDHCPEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public getNetworkEAPType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "eap"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkGateway(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "identity"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkKeystoreEngineId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "secpkcs11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "secpkcs11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    return v2

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public getNetworkLinkSecurity(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v1, "*"

    return-object v1

    :cond_1
    return-object v1
.end method

.method public getNetworkPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "password"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*"

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkPhase2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "phase2"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "auth="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkPrimaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "key_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "keystore://USRPKEY_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "USRPKEY_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkProxyEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_3
    return v1
.end method

.method public getNetworkProxyHostName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "adminUid"

    const-string/jumbo v2, "networkSSID"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "networProxyName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v4, "networProxyName"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getNetworkProxyPort(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "adminUid"

    const-string/jumbo v2, "networkSSID"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "networkProxyPort"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    invoke-virtual {v5, v6, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v4, "networkProxyPort"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "networkSSID"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_CONF"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string/jumbo v3, "passwordHidden"

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

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v3

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string/jumbo v3, "promptCredentials"

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

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getUrlsFromNetworkProxyBypassList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "adminUid"

    const-string/jumbo v1, "networkSSID"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "networkProxyExclList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "networkProxyExclList"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v6

    :cond_3
    :goto_0
    return-object v6
.end method

.method public getWifiApSetting(Lcom/samsung/android/knox/ContextInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "adminUid"

    const-string/jumbo v3, "networkSSID"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    invoke-virtual {v4, v7, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_22

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    nop

    const-string/jumbo v7, "networkEngineID"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    :cond_1
    invoke-direct {v8, v5}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(I)V

    move-object v5, v8

    const-string/jumbo v8, "networkClientCertification"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "networkClientCertification"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    invoke-direct {v10, v9}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    invoke-static {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    const-string/jumbo v9, "keystore://USRCERT_"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    :cond_4
    :goto_0
    const-string/jumbo v8, "networkSSID"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "networkSSID"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    :cond_5
    const-string/jumbo v8, "networkPSK"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "networkPSK"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    :cond_6
    const-string/jumbo v8, "networkPassword"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "networkPassword"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    :cond_7
    const-string/jumbo v8, "networkWEPKey1"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "networkWEPKey1"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    :cond_8
    const-string/jumbo v8, "networkWEPKey2"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "networkWEPKey2"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    :cond_9
    const-string/jumbo v8, "networkWEPKey3"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "networkWEPKey3"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    :cond_a
    const-string/jumbo v8, "networkWEPKey4"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "networkWEPKey4"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    :cond_b
    const-string/jumbo v8, "networkWEPKeyId"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string/jumbo v8, "networkWEPKeyId"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v6

    iput v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    :cond_c
    const-string/jumbo v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    :cond_d
    const-string/jumbo v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    :cond_e
    const-string/jumbo v6, "networkPhase1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string/jumbo v6, "networkPhase1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    :cond_f
    const-string/jumbo v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string/jumbo v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    :cond_10
    const-string/jumbo v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string/jumbo v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v6, :cond_11

    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string/jumbo v8, "keystore://CACERT_"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    :cond_11
    const-string/jumbo v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string/jumbo v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v6, :cond_14

    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v8, "keystore://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v8, "keystore://USRPKEY_"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_1

    :cond_12
    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_1

    :cond_13
    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v8, "USRPKEY_"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    :cond_14
    :goto_1
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    const-string/jumbo v6, "networkStaticIpEnabled"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string/jumbo v6, "networkStaticIpEnabled"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    :cond_15
    const-string/jumbo v6, "networkStaticIp"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string/jumbo v6, "networkStaticIp"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    :cond_16
    const-string/jumbo v6, "networkStaticGateway"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string/jumbo v6, "networkStaticGateway"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    :cond_17
    const-string/jumbo v6, "networkStaticPrimaryDns"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string/jumbo v6, "networkStaticPrimaryDns"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    :cond_18
    const-string/jumbo v6, "networkStaticSecondaryDns"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    const-string/jumbo v6, "networkStaticSecondaryDns"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    :cond_19
    const-string/jumbo v6, "networkStaticSubnetMask"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string/jumbo v6, "networkStaticSubnetMask"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    :cond_1a
    const-string/jumbo v6, "networkProxyState"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string/jumbo v6, "networkProxyState"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    :cond_1b
    const-string/jumbo v6, "networProxyName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string/jumbo v6, "networProxyName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    :cond_1c
    const-string/jumbo v6, "networkProxyPort"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string/jumbo v6, "networkProxyPort"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    :cond_1d
    const-string/jumbo v6, "networkProxyExclList"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string/jumbo v6, "networkProxyExclList"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    :cond_1e
    const-string/jumbo v6, "networkProxyUsername"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string/jumbo v6, "networkProxyUsername"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    :cond_1f
    const-string/jumbo v6, "networkProxyPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string/jumbo v6, "networkProxyPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    :cond_20
    const-string/jumbo v6, "networkProxyPacUrl"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string/jumbo v6, "networkProxyPacUrl"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    :cond_21
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    return-object v5

    :cond_22
    return-object v2
.end method

.method public getWifiSsidRestrictionList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v2, "BLACKLIST"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v2, "WHITELIST"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const v1, 0x10402d7

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    return v0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const v1, 0x10402d8

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    return v0
.end method

.method public isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowOpenWifi"

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

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowWifi"

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

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "isWifiAllowed() : Wifi is not allowed by MDM. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowWifiApSettingModification"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowWifiScanning"

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

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v0

    return v0
.end method

.method public isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowWifiStateChanges"

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

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "isWifiStateChangeAllowed() : Changing wifi state is not allowed by MDM. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
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
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateSystemUIMonitor(I)V

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public refreshWifiSSID()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSSIDforContainerListEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiSSIDContainerReceiverActive(Z)V

    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsShouldBlockWifiSSID:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiSSIDContainerReceiverActive(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAnyKnoxLauncherModeSSIDPolicy()Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsShouldBlockWifiSSID:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsCurrentlyInContainerLauncher:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsShouldBlockWifiSSID:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsShouldBlockWifiSSID:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return-void
.end method

.method public removeBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    const-string v1, "BLOCKED_NETWORKS"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    :cond_1
    if-eqz v1, :cond_2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has allowed access to Wifi SSID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeUrlFromNetworkProxyBypassList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "adminUid"

    const-string/jumbo v5, "networkSSID"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "networkProxyExclList"

    const-string/jumbo v8, "networkManualProxyEnabled"

    const-string/jumbo v9, "networkProxyState"

    filled-new-array {v6, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_CONF"

    invoke-virtual {v8, v9, v3, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "networkProxyExclList"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    return v4

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    return v4

    :cond_3
    const-string v12, ""

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v14, "networkProxyExclList"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "WIFI_CONF"

    invoke-virtual {v14, v15, v3, v5, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "networkManualProxyEnabled"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_6

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v14, "networkProxyState"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v15, :cond_7

    :cond_6
    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v4, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_7
    return v7

    :cond_8
    :goto_1
    return v4

    :cond_9
    :goto_2
    return v4
.end method

.method public removeWifiSsidFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    const/4 v0, 0x1

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "adminUid"

    const-string v8, "WIFI_SSID"

    const-string v9, "WIFI_LIST_TYPE"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v10, 0x2

    const-string v11, "BLACKLIST"

    aput-object v11, v8, v10

    if-eqz v0, :cond_1

    iget-object v10, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v10, v11, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    if-eqz v9, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has removed SSID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from the restriction blacklist."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    :goto_2
    nop

    move v0, v9

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v0

    :cond_4
    :goto_3
    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "removeWifiSsidFromBlackList() : failed with invalid request"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4
.end method

.method public removeWifiSsidFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "adminUid"

    const-string v6, "WIFI_SSID"

    const-string v7, "WIFI_LIST_TYPE"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v8, 0x2

    const-string v9, "WHITELIST"

    aput-object v9, v6, v8

    if-eqz v0, :cond_1

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v9, v10, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p0

    :cond_2
    move v7, v2

    :goto_1
    if-eqz v7, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has removed SSID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from the restriction whitelist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    :goto_2
    nop

    move v0, v7

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v0

    :cond_5
    :goto_3
    move-object/from16 v8, p0

    const/4 v2, 0x0

    return v2
.end method

.method public retrieveEnterpriseProxy(Ljava/lang/String;)Landroid/net/ProxyInfo;
    .locals 9

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemProcess()V

    const/4 v0, 0x0

    const-string/jumbo v1, "networkProxyState"

    const-string/jumbo v2, "networkManualProxyEnabled"

    const-string/jumbo v3, "networProxyName"

    const-string/jumbo v4, "networkProxyPort"

    const-string/jumbo v5, "networkProxyExclList"

    const-string/jumbo v6, "networkProxyPacUrl"

    const-string/jumbo v7, "networkProxyUsername"

    const-string/jumbo v8, "networkProxyPassword"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "networkSSID"

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v7, "networkProxyState"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v8, "networkManualProxyEnabled"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v0

    :cond_4
    nop

    :goto_1
    if-eqz v0, :cond_6

    const-string/jumbo v5, "networkProxyUsername"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "networkProxyUsername"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/ProxyInfo;->setUsername(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v5, "networkProxyPassword"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "networkProxyPassword"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/ProxyInfo;->setPassword(Ljava/lang/String;)V

    :cond_6
    return-object v0

    :cond_7
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveProxyCredentials(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemProcess()V

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v5, p3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_0
    sget-object v8, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget v8, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    if-ne v5, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->retrieveEnterpriseProxy(Ljava/lang/String;)Landroid/net/ProxyInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const-string v4, ""

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_3
    return-object v1
.end method

.method public setAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string v3, "allowUserChanges"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ALLOW_USER_CHANGES"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    return v0
.end method

.method public setAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "WIFI"

    const-string v4, "allowUserProfiles"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowUserProfiles : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string v3, "allowAutomaticConnection"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ALLOW_AUTOMATIC_CONNECTION"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    return v0
.end method

.method public setMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-ltz p2, :cond_6

    const/16 v1, 0x1e

    if-gt p2, v1, :cond_6

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "WIFI"

    const-string/jumbo v5, "minimumRequiredSecurity"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string/jumbo v5, "minimumRequiredSecurity"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v7

    invoke-static {v4}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v8

    if-le v7, v8, :cond_1

    move v4, v6

    :cond_1
    goto :goto_0

    :cond_2
    const-string v5, "MINIMUM_SECURITY_LEVEL"

    const/4 v6, -0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    iget v10, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v10, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v11

    if-nez v11, :cond_3

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    :cond_4
    :goto_2
    goto :goto_1

    :cond_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_6
    :goto_3
    const-string v1, "WifiPolicyService"

    const-string/jumbo v2, "security level not supported"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setNetworkAnonymousIdValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "anonymous_identity"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "ca_cert"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has set Enterprise Network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Certificate Authority to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    return v0
.end method

.method public setNetworkClientCertification(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "client_cert"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has set Enterprise Network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Client Certification to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    return v0
.end method

.method public setNetworkDHCPEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method public setNetworkGateway(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "identity"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v5, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    invoke-direct {v1, v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    const/4 v0, 0x0

    if-nez v7, :cond_0

    return v0

    :cond_0
    invoke-static {v7}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v6, v10, :cond_7

    if-ne v8, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    if-eq v6, v8, :cond_3

    const/4 v11, 0x5

    if-lt v6, v11, :cond_2

    if-ge v8, v11, :cond_3

    :cond_2
    const-string v11, "WifiPolicyService"

    const-string/jumbo v12, "security level changed - removing previous network configuration"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v2, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    iput v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v1, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    invoke-direct {v1, v5, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_6

    const-string v0, "NONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    nop

    :goto_0
    move v0, v9

    sget-object v9, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v9, v9, v0

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v9, v0

    :cond_4
    add-int/lit8 v9, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {v1, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    const-string v0, "ENTERPRISE_SSIDS"

    invoke-direct {v1, v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v12, 0x5

    const/4 v13, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "WifiPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " has set Enterprise Network "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " security to "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    const/4 v0, 0x1

    move v14, v0

    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_6
    :goto_1
    return v11

    :cond_7
    :goto_2
    const-string v10, "WifiPolicyService"

    const-string/jumbo v11, "security level not supported"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method public setNetworkPSK(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method public setNetworkPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "WifiPolicyService"

    const-string v1, " >>> setNetworkPassword "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPhase2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "phase2"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrimaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "key_id"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkProxyEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_2
    return v2
.end method

.method public setNetworkProxyHostName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "adminUid"

    const-string/jumbo v4, "networkSSID"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "networProxyName"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method public setNetworkProxyPort(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "adminUid"

    const-string/jumbo v4, "networkSSID"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "networkProxyPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method public setNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v5, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isDPMNetworkSSID(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v0

    :cond_1
    iget v7, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    if-eqz v6, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {v1, v5, v2, v3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    const/4 v0, 0x0

    if-nez v7, :cond_4

    return v0

    :cond_4
    invoke-direct {v1, v5, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)I

    const-string v0, "ENTERPRISE_SSIDS"

    const/4 v9, -0x1

    invoke-direct {v1, v0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v14, v10

    const/4 v10, 0x5

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v0, "WifiPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has set Enterprise Network SSID to "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_5

    :try_start_1
    const-string v11, " with CCM."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide v10, v14

    goto :goto_1

    :cond_5
    :try_start_2
    const-string v11, "."

    :goto_0
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-wide/from16 v17, v14

    move-object v14, v0

    move-object/from16 v15, v16

    move/from16 v16, v9

    :try_start_3
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v10, v17

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide/from16 v10, v17

    goto :goto_1

    :catchall_2
    move-exception v0

    move-wide v10, v14

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_6
    :goto_2
    return v8

    :cond_7
    :goto_3
    return v0
.end method

.method public setNetworkSecondaryDNS(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_1
    return v2
.end method

.method public setPasswordHidden(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string/jumbo v3, "passwordHidden"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string/jumbo v3, "promptCredentials"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "PROMPT_CREDENTIALS_ENABLED"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    return v0
.end method

.method public setWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v2, :cond_1

    const-string v0, "WifiPolicyService"

    const-string/jumbo v2, "failed to setwifi due to Ethernet only mode"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "WIFI"

    const-string v7, "allowWifi"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "WifiPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has changed Wifi enabled to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    const-string v4, "WIFI_ALLOWED"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-eqz p2, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    :cond_4
    return v0
.end method

.method public setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v2, :cond_2

    const-string v0, "WifiPolicyService"

    const-string/jumbo v2, "failed to setWifiAllowed due to Ethernet only mode"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "WIFI"

    const-string v4, "allowWifi"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v1, "WifiPolicyService"

    const-string/jumbo v2, "setWifiAllowed : mWifiManager = null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    and-int/2addr v0, v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "WIFI"

    const-string v4, "allowWifi"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v1, "WIFI_ALLOWED"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has changed Wifi allowed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string v5, "allowWifi"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v5

    goto :goto_2

    :cond_6
    goto :goto_1

    :cond_7
    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return v0
.end method

.method public setWifiApSetting(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "WifiPolicyService"

    const-string v2, "SSID is empty"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_9

    const/16 v3, 0x20

    if-le v0, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, "Open"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "WPA2_PSK"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Open"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string v3, "WPA2_PSK"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    :cond_4
    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Password("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is null or empty or less than 8 characters for WPA2 PSK security type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    sput-boolean v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object p2, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v1, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v4, ""

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v6, ""

    aput-object v6, v4, v5

    const-string v4, "WPA2_PSK"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    iput-object p4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_8

    const-string v6, "WifiPolicyService"

    const-string v7, "MHS enabled, so setting new config & calling RESET_AP"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v7, 0xc5

    iput v7, v6, Landroid/os/Message;->what:I

    iput-object v3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v2, v1

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sput-boolean v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    return v2

    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v8, "com.android.settings"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sput-boolean v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    nop

    nop

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sput-boolean v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    throw v2

    :cond_9
    :goto_2
    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") has more than 32 characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setWifiProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    if-nez v2, :cond_0

    return v5

    :cond_0
    iget-object v0, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v6

    const/4 v0, 0x1

    if-nez v6, :cond_2

    iget-object v7, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isDPMNetworkSSID(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v7}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v5

    :goto_0
    if-nez v9, :cond_2

    return v5

    :cond_2
    iget v7, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v8, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    if-eqz v6, :cond_3

    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v0, "WifiPolicyService"

    const-string/jumbo v8, "network belongs to another admin - cannot edit it"

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_3
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->checkSecurityLevel(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    move-result v8

    if-nez v8, :cond_4

    return v5

    :cond_4
    const/4 v8, 0x0

    if-eqz v8, :cond_7

    :try_start_0
    const-string v9, "WifiPolicyService"

    const-string v10, "checking if admin has ccm enabled"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "knox_ccm_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    if-eqz v9, :cond_6

    iget v10, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-interface {v9, v10}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    const-string v0, "WifiPolicyService"

    const-string v10, "ccm service not initialized or ccm not enabled for calling admin"

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    const-string v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed taking IClientCertificateManager"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_7
    :goto_2
    const/4 v9, 0x0

    if-eqz v9, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v10

    if-ne v0, v10, :cond_9

    const-string v10, "WifiPolicyService"

    const-string/jumbo v11, "setWifiProfile : UCMEngine, modify the alias to URI type"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-direct {v1, v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object v10, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-direct {v1, v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string v0, "WifiPolicyService"

    const-string/jumbo v10, "enforceUCMPermission failed"

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_a
    :goto_3
    iget-object v10, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    return v5

    :cond_b
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    const/4 v10, 0x1

    :cond_c
    iget-object v12, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v4, v12, v8, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-nez v11, :cond_d

    return v5

    :cond_d
    if-eqz v11, :cond_e

    iget-object v12, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    sget-object v12, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v12}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v12

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_e
    if-eqz v11, :cond_f

    iget-object v12, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    sget-object v12, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v12}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v12

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_f
    if-eqz v11, :cond_10

    iget-object v12, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    sget-object v12, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v12}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v12

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_10
    if-eqz v11, :cond_11

    iget-object v12, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    sget-object v12, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v12}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v12

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_11
    const/4 v12, -0x1

    if-eqz v11, :cond_12

    iget v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-eq v13, v12, :cond_12

    iget v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_12
    if-eqz v11, :cond_13

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_13

    const-string/jumbo v13, "password"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_13
    if-eqz v11, :cond_14

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_14
    if-eqz v11, :cond_15

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_15

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_15
    if-eqz v11, :cond_16

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_16

    const-string v13, "ca_cert"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_16
    if-eqz v11, :cond_17

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_17

    const-string v13, "client_cert"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    goto :goto_4

    :cond_17
    if-eqz v11, :cond_18

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    const-string/jumbo v13, "key_id"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_18
    :goto_4
    if-eqz v11, :cond_19

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    const-string/jumbo v13, "phase1"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_19
    if-eqz v11, :cond_1a

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1a

    const-string/jumbo v13, "phase2"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_1a
    if-eqz v11, :cond_1b

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1b

    const-string/jumbo v13, "identity"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_1b
    if-eqz v11, :cond_1c

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1c

    const-string v13, "anonymous_identity"

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_1c
    if-eqz v11, :cond_1d

    iget-boolean v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    xor-int/2addr v13, v0

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_1d
    if-eqz v11, :cond_1e

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1e

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    const-string/jumbo v14, "networkStaticIp"

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_1e
    if-eqz v11, :cond_1f

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1f

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    const-string/jumbo v14, "networkStaticGateway"

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_1f
    if-eqz v11, :cond_20

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_20

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    const-string/jumbo v14, "networkStaticPrimaryDns"

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_20
    if-eqz v11, :cond_21

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_21

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    const-string/jumbo v14, "networkStaticSecondaryDns"

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_21
    if-eqz v11, :cond_22

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_22

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    const-string/jumbo v14, "networkStaticSubnetMask"

    invoke-direct {v1, v11, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_22
    if-eqz v11, :cond_23

    iget v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_23
    if-eqz v11, :cond_24

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_24

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_24
    if-eqz v11, :cond_25

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v13

    sget-object v14, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v13, v14, :cond_25

    iget v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_25
    if-eqz v11, :cond_26

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    if-eqz v13, :cond_26

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_26

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, [Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v11, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_26
    if-eqz v11, :cond_27

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_27

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyUsername(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_27
    if-eqz v11, :cond_28

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_28

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_28
    if-eqz v11, :cond_2e

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz v13, :cond_2e

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2e

    const/4 v13, 0x1

    iget-object v14, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/net/AuthConfig;

    if-eqz v15, :cond_2a

    invoke-virtual {v15}, Lcom/samsung/android/knox/net/AuthConfig;->isValid()Z

    move-result v16

    if-nez v16, :cond_29

    goto :goto_6

    :cond_29
    goto :goto_5

    :cond_2a
    :goto_6
    const/4 v13, 0x0

    nop

    :cond_2b
    if-eqz v13, :cond_2d

    iget-object v14, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    iget-object v14, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-direct {v1, v4, v14, v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z

    move-result v14

    if-nez v14, :cond_2c

    return v5

    :cond_2c
    goto :goto_7

    :cond_2d
    return v5

    :cond_2e
    if-eqz v11, :cond_2f

    iget-object v13, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    :cond_2f
    :goto_7
    if-eqz v11, :cond_30

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_30

    iget-object v13, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    invoke-direct {v1, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :cond_30
    const/4 v13, 0x1

    if-eqz v11, :cond_37

    if-eqz v10, :cond_31

    iget-object v14, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v1, v3, v14, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v13

    :cond_31
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    invoke-direct {v1, v4, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v14

    and-int/2addr v13, v14

    const/4 v14, -0x1

    if-eqz v13, :cond_34

    iget-object v15, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches()V

    invoke-direct {v1, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const-string v15, "ENTERPRISE_SSIDS"

    invoke-direct {v1, v15, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-wide/from16 v17, v15

    :try_start_1
    const-string v15, ""

    const-string v16, ""

    iget-object v0, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_32

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CA certificate: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v2, v17

    goto :goto_a

    :cond_32
    :goto_8
    :try_start_3
    iget-object v0, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_33

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Client credentials "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v16, v0

    goto :goto_9

    :cond_33
    move-object/from16 v0, v16

    :goto_9
    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, 0x1

    :try_start_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    const-string v23, "WifiPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has set a new wifi profile: SSID: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " Security type: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    iget v5, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    invoke-static/range {v19 .. v25}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v26, v3

    move-wide/from16 v2, v17

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v2, v17

    :goto_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_34
    move-object/from16 v26, v3

    :goto_b
    const/4 v0, -0x1

    if-eq v14, v0, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v5, 0x0

    :try_start_6
    invoke-direct {v1, v14, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_35

    iget-object v12, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v12, v14}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->connect(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_36
    :goto_c
    goto :goto_d

    :cond_37
    move-object/from16 v26, v3

    const/4 v13, 0x0

    :goto_d
    return v13
.end method

.method public setWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string v3, "allowWifiStateChanges"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ALLOW_STATE_CHANGES"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has changed Wifi state change allowed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    :cond_1
    return v0
.end method

.method public systemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->refreshWifiSSID()V

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    return-void
.end method
