.class Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
    }
.end annotation


# static fields
.field private static final ADMIN_IN_DATABASE:I = 0x1

.field public static final ALL:Ljava/lang/String; = "ALL"

.field private static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CMD_BUF_SIZE_ARGS:I

.field public static final CMD_BUF_SIZE_MAX:I = 0x300

.field private static final DBG:Z = false

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field public static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field public static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field public static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field public static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field public static final DOMAINFILTERCMD:Ljava/lang/String; = "domainFilterCmd"

.field private static final EMPTY_DATABASE:I = 0x0

.field private static final INVALID_NETID:I = -0x1

.field private static final MSG_RELEASE_NETWORK:I = 0x0

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final NETID:Ljava/lang/String; = "NETID"

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_CAPPORTAL:Ljava/lang/String; = "CAPPORTAL"

.field public static final OP_CLEAR:Ljava/lang/String; = "CLEAR"

.field public static final OP_EXCEPTION:Ljava/lang/String; = "EXCEPTION"

.field public static final OP_FLUSH_LIBC_CACHE:Ljava/lang/String; = "FLUSHLIBC"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final OP_REPLACE:Ljava/lang/String; = "REPLACE"

.field private static final PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

.field private static final PORTAL_HOSTS_TOKEN:Ljava/lang/String; = ","

.field private static final REPORT_CACHE_SIZE:I = 0x5

.field public static final ReportBlockedDomain:I = 0x320

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBootFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDnsManager:Lcom/android/server/connectivity/DnsManager;

.field private mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExceptionListLock:Ljava/lang/Object;

.field private mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field private mIsExceptionListApplied:Z

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

.field private mNetworkIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkIdListLock:Ljava/lang/Object;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

.field private mReportCacheIndex:I

.field private mServer:Ljava/lang/String;

.field private mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private mThread:Ljava/lang/Thread;

.field private mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "DomainFilter"

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "domainFilterCmd"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    rsub-int v0, v0, 0x300

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    const-string v1, ".mdm."

    const-string v2, ".knox."

    const-string v3, ".elm."

    const-string v4, ".edm."

    const-string v5, ".klm"

    const-string v6, ".spay"

    const-string v7, ".ucm"

    const-string v8, ".ucs"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$3;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$5;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v5, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v7, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    invoke-direct {v7, p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    invoke-direct {v5, v6, v7}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V

    iput-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "captive_portal_server"

    invoke-static {v1, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "connectivitycheck.gstatic.com"

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$4;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initReportCache()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->retrieveCaptivePortalHosts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/INetd;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getPackageFromRunningProcesses(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/firewall/DomainFilter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return p1
.end method

.method static synthetic access$1908(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .locals 2

    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/firewall/DomainFilter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworkId(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/firewall/DomainFilter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->addHostToCaptivePortalWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initUserIdMap()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    return-void
.end method

.method private addHostToCaptivePortalWhitelist(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveCaptivePortalHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "CAPPORTAL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkAdminInDatabase(I)I
    .locals 6

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string v4, "adminUid"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterOnIptablesApiStatus"

    const-string v5, "adminUid"

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private clearReportForUser(I)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method private concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v2, v3

    :cond_0
    if-eqz p4, :cond_4

    add-int v3, p2, v2

    add-int/2addr v3, v0

    sget v4, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v3, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, ";"

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int v6, p2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    add-int v8, v6, v7

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v6, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_4
    :goto_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method private connectNativeNetdService()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "netd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "connectNativeNetdService() - netd is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "connectNativeNetdService() - Can\'t connect to NativeNetdService netd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static enableNapFeature(Lcom/android/server/enterprise/storage/EdmStorageProviderBase;Z)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_0
    const-string v2, "NAPProfileTable"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    const-string/jumbo v3, "net.knox.nap"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "net.knox.nap"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private declared-synchronized executeCommand(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeCommand() -  creating new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "executeCommand() - failed to wait for socket creation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "executeCommand() - Thread already started"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    const-string/jumbo v1, "domainFilterCmd"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->execute(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "executeCommand() - failed to send command to daemon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private extractHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extractHost() - Invalid url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private flushLibcDnsCache()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "flushLibcDnsCache() - failed to retrieve ConnectivityService instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/net/Network;->netId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "FLUSHLIBC"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "flushLibcDnsCache() - Failed to getActiveNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getApplicationUid(Ljava/lang/String;I)I
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getApplicationUid() - exception getting package info "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    return v3

    :cond_1
    :goto_2
    const/4 v3, -0x1

    return v3

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getConnectivityService()Landroid/net/IConnectivityManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method private getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getNetworkIdInfoIndex(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result v3

    if-ne p1, v3, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private getPackageFromRunningProcesses(II)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-gez p1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPackageFromRunningProcesses() - Invalid PID provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-gez p2, :cond_1

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPackageFromRunningProcesses() - Invalid UID provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p1, v5, :cond_6

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_3

    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v5

    return-object v0

    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "#SelectClause#"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "packageName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "DomainFilterTable"

    invoke-virtual {v6, v7, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "packageName"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    return-object v10

    :cond_4
    goto :goto_1

    :cond_5
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v7, v5

    return-object v5

    :cond_6
    goto :goto_0

    :cond_7
    :goto_2
    return-object v0
.end method

.method private hasAnyRuleInDatabase()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasAnyRuleInDatabase(): true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasAnyRuleInDatabase(): false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private initDaemonCache()V
    .locals 21

    move-object/from16 v7, p0

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDaemonCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/ContentValues;

    const-string v0, "blacklist"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "whitelist"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v0, "dns1"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_1
    const-string v0, "adminUid"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const/4 v0, -0x1

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move v15, v1

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    move-object v4, v1

    goto :goto_4

    :cond_4
    invoke-direct {v7, v5, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_3

    const-string/jumbo v3, "signature"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {v7, v6, v5, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initDaemonCache() - app signature mismatch"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_4
    if-eqz v4, :cond_9

    const/4 v1, -0x1

    if-eqz v13, :cond_8

    const-string/jumbo v2, "dns2"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v13, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_7

    const-string/jumbo v0, "networkId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    move/from16 v16, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v1, v3, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    goto :goto_5

    :cond_7
    move/from16 v16, v1

    :goto_5
    move/from16 v3, v16

    goto :goto_6

    :cond_8
    move v3, v1

    :goto_6
    const-string v1, "ADD"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move/from16 v18, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move-object v4, v11

    move-object/from16 v19, v5

    move-object v5, v12

    move/from16 v20, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    goto/16 :goto_0

    :cond_a
    return-void

    :cond_b
    :goto_7
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDaemonCache() - No rules found in db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initReportCache()V
    .locals 8

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initReportCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportStatus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private initUserIdMap()V
    .locals 15

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initUserIdMap() - Initializing UserID Mapping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v8, 0x40

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/Integer;

    iget v14, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    iget v10, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_4
    :goto_2
    return-void
.end method

.method private isDomainFilterReportEnabledAsUser(I)Z
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportStatus"

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->increaseCounter()I

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_5
    goto :goto_0

    :cond_6
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeClearCaptivePortalHosts()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "captivePortalHosts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "CAPPORTAL"

    const-string v2, "CLEAR"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CAPPORTAL"

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserAdded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserAdded() - userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-nez v6, :cond_1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    :cond_3
    :goto_2
    return-void
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserRemoved() - userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v4, "CLEAR"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    :goto_0
    return-void
.end method

.method private packageAdded(Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    move-object/from16 v10, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v1, :cond_9

    if-nez v9, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {v8, v9, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v12

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageAdded() - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v12, v1, :cond_1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageAdded() - Failed to retrieve app info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    invoke-static {v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "#SelectClause#"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v2, "signature"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {v8, v11, v9, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "packageAdded() - Installed app\'s signature mismatched the one provided by admin."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    const-string v2, "blacklist"

    invoke-direct {v8, v14, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "whitelist"

    invoke-direct {v8, v14, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "dns1"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    const/4 v2, -0x1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "dns2"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v5, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_6

    const-string/jumbo v1, "networkId"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v1, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    :cond_6
    move v4, v2

    const-string v2, "ADD"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object v1, v8

    move/from16 v18, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move-object v5, v7

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    nop

    :cond_8
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    :goto_3
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageAdded() - Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private packageRemoved(Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v8, p0

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    move-object/from16 v9, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageRemoved() - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v10, v1, :cond_5

    if-eqz v11, :cond_5

    const/4 v2, 0x0

    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    move-object v12, v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    invoke-static {v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "#SelectClause#"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const-string/jumbo v5, "networkId"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v3, "networkId"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    move v7, v3

    if-eq v7, v1, :cond_3

    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v3, "networkId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v1, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    :cond_3
    const-string v2, "CLEAR"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object v1, v8

    move/from16 v17, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :goto_3
    return-void
.end method

.method private packageReplaced(Landroid/content/Intent;)V
    .locals 15

    move-object v8, p0

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    move-object/from16 v9, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    if-eq v10, v1, :cond_5

    if-nez v11, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v12, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_4

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v8, v11, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v14

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageReplaced() - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " oldUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v14, v1, :cond_2

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "ackageReplaced() - Failed to retrieve app info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v13, v14, :cond_3

    const-string v2, "REPLACE"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageReplaced() - Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    nop

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private declared-synchronized processPackageExceptionList(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processPackageExceptionList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processPackageExceptionList() - package list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    const-string v0, "android"

    const/16 v2, 0x40

    invoke-virtual {v9, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-nez v0, :cond_1

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPackageExceptionList() - systemInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    move-object v11, v1

    iget-object v1, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_3

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v11, v1}, Lcom/android/server/enterprise/utils/Utils;->isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v12, Lcom/android/server/enterprise/firewall/DomainFilter;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    array-length v13, v12

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v13, :cond_3

    aget-object v1, v12, v14

    move-object v7, v1

    iget-object v1, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "EXCEPTION"

    iget-object v1, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-object v1, v8

    move-object/from16 v16, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processPackageExceptionList() - failed to retrieve package info for system"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processPackageExceptionListDelayed()V
    .locals 9

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processPackageExceptionListDelayed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private releaseNetworkId(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkIdInfoIndex(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseNetworkId() - No network to release"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseNetworkId() - failed to retrieve NetworkManagementService instance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseNetworkId() - failed to retrieve ConnectivityService instance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseNetworkId() - No network to release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseNetworks(I)V
    .locals 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "networkId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networkId"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eq v7, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v8, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "releaseNetworks() - No rules in database"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private retrieveCaptivePortalHosts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "captivePortalHosts"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private saveCaptivePortalHost(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->retrieveCaptivePortalHosts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "captivePortalHosts"

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/android/server/enterprise/utils/Utils;->convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, -0x1

    move v1, v0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveReportInDatabase() - Error parsing userId received from daemon."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterReportTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveReportInDatabase() - Failed to save domain report in database"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "CLEAR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "REPLACE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "EXCEPTION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CAPPORTAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    :cond_2
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "BLACKLIST"

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "WHITELIST"

    invoke-direct {p0, v0, v1, v2, p5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "-1"

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "NETID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    :cond_6
    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->flushLibcDnsCache()V

    :cond_7
    return-void

    :cond_8
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    const-string v1, "CLEAR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->flushLibcDnsCache()V

    :cond_9
    return-void
.end method

.method private setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setupNetworkDns() - failed to retrieve NetworkManagementService instance"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setupNetworkDns() - failed to retrieve ConnectivityService instance"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    :cond_3
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getReservedNetworkId()I

    move-result v6

    move v2, v6

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v1, v7}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V

    const/4 v3, 0x1

    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    new-instance v8, Lcom/android/server/connectivity/DnsManager;

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/connectivity/DnsManager;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/connectivity/MockableSystemProperties;)V

    iput-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v8, v2, v6, v7}, Lcom/android/server/connectivity/DnsManager;->setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    new-instance v9, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-direct {v9, v2, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v6

    if-eqz v3, :cond_5

    :try_start_3
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupNetworkDns() - Failed to set dns for network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v2}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_5
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setupNetworkDns() - Failed to remove network"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setupNetworkDns() - Failed to create new network with id provided."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v7, v2}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v7

    :try_start_7
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setupNetworkDns() - Failed to remove network"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v6

    const/4 v0, 0x0

    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setupNetworkDns() - Failed creating new network."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v0, :cond_3

    return v2

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDaemonCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p1

    iget v0, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string v0, "CLEAR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "CLEAR"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_a

    const-string v0, "ADD"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REMOVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x0

    const-string v2, "*"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v13, v1

    goto :goto_1

    :cond_3
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-eqz v13, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ";"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_2

    :cond_5
    const-string v4, "REMOVE"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v1, "ALL"

    :cond_6
    :goto_2
    move-object v14, v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ";"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v15, v1

    goto :goto_4

    :cond_7
    const-string v1, ""

    goto :goto_3

    :cond_8
    const-string v1, "REMOVE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ALL"

    goto :goto_3

    :cond_9
    move-object v15, v2

    :goto_4
    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v16, v7

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_5
    return-void
.end method

.method private validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Invalid AppIdentity object."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "There is no signature related to all applications."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package name. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private validateDnses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-static {v0, p2, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "validatePkgSignature() - Fail to validate application signature."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_1

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object p1, v4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    return v0

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method declared-synchronized addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_15

    :cond_0
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addDomainFilterRules() - rules.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v9, "addDomainFilterRules() - Another admin already have domain filter rules in the database"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v10, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move v11, v4

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1b

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    if-nez v12, :cond_2

    sget-object v13, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v14, "addDomainFilterRules() - Skipping invalid rule - No rule specified"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "No rule was specified."

    invoke-direct {v13, v14, v15, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v13, v9, v11

    nop

    move/from16 v26, v5

    move/from16 v19, v6

    move/from16 v17, v7

    :goto_1
    move-object/from16 v21, v10

    :goto_2
    move-object v5, v2

    goto/16 :goto_10

    :cond_2
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v0

    if-nez v14, :cond_5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v17, v7

    goto :goto_5

    :cond_4
    :goto_3
    sget-object v15, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "addDomainFilterRules() - Skipping invalid rule - mandatory parameters missing"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move/from16 v17, v7

    const-string v7, "No parameters provided."

    invoke-direct {v0, v15, v4, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v9, v11

    nop

    :goto_4
    move/from16 v26, v5

    move/from16 v19, v6

    goto :goto_1

    :cond_5
    move/from16 v17, v7

    :goto_5
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    aput-object v0, v9, v11

    aget-object v0, v9, v11

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addDomainFilterRules() - Skipping invalid rule - invalid Application Identity: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v9, v11

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-direct {v1, v6, v0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v15

    move v7, v15

    :cond_7
    const/4 v15, 0x1

    move/from16 v18, v15

    const-string v15, "*"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-direct {v1, v10, v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z

    move-result v15

    goto :goto_6

    :cond_8
    move/from16 v15, v18

    :goto_6
    if-nez v7, :cond_9

    if-eqz v15, :cond_9

    move/from16 v19, v6

    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    move/from16 v20, v7

    const-string v7, "addDomainFilterRules() - Skipping invalid rule - signature mismatch"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v21, v10

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Given signature does not match with the application."

    invoke-direct {v6, v7, v10, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v9, v11

    nop

    :goto_7
    move/from16 v26, v5

    goto/16 :goto_2

    :cond_9
    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v10

    if-nez v14, :cond_a

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    if-eqz v14, :cond_c

    invoke-direct {v1, v8, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDnses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v6, "addDomainFilterRules() - Skipping invalid rule - invalid DNS"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v10, "Invalid DNS(s) provided"

    invoke-direct {v3, v6, v7, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v9, v11

    goto :goto_7

    :cond_c
    invoke-direct {v1, v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v6, "addDomainFilterRules() - Skipping invalid rule - invalid domain"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v10, "Invalid domain."

    invoke-direct {v3, v6, v7, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v9, v11

    goto :goto_7

    :cond_d
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "packageName"

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "signature"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DomainFilterTable"

    move-object/from16 v22, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v10, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentValues;

    move-object/from16 v7, v18

    :cond_e
    invoke-direct {v1, v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v18

    move-object/from16 v23, v18

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v31, v12

    goto/16 :goto_b

    :cond_10
    move-object/from16 v24, v0

    move-object/from16 v0, v23

    :goto_8
    move-object/from16 v25, v4

    const-string v4, "blacklist"

    invoke-direct {v1, v7, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v26, v5

    const-string/jumbo v5, "whitelist"

    invoke-direct {v1, v7, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v18

    move-object/from16 v27, v18

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v18

    move-object/from16 v28, v18

    move-object/from16 v29, v4

    move-object/from16 v4, v27

    invoke-interface {v4, v10}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v30, v5

    move-object/from16 v5, v28

    invoke-interface {v5, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v18

    if-nez v18, :cond_11

    goto :goto_9

    :cond_11
    const/16 v18, 0x0

    goto :goto_a

    :cond_12
    move-object/from16 v30, v5

    move-object/from16 v5, v28

    :goto_9
    const/16 v18, 0x1

    :goto_a
    if-nez v18, :cond_13

    if-nez v14, :cond_13

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    move-object/from16 v31, v12

    const-string v12, "addDomainFilterRules() - Skipping rule - This rule is already in the database"

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v32, v6

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v33, v7

    const-string v7, "The specified rule is already in the database."

    invoke-direct {v2, v12, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v9, v11

    goto :goto_c

    :cond_13
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v31, v12

    invoke-direct {v1, v10, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "blacklist"

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "whitelist"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const/4 v2, -0x1

    if-eqz v14, :cond_18

    if-eqz v15, :cond_16

    invoke-direct {v1, v8, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    const/4 v4, -0x1

    if-ne v2, v4, :cond_15

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "addDomainFilterRules() - Skipping invalid rule - Invalid netID"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Error occurred applying DNS(s)"

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v9, v11

    nop

    :cond_14
    :goto_c
    move-object/from16 v5, p1

    goto/16 :goto_10

    :cond_15
    const-string/jumbo v4, "networkId"

    move-object/from16 v7, v33

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "networkId"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    if-eq v2, v4, :cond_17

    iget-object v6, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v5, 0x0

    invoke-static {v6, v5, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v5, v6

    iget-object v6, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    :cond_16
    move-object/from16 v7, v33

    :cond_17
    :goto_d
    const-string/jumbo v4, "dns1"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "dns2"

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "networkId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e

    :cond_18
    move-object/from16 v7, v33

    :goto_e
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterTable"

    move-object/from16 v6, v32

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_19

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "addDomainFilterRules() - Failed to add rule in the database"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v34, v0

    const-string v0, "Failed to add/update rule in the database."

    invoke-direct {v4, v5, v12, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v9, v11

    if-eqz v14, :cond_14

    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    :cond_19
    move-object/from16 v34, v0

    if-eqz v15, :cond_1a

    const-string v0, "ADD"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v31

    move-object/from16 v5, p1

    invoke-direct {v1, v5, v12, v0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_1a
    move-object/from16 v12, v31

    move-object/from16 v5, p1

    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionListDelayed()V

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move/from16 v35, v2

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v36, v3

    const-string v3, "The rule(s) was successfully added/updated."

    invoke-direct {v0, v4, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v9, v11

    :goto_10
    add-int/lit8 v11, v11, 0x1

    move-object v2, v5

    move/from16 v7, v17

    move/from16 v6, v19

    move-object/from16 v10, v21

    move/from16 v5, v26

    const/4 v0, 0x1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_1b
    move/from16 v26, v5

    move/from16 v19, v6

    move/from16 v17, v7

    move-object/from16 v21, v10

    move-object v5, v2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_11
    move/from16 v2, v16

    array-length v3, v9

    if-ge v2, v3, :cond_1d

    aget-object v3, v9, v2

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1c
    move-object/from16 v3, p2

    :goto_12
    add-int/lit8 v16, v2, 0x1

    goto :goto_11

    :cond_1d
    move-object/from16 v3, p2

    invoke-virtual {v1, v5, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_13

    :cond_1e
    move-object/from16 v3, p2

    :goto_13
    monitor-exit p0

    return-object v9

    :catchall_0
    move-exception v0

    move/from16 v26, v5

    move/from16 v19, v6

    move/from16 v17, v7

    move-object v5, v2

    :goto_14
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_14

    :catchall_2
    move-exception v0

    goto :goto_16

    :cond_1f
    :goto_15
    move-object v5, v2

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "addDomainFilterRules() - No rule specified"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "No rule was specified."

    invoke-direct {v2, v4, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v0, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object v0

    :goto_16
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "addDomainRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "The domain filter on iptables api was successfully enabled."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method adminRemoved(I)V
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminRemoved() - adminUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V

    return-void
.end method

.method declared-synchronized enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "enableDomainFilterOnIptables() - Another admin already have domain filter rules in the database"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "userId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to change DomainFilterOnIptables status on database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->flushLibcDnsCache()V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableNapFeature(Lcom/android/server/enterprise/storage/EdmStorageProviderBase;Z)V

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "enableDomainFilterOnIptables() - DomainFilterOnIptables Api successfully enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_2
    :try_start_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "userId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to change DomainFilterOnIptables status on database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_3
    :try_start_4
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableDomainFilterOnIptables() - DomainFilterOnIptables successfully disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableNapFeature(Lcom/android/server/enterprise/storage/EdmStorageProviderBase;Z)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "flushDomainChains() - Failed to flush domain chains"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to disable domain filter on iptables api."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_4
    :try_start_5
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "flushDomainChains() - domain rules successfully removed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "The domain filter on iptables api was successfully disabled."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 9

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enableDomainFilterReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "userId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterReportStatus"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableDomainFilterReport() - Failed to change Domain Filter Report status on database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to change Domain Filter report status on database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "enableDomainFilterReport() - Domain Filter Report successfully enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "enableDomainFilterReport() - Domain Filter Report successfully disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    if-eqz p2, :cond_4

    const-string v8, "Domain Report successfully enabled."

    goto :goto_2

    :cond_4
    const-string v8, "Domain Report successfully disabled."

    :goto_2
    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v5
.end method

.method getDefaulCaptivePortalURL()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_server"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "connectivitycheck.gstatic.com"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDomainFilterReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "userId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterReportTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_1

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const-string/jumbo v7, "time"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1

    :cond_2
    const-wide/16 v9, 0x0

    :goto_1
    const-string/jumbo v11, "url"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getDomainFilterRules()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v3, p1

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "DomainFilterTable"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "packageName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "signature"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v0, :cond_0

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_0
    const-string v13, "blacklist"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "whitelist"

    invoke-virtual {v10, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, ";"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v15

    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v15

    :goto_2
    const-string/jumbo v15, "dns1"

    invoke-virtual {v10, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v15, "dns2"

    invoke-virtual {v10, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    new-instance v15, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v15, v11, v12}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v15

    new-instance v23, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    move-object/from16 v15, v23

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    return-object v1
.end method

.method protected getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "userId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterOnIptablesApiStatus"

    const-string/jumbo v5, "status"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4

    :cond_1
    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method onPreAdminRemoval(I)V
    .locals 10

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval(adminUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v4, "CLEAR"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 12

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDnsForApplication() - START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dns1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dns2"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_0

    if-nez v1, :cond_5

    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_5

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "networkId"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, -0x1

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "dns1"

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "dns2"

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "networkId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "packageName"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DomainFilterTable"

    invoke-virtual {v9, v10, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeDnsForApplication() -  Database error!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "Failed to remove DNS(s) from database."

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    :cond_4
    monitor-exit p0

    return-object v7

    :cond_5
    :goto_0
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeDnsForApplication() - Invalid parameters!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "DNS(s) provided doesn\'t match DNS(s) in database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDomainFilterRules() - rules.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "0"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeDomainFilterRules() - No rule specified"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "No rule was specified."

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v6

    if-nez v6, :cond_2

    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "removeDomainFilterRules() - Database is already empty"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v10, "The rules are already cleared."

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v7, v0, v4

    :goto_1
    move-object v8, v0

    move/from16 v23, v5

    move/from16 v18, v6

    goto/16 :goto_10

    :cond_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "removeDomainFilterRules() - Another admin is handling domain filter rules in the database"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v10, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v7, v0, v4

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_6

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DomainFilterTable"

    invoke-virtual {v8, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-gtz v8, :cond_4

    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "removeDomainFilterRules() - Failed to clear rules from the database"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v12, "Failed to clear rules from database."

    invoke-direct {v8, v10, v11, v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v0, v4

    goto :goto_2

    :cond_4
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rules successfully cleared. Admin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v0, v4

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-object v10, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "flushDomainChains() - Failed to flush domain chains"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "flushDomainChains() - domain rules successfully removed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v8, "CLEAR"

    invoke-direct {v1, v2, v9, v8, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move v10, v4

    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v12

    aput-object v12, v8, v10

    aget-object v12, v8, v10

    if-eqz v12, :cond_7

    sget-object v12, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeDomainFilterRules() - Skipping invalid rule - invalid Application Identity"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v8, v10

    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v23, v5

    move/from16 v18, v6

    goto/16 :goto_e

    :cond_7
    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "packageName"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "DomainFilterTable"

    invoke-virtual {v14, v15, v9, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_1c

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    move/from16 v23, v5

    move/from16 v18, v6

    move-object/from16 v29, v12

    goto/16 :goto_d

    :cond_8
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    const-string/jumbo v0, "signature"

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    if-eqz v0, :cond_b

    :cond_9
    if-nez v9, :cond_a

    if-nez v0, :cond_b

    :cond_a
    if-eqz v9, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    :cond_b
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "removeDomainFilterRules() - Skipping invalid rule - signature mismatch"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v17, v0

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move/from16 v18, v6

    const-string v6, "Signature does not match with the previous added."

    invoke-direct {v4, v7, v0, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v8, v10

    nop

    :goto_4
    move/from16 v23, v5

    goto/16 :goto_e

    :cond_c
    move-object/from16 v17, v0

    move/from16 v18, v6

    const/4 v0, 0x0

    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1, v11, v5, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v4

    aput-object v4, v8, v10

    aget-object v4, v8, v10

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeDomainFilterRules() - Skipping rule - Failed to remove DNS"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    const/4 v0, 0x1

    :cond_e
    const-string v4, "blacklist"

    invoke-direct {v1, v15, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "whitelist"

    invoke-direct {v1, v15, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v16

    move-object/from16 v19, v16

    const/16 v16, 0x0

    if-eqz v7, :cond_f

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v20

    move-object/from16 v21, v20

    move-object/from16 v22, v4

    move-object/from16 v4, v21

    invoke-interface {v4, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v20

    or-int v16, v16, v20

    goto :goto_5

    :cond_f
    move-object/from16 v22, v4

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v21, v4

    or-int/lit8 v16, v16, 0x1

    :goto_5
    move/from16 v23, v5

    move-object/from16 v5, v19

    if-eqz v5, :cond_10

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v19

    move-object/from16 v24, v19

    move-object/from16 v25, v6

    move-object/from16 v6, v24

    invoke-interface {v6, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v19

    or-int v16, v16, v19

    goto :goto_6

    :cond_10
    move-object/from16 v25, v6

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v24, v6

    or-int/lit8 v16, v16, 0x1

    :goto_6
    if-nez v16, :cond_11

    if-nez v0, :cond_11

    move-object/from16 v26, v5

    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    move-object/from16 v27, v7

    const-string/jumbo v7, "removeDomainFilterRules() - Skipping rule - Rule is not in the database"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v28, v9

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v29, v12

    const-string v12, "The rule is not in the database."

    invoke-direct {v5, v7, v9, v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v8, v10

    goto/16 :goto_e

    :cond_11
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v12

    if-eqz v16, :cond_12

    const-string v5, ";"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ";"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_12
    move-object/from16 v5, v22

    move-object/from16 v7, v25

    :goto_7
    const-string/jumbo v9, "dns1"

    invoke-virtual {v15, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    goto :goto_8

    :cond_13
    const/4 v9, 0x0

    :goto_8
    const-string v12, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, ""

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    if-nez v0, :cond_15

    if-nez v9, :cond_14

    goto :goto_9

    :cond_14
    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move/from16 v32, v9

    goto/16 :goto_b

    :cond_15
    :goto_9
    iget-object v12, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v4

    const-string v4, "DomainFilterTable"

    invoke-virtual {v12, v4, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-gtz v4, :cond_16

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v31, v6

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move/from16 v32, v9

    const-string v9, "Failed to remove/update rule from the database."

    invoke-direct {v4, v12, v6, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v8, v10

    goto/16 :goto_e

    :cond_16
    move-object/from16 v31, v6

    move/from16 v32, v9

    const-string/jumbo v4, "networkId"

    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_17

    const-string v6, "REMOVE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v2, v11, v6, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v33, v4

    const-string v4, "The rule was successfuly removed/updated."

    invoke-direct {v6, v9, v12, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v8, v10

    goto :goto_a

    :cond_17
    move-object/from16 v33, v4

    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v12, "Failed to remove/update rule from the database."

    invoke-direct {v4, v6, v9, v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v8, v10

    :goto_a
    goto/16 :goto_e

    :cond_18
    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move/from16 v32, v9

    :goto_b
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "blacklist"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "whitelist"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "DomainFilterTable"

    invoke-virtual {v6, v9, v4, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v34, v4

    const-string v4, "Failed to remove/update rule from the database."

    invoke-direct {v6, v9, v12, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v8, v10

    goto :goto_e

    :cond_19
    move-object/from16 v34, v4

    const/4 v4, 0x0

    if-eqz v0, :cond_1a

    const-string/jumbo v6, "networkId"

    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    :cond_1a
    if-nez v4, :cond_1b

    new-instance v6, Ljava/lang/Integer;

    const/4 v9, -0x1

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v6

    goto :goto_c

    :cond_1b
    const/4 v9, -0x1

    :goto_c
    const-string v6, "REMOVE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v2, v11, v6, v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move/from16 v35, v0

    const-string v0, "The rule was successfuly removed/updated."

    invoke-direct {v6, v12, v9, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v8, v10

    goto :goto_e

    :cond_1c
    move/from16 v23, v5

    move/from16 v18, v6

    move-object/from16 v29, v12

    :goto_d
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeDomainFilterRules() - Skipping rule - This rule is not in the database"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The rule is not in the database."

    invoke-direct {v0, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v8, v10

    nop

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v18

    move/from16 v5, v23

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_1d
    move/from16 v23, v5

    move/from16 v18, v6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_f
    array-length v5, v8

    if-ge v4, v5, :cond_1f

    aget-object v5, v8, v4

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1f
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    :cond_20
    :goto_10
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    :cond_21
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v8

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDomainRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->removeDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "The domain filter on iptables api was successfully disabled."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
