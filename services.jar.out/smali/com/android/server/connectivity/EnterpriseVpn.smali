.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field private static final DBG:Z

.field private static final INVALID_PACKAGE_UID:I = -0x1

.field private static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field private static final NETWORKTYPE:Ljava/lang/String; = "Knox_VPN"

.field private static final NOTIFICATION_SIZE:I = 0x48

.field private static final PER_APP_VPN:Z = false

.field private static final REMOVE:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "knoxEnterpriseVpn"

.field private static final VPN_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private isMetaDataEnabled:Z

.field private mAddress:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Lcom/android/internal/net/VpnConfig;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

.field private mLabel:Ljava/lang/String;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mProfileName:Ljava/lang/String;

.field private mRouteInfo:Z

.field private mTun_type:I

.field private final mUserId:I

.field private mV6Address:Ljava/lang/String;

.field private netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string v4, ""

    iput-object v4, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    iput-boolean v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    iput-boolean v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    new-instance v4, Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {v4, v1}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v4, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->netId:I

    move-object/from16 v4, p2

    iput-object v4, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v5, p3

    iput-object v5, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v6, p4

    iput-object v6, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v7, p5

    iput-object v7, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    iput v2, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move-object/from16 v8, p1

    iput-object v8, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    iget-object v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v12, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    iget-object v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v11, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v11

    iput v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    const-string/jumbo v11, "knoxEnterpriseVpn"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mOwnerUID value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    if-eq v11, v0, :cond_0

    iget-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    iget v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v0, v11}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v0, v11}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v11, "knoxEnterpriseVpn"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to register mObserver : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v14, Lcom/android/server/connectivity/EnterpriseVpn$1;

    invoke-direct {v14, v1}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v11, Landroid/net/NetworkInfo;

    const/16 v12, 0x11

    const-string v13, "Knox_VPN"

    const-string v15, ""

    invoke-direct {v11, v12, v3, v13, v15}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v11, 0xf

    invoke-virtual {v3, v11}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    return-void

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/EnterpriseVpn;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->getUIDForPackage(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method private agentConnect(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    move-object v13, v0

    invoke-virtual {v13, v12}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setEstablishingVpnAppUid(I)V

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    const-string/jumbo v2, "knoxEnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    const-string/jumbo v2, "knoxEnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v13, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    const/4 v14, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iput v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    goto :goto_2

    :cond_4
    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    iput v14, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    goto :goto_2

    :cond_5
    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    iput v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    new-instance v0, Landroid/net/NetworkMisc;

    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    move-object v10, v0

    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/net/NetworkMisc;->allowBypass:Z

    iput-boolean v14, v10, Landroid/net/NetworkMisc;->knoxProfile:Z

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v14}, Landroid/net/NetworkInfo;->setKnoxProfile(Z)V

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget v2, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mTun_type:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setInterfaceType(I)V

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setprofileName(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setV4Address(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setV6Address(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v12}, Landroid/net/NetworkInfo;->setKnoxInterfaceName(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo;->setKnoxVpnClientType(I)V

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setKnoxVpnCallerUid(I)V

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v14}, Landroid/net/NetworkInfo;->setKnoxNetworkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string v0, "Connecting"

    iget-object v1, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-direct {v11, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn$2;

    iget-object v3, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v5, "Knox_VPN"

    iget-object v6, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v16, 0x65

    move-object v1, v0

    move-object v2, v11

    move-object/from16 v17, v15

    move-wide v14, v8

    move-object v8, v13

    move/from16 v9, v16

    move-object/from16 v16, v10

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v0, v11, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentConnect"

    invoke-direct {v11, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v10

    move-object/from16 v17, v15

    move-wide v14, v8

    :goto_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private closeInterface()V
    .locals 2

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string v1, "closeInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private dismissConnectingNotification()V
    .locals 0

    return-void
.end method

.method private dismissConnectingNotification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private enforceControlPermission()V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.vpndialogs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v5, :cond_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_0
    move-exception v3

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Unauthorized Caller"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string/jumbo v1, "getDomainsByProfileName()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "knoxEnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method private getNetIdForInterface(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x65

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getUIDForPackage(ILjava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x2080

    invoke-interface {v1, p2, v4, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "knoxEnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application uid for info :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v4, :cond_2

    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "knoxEnterpriseVpn"

    const-string v6, "application uid for info : null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v5

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "knoxEnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application uid for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "knoxEnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getUIDForPackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public agentDisconnect()V
    .locals 3

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agentDisconnect() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setKnoxNetworkState(Z)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    :cond_0
    return-void
.end method

.method public declared-synchronized clearConnection()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->closeInterface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v1, 0x104049e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v2, 0x104049d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x1080c32

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v4, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    nop

    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.VpnService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "no_config_vpn"

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-interface {v9, v4, v2, v7, v10}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v9, "android.permission.BIND_VPN_SERVICE"

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_6

    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v7, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    iget-boolean v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCreate(IZ)I

    move-result v7

    invoke-static {v7}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v8, v9}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    :try_start_6
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v9, "establish"

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/EnterpriseVpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_5

    new-instance v10, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-direct {v10, p0, v2}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V

    move-object v2, v10

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x4000001

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v4, v2, v11, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v10, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    :cond_3
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iput-object v10, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    iput-object v10, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->agentConnect(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    :try_start_7
    const-string/jumbo v2, "knoxEnterpriseVpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Established by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-object v7

    :cond_4
    :try_start_8
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot bind "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v10, "At least one address must be specified"

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    nop

    :try_start_9
    const-string/jumbo v8, "knoxEnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in creating tun interface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification()V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect()V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    :try_start_a
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not require "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/lang/SecurityException;

    const-string v7, "Restricted users cannot establish VPNs"

    invoke-direct {v2, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_b
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_2
    :try_start_c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_9
    :goto_3
    monitor-exit p0

    return-object v2

    :catch_3
    move-exception v4

    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataStateInIP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaUserIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPersonaUserIds > mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-boolean v2, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "knoxEnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPersonaUserIds > persona size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "knoxEnterpriseVpn"

    const-string/jumbo v3, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public hideNotification()V
    .locals 9

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string/jumbo v1, "hideNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "knoxEnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v6, 0x0

    const/16 v7, 0x3e9

    add-int/2addr v7, v5

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return-void
.end method

.method public hideNotification(I)V
    .locals 6

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideNotification > domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    const/16 v4, 0x3e9

    add-int/2addr v4, p1

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return-void
.end method

.method public refreshNotification(ZI)V
    .locals 7

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshNotification > domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", optionAdd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v3, v4, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    add-int/2addr v5, p2

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "knoxEnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setMetaDataStateInIP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    return-void
.end method

.method public showNotification(Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showNotification > profileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , optionAdd : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification()V

    :cond_1
    iget-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v5, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v5, :cond_d

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/net/VpnConfig;->startTime:J

    if-eqz v3, :cond_c

    if-eqz v5, :cond_c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string/jumbo v8, "showNotification > KNOX 2.0 enabled"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v8, 0x1

    const/16 v9, 0x3e9

    const/4 v10, 0x0

    if-ne v0, v8, :cond_6

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string/jumbo v8, "showNotification > vpn type is system"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v0, v5, v2, v8}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    iget v8, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/2addr v9, v8

    new-instance v8, Landroid/os/UserHandle;

    iget v11, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v8, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v10, v9, v0, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v8, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "knoxEnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showNotification > domain : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    goto/16 :goto_3

    :cond_6
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string/jumbo v8, "showNotification > vpn type is per-app"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :try_start_0
    iget-object v0, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iget-object v13, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v13, v5, v2, v12}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v13

    add-int v14, v9, v12

    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v10, v14, v13, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v14, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v14, :cond_8

    const-string/jumbo v14, "knoxEnterpriseVpn"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showNotification > keyicon notified to user "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    nop

    const/4 v10, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v13, v5, v10, v12}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v13

    add-int v14, v9, v12

    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v12}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v14, v13, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v14, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v14, :cond_a

    const-string/jumbo v14, "knoxEnterpriseVpn"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showNotification > keyicon notified to user "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    nop

    const/16 v9, 0x3e9

    goto :goto_2

    :cond_b
    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v8, "knoxEnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_c
    return-void

    :cond_d
    :goto_4
    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string v6, "Error : can not init"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized updateNotification()V
    .locals 14

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification > user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x104049e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v5, 0x104049d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "knoxEnterpriseVpn"

    const-string/jumbo v6, "updateNotification > KNOX 2.0 enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v6, 0x1

    const/16 v7, 0x3e9

    const/4 v8, 0x0

    if-ne v5, v6, :cond_4

    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "knoxEnterpriseVpn"

    const-string/jumbo v6, "updateNotification > vpn type is system"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/2addr v7, v6

    new-instance v6, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v6, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v7, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "knoxEnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_1

    :cond_4
    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "knoxEnterpriseVpn"

    const-string/jumbo v6, "updateNotification > vpn type is per-app"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v11

    add-int v12, v7, v10

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v12, v11, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_6
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
