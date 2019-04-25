.class public Lcom/android/server/display/AppPermissionMonitorDisplay;
.super Ljava/lang/Object;
.source "AppPermissionMonitorDisplay.java"


# static fields
.field private static final APM_FLAG_SCNCAP:I = 0x100000

.field private static final APP_UID:I = 0x2710

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEFAULT_MONITOR:Ljava/lang/String; = "1048647"

.field private static final LOG_TAG_APM:Ljava/lang/String; = "DisplayManagerService_APM : "

.field private static final TIME_INTERVAL:J = 0xea60L


# instance fields
.field private mAPM:Landroid/os/IPermissionMonitor;

.field private mAppPermMonitor:Ljava/lang/String;

.field private mCallingCacheDisplay:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private final mIsAppPermissionMonitorSupported:Z

.field private mIsMonitoredFeature:Z

.field private mSEAMS:Lcom/samsung/android/knox/seams/ISEAMS;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mCallingCacheDisplay:Landroid/util/LruCache;

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mSEAMS:Lcom/samsung/android/knox/seams/ISEAMS;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mIsAppPermissionMonitorSupported:Z

    return-void
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/AppPermissionMonitorDisplay;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public checkUser(ILjava/lang/String;)I
    .locals 3

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method checkingEnforcing(I)Z
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mSEAMS:Lcom/samsung/android/knox/seams/ISEAMS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mSEAMS:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "DisplayManagerService_APM : "

    const-string v1, "Enforcing User"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DisplayManagerService_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enforcing User :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnforcedInUser(Landroid/content/pm/ApplicationInfo;I)I
    .locals 1

    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/display/AppPermissionMonitorDisplay;->checkingEnforcing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AppPermissionMonitorDisplay;->isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)I
    .locals 2

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    return p2

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string v1, "apm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/display/AppPermissionMonitorDisplay;->checkUser(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v1, "untrusted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string v1, "apm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return p2

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public sendNotificationForAppPermissionMonitor(II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mIsAppPermissionMonitorSupported:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/display/AppPermissionMonitorDisplay;->isCalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "persist.app.permission.monitor"

    const-string v2, "1048647"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mAppPermMonitor:Ljava/lang/String;

    const/high16 v1, 0x100000

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mAppPermMonitor:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mIsMonitoredFeature:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "DisplayManagerService_APM : "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception notify permission monitor service about access from APM_FLAG_SCNCAP nfe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mIsMonitoredFeature:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x2710

    if-lt p2, v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mAPM:Landroid/os/IPermissionMonitor;

    if-nez v2, :cond_1

    const-string/jumbo v2, "permission.monitor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPermissionMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mAPM:Landroid/os/IPermissionMonitor;

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AppPermissionMonitorDisplay;->mAPM:Landroid/os/IPermissionMonitor;

    invoke-interface {v2, p2, p1, v1}, Landroid/os/IPermissionMonitor;->sendAPMNotification(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "DisplayManagerService_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service about access from APM_FLAG_SCNCAP ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v2, "DisplayManagerService_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notify permission monitor service about access from APM_FLAG_SCNCAP re = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_2
    :goto_3
    return-void
.end method
