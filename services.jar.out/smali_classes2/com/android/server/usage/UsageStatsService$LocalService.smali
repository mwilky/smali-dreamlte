.class final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$LocalService;->isAppIdleParoleOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    return-void
.end method

.method public applyRestoredPayload(ILjava/lang/String;[B)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1100(Lcom/android/server/usage/UsageStatsService;)J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$1200(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->applyRestoredPayload(Ljava/lang/String;[B)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v0

    return v0
.end method

.method public getBackupPayload(ILjava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1100(Lcom/android/server/usage/UsageStatsService;)J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$1200(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdleUidsForUser(I)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->getIdleUidsForUser(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public isAppIdleParoleOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    return v0
.end method

.method public onActiveAdminAdded(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->addActiveDeviceAdmin(Ljava/lang/String;I)V

    return-void
.end method

.method public onAdminDataAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->onAdminDataAvailable()V

    return-void
.end method

.method public prepareShutdown()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    return-void
.end method

.method public queryUsageStatsForUser(IIJJZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    return-void
.end method

.method public reportAppJobState(Ljava/lang/String;IIJ)V
    .locals 0

    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "UsageStatsService"

    const-string v1, "Configuration event reported with a null config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const/4 v1, 0x5

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;II)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a component name"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 11

    if-nez p1, :cond_0

    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a component name"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput p4, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$700(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p4, v4, :cond_1

    if-ne p4, v3, :cond_5

    :cond_1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$700(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v9}, Lcom/android/server/usage/UsageStatsService;->access$800(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v9}, Lcom/android/server/usage/UsageStatsService;->access$800(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_2

    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v8, 0x0

    :cond_2
    if-eqz v8, :cond_4

    if-ne p4, v4, :cond_3

    invoke-interface {v8, p1, p2}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    if-ne p4, v3, :cond_4

    invoke-interface {v8, p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->notePauseComponent(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$700(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$800(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a package name"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->postReportExemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method public reportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method public reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const/16 v1, 0xc

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a package name or a channel ID"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const/16 v1, 0x8

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a package name or a shortcut ID"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->setActiveAdminApps(Ljava/util/Set;I)V

    return-void
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppStandbyController;->setLastJobRunTime(Ljava/lang/String;IJ)V

    return-void
.end method
