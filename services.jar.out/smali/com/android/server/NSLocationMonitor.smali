.class public Lcom/android/server/NSLocationMonitor;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NSLocationMonitor$ServiceCallback;
    }
.end annotation


# static fields
.field private static final BLACKLIST_CHANGED:I = 0xb

.field private static final BLACKLIST_DEFAULT_VERSION:I = -0x1

.field private static final DEPRECATED_PERMISSION_MONITOR:I = 0x190

.field private static final GPS_BLACKLIST:Ljava/lang/String; = "gpsblacklist"

.field private static final GPS_WHITELIST:Ljava/lang/String; = "gpswhitelist"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final LOCATION_LISTENER_BLACKLIST_CHANGED:I = 0xd

.field private static final MEASUREMENT_LISTENER_BLACKLIST_CHANGED:I = 0x10

.field private static final MSG_GET_LAST_LOCATION:I = 0x5

.field private static final MSG_IMPORTANCE_CHANGED:I = 0x7

.field private static final MSG_LOCATION_REMOVE:I = 0x2

.field private static final MSG_LOCATION_REQUEST:I = 0x1

.field private static final MSG_MONITOR_SERVICE_CONNECTED:I = 0x1f4

.field private static final MSG_RECEIVER_WAKELOCK:I = 0x6

.field protected static final MSG_REGISTER_MEASUREMENT_CALLBACK:I = 0xc9

.field private static final MSG_SETTING_CHANGED:I = 0xcb

.field protected static final MSG_UNREGISTER_MEASUREMENT_CALLBACK:I = 0xca

.field private static final NSFLP_FEATURE:Ljava/lang/String; = "com.sec.feature.nsflp"

.field protected static final NSFLP_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.location.nsflp2.nsmonitor.NSLocationManager"

.field protected static final NSFLP_MONITOR_SERVICE:Ljava/lang/String; = "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

.field private static final NSFLP_PACKAGE:Ljava/lang/String; = "com.sec.location.nsflp2"

.field private static final PAUSE_PROVIDER_NSFLP:I = 0x0

.field private static final RESUME_PROVIDER_WITHOUT_WORKSOURCE_NSFLP:I = 0x2

.field private static final RESUME_PROVIDER_WITH_WORKSOURCE_NSFLP:I = 0x1

.field private static final STATUS_LISTENER_BLACKLIST_CHANGED:I = 0xf

.field private static final SUPPORT_FREEZE_MANAGER:I = 0x154

.field private static final SUPPORT_LOCATION_MONITOR:I = 0xd2

.field private static final SUPPORT_PERMISSION_MONITOR:I = 0x136

.field private static final TAG:Ljava/lang/String; = "NSLocationMonitor"

.field private static final THROTTLING_WHITELIST:Ljava/lang/String; = "throttlingwhitelist"

.field private static final THROTTLING_WHITELIST_CHANGED:I = 0xe

.field private static final WHITELIST_CHANGED:I = 0xc

.field private static final mValidProviderList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDisconnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureLevel:I

.field private final mLocBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocListenerBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mManagerServiceConnection:Landroid/content/ServiceConnection;

.field private final mMeasurementListenerBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorBound:Z

.field private mMonitorService:Landroid/os/Messenger;

.field private mMonitorServiceConnection:Landroid/content/ServiceConnection;

.field private mNSLocationManagerBound:Z

.field private mNsLocationManager:Landroid/location/INSLocationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviderPaused:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/location/ProviderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;

.field private final mStatusListenerBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemRunningTime:J

.field private final mWorkSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "network"

    const-string/jumbo v3, "fused"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NSLocationMonitor$ServiceCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/NSLocationMonitor;->mNSLocationManagerBound:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    iput-boolean v0, p0, Lcom/android/server/NSLocationMonitor;->mMonitorBound:Z

    new-instance v0, Lcom/android/server/NSLocationMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/NSLocationMonitor$1;-><init>(Lcom/android/server/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/NSLocationMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/NSLocationMonitor$2;-><init>(Lcom/android/server/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/NSLocationMonitor;->mManagerServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/NSLocationMonitor;->mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSLocationMonitor;->mSystemRunningTime:J

    invoke-direct {p0}, Lcom/android/server/NSLocationMonitor;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/NSLocationMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/android/server/NSLocationMonitor;Landroid/location/INSLocationManager;)Landroid/location/INSLocationManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor;->mNsLocationManager:Landroid/location/INSLocationManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/NSLocationMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorBound:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/NSLocationMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/NSLocationMonitor;->mNSLocationManagerBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NSLocationMonitor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/NSLocationMonitor;->mSystemRunningTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NSLocationMonitor;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    return-object v0
.end method

.method private addBackgroundThrottlingWhitelistByNsflp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "NSLocationMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addToLocationList(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x690e3123

    if-eq v2, v3, :cond_1

    const v3, 0x48f9b7b3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "gpsblacklist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "gpswhitelist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    nop

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.feature.nsflp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.feature.nsflp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NS-FLP Feature available, nsFlpFeatureLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-lt v0, v1, :cond_3

    const-string v0, "NSLocationMonitor"

    const-string v1, "Try to bind NSMonitorService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.location.nsflp2"

    const-string v2, "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    const v4, 0x4000001

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    sget-object v1, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v5}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v2, 0x154

    if-lt v1, v2, :cond_2

    const-string v1, "NSLocationMonitor"

    const-string v2, "Try to bind NSManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.location.nsflp2"

    const-string v3, "com.sec.location.nsflp2.nsmonitor.NSLocationManager"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/NSLocationMonitor;->mManagerServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    :cond_2
    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not binding the ManagerService by featureLevel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_3
    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not binding the MonitorService by featureLevel, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method protected getBackgroundThrottleWhitelistByNsflp()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    return-object v0
.end method

.method protected getGPSUsingApps()Ljava/util/Map;
    .locals 5

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "getGPSUsingApps() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/NSLocationMonitor;->mNSLocationManagerBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mNsLocationManager:Landroid/location/INSLocationManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mNsLocationManager:Landroid/location/INSLocationManager;

    invoke-interface {v0}, Landroid/location/INSLocationManager;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "NSLocationMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to getGPSUsingApps due to  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", return null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v2, "mNSLocationManager is not connected, return null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getKernelActiveSinceTime(Ljava/lang/String;)J
    .locals 11

    const/4 v0, 0x5

    const-string v1, "/d/wakeup_sources"

    const/4 v2, 0x0

    const-wide/16 v3, -0x5

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/d/wakeup_sources"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "[\\t]+"

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x6

    if-ge v8, v9, :cond_1

    const-wide/16 v8, -0x1

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    :goto_0
    return-wide v3

    :goto_1
    nop

    return-wide v8

    :cond_1
    const/4 v8, 0x5

    :try_start_2
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    nop

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v10

    goto :goto_0

    :goto_2
    nop

    return-wide v8

    :catch_2
    move-exception v8

    const-wide/16 v9, -0x2

    nop

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v9

    goto :goto_0

    :goto_3
    nop

    return-wide v9

    :cond_2
    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    const-wide/16 v8, -0x3

    nop

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v6

    goto :goto_0

    :goto_4
    nop

    return-wide v8

    :cond_3
    nop

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_5
    move-exception v5

    goto :goto_0

    :goto_5
    nop

    const-wide/16 v3, -0x6

    return-wide v3

    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    nop

    throw v5

    :catch_6
    move-exception v5

    const-wide/16 v6, -0x4

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    nop

    return-wide v6
.end method

.method protected getKernelWakelockTime(Ljava/lang/String;)J
    .locals 8

    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    new-instance v1, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/os/KernelWakelockStats;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    if-nez v3, :cond_2

    const-wide/16 v6, -0x2

    return-wide v6

    :cond_2
    iget-wide v6, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    return-wide v6

    :cond_3
    goto :goto_0

    :cond_4
    const-wide/16 v3, -0x3

    return-wide v3

    :cond_5
    :goto_1
    const-wide/16 v3, -0x1

    return-wide v3
.end method

.method protected getLocBlacklist()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getLocWhitelist()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getProviderRequest(Ljava/lang/String;)Lcom/android/internal/location/ProviderRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method protected getValidProviders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    return-object v0
.end method

.method protected getWorkSource(Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    return-object v0
.end method

.method protected isBackgroundThrottlePackageByNsflp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isLocListenerBlacklist(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isMeasurementListenerBlacklist(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isProviderPaused(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isStatusListenerBlacklist(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected sendGetLastLocationInfo(Landroid/location/LocationRequest;Ljava/lang/String;II)V
    .locals 4

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0x136

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "provider"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "interval"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "quality"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service for permission monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "NSLocationMonitor"

    const-string/jumbo v2, "sendMessage msg is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget v1, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v2, 0xd2

    if-ge v1, v2, :cond_1

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessage, nsFlpFeatureLevel is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_7

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "enable"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    move-object v6, v9

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    const-string v2, "NSLocationMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is already included in mLocBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return v0

    :cond_4
    const-string v8, "NSLocationMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "is added to mLocBlacklist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    const-string v8, "NSLocationMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is included in mLocBlacklist, so remove it"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    monitor-exit v7

    goto :goto_3

    :cond_6
    const-string v2, "NSLocationMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not included in mLocBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "NSLocationMonitor"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    :goto_4
    return v2
.end method

.method protected sendRegisterMeasurementInfo(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "sendAddListenerInfo, binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "listenerId"

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendRemoveInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_0

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "listenerid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendRequestInfo(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;ILjava/lang/Throwable;)V
    .locals 6

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_0

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "provider"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "listenerid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "interval"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "quality"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "importance"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "throwable"

    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v3, "listenerType"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendSettingChangedInfo(IIZ)V
    .locals 3

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocationenabledForUser, uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xcb

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendUidImportanceChanged(II)V
    .locals 3

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_0

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "importance"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendUnregisterMeasurementInfo(Landroid/os/IBinder;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "sendRemoveListenerInfo, binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "listenerId"

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xca

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setDataFromNSFLP(ILandroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x1395

    if-eq v0, v1, :cond_0

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not allowed to access setDataFromNSFLP function"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataFromNSFLP, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "setData for mMeasurementListenerBlacklist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "measurementlistenerblacklist"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size of mMeasurementListenerBlacklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "setData for mStatusListenerBlacklist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "statuslistenerblacklist"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size of mStatusListenerBlacklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v0, "throttlingwhitelist"

    invoke-direct {p0, v0, p2}, Lcom/android/server/NSLocationMonitor;->addBackgroundThrottlingWhitelistByNsflp(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size of Throttling Whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "setData for mLocListenerBlacklist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "loclistenerblacklist"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size of mLocListenerBlacklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "gpswhitelist"

    invoke-direct {p0, v0, p2}, Lcom/android/server/NSLocationMonitor;->addToLocationList(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size of mLocWhitelist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "gpsblacklist"

    invoke-direct {p0, v0, p2}, Lcom/android/server/NSLocationMonitor;->addToLocationList(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size of mLocBlacklist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateProviderPaused(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected updateRequestInfo(Ljava/lang/String;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
