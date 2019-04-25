.class public Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
.super Ljava/lang/Object;
.source "NetworkAnalytics.java"


# static fields
.field private static final KNOX_NETWORK_ANALYTICS_SERVICE:Ljava/lang/String; = "knoxnap"

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics"

.field private static mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v1, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    if-nez v0, :cond_0

    const-string v0, "knoxnap"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    return-object v0
.end method


# virtual methods
.method public getNPAVersion()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called getNPAVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->getNPAVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in getNPAVersion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkMonitorProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called getNetworkMonitorProfiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->getNetworkMonitorProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in getNetworkMonitorProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called getProfiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->getProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in getProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isProfileActivated(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called isProfileActivatedForUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->isProfileActivatedForUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in getNetworkMonitorProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public registerNetworkMonitorProfile(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called registerNetworkMonitorProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->registerNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in registerNetworkMonitorClient"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "The service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public start(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "record_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in start"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public start(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in start"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public stop(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public unregisterNetworkMonitorProfile(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "NetworkAnalytics"

    const-string v1, "Called unregisterNetworkMonitorProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->unregisterNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics"

    const-string v2, "RemoteException in unregisterNetworkMonitorProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
