.class final Lcom/samsung/android/knox/analytics/service/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;
    }
.end annotation


# static fields
.field private static final API_USAGE_FEATURE_NAME:Ljava/lang/String; = "API_USAGE"

.field private static final API_USAGE_GET_KEY:Ljava/lang/String; = "isGetterApi"

.field public static final EVENT_QUEUE_ANALYTICS_DATA_KEY:Ljava/lang/String; = "KnoxAnalyticsData"

.field public static final EVENT_QUEUE_MSG_CLEANED_LOG_API:I = 0x3

.field public static final EVENT_QUEUE_MSG_KA_DEACTIVATION:I = 0x2

.field public static final EVENT_QUEUE_MSG_LOG_API:I = 0x1

.field private static final HT_NAME:Ljava/lang/String; = "EventQueue"

.field private static final PACKAGE_NAME_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_Pid_PackageNameFlag"

.field private static final PACKAGE_NAME_KEY:Ljava/lang/String; = "pN"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_TYPE_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_UserId_UserTypeFlag"

.field private static final USER_TYPE_KEY:Ljava/lang/String; = "uT"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeactivationLock:Ljava/lang/Object;

.field private mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

.field private mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mIsStarted:Z

.field private mVersioningCompleted:Z

.field private final mVersioningCompletedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->waitVersioningCompleted()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->stop()V

    return-void
.end method

.method private addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "addEvent(): feature blacklisted, discarding event."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->toJSONString(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    invoke-static {v1, v2, v3, v0, p2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addEvent(Landroid/content/Context;JLjava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v4, "addEvent(): error adding event, aborting."

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method private checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkEventFeatureBlacklisted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v2, "Features Blacklist Observer is null, can\'t check!"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->getFeatureBlacklist()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v2, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v3, "Features Blacklist is null, can\'t check!"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isGetterApi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "isGetterApi"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "isGetterApi"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->hasFeatureName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->getDisableApi()Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    if-ne v3, v6, :cond_4

    return v4

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v3

    const-string v6, "API_USAGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->getDisableApi()Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->GET:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    if-ne v3, v6, :cond_5

    if-eqz v2, :cond_5

    return v4

    :cond_5
    return v1

    :cond_6
    goto :goto_0

    :cond_7
    return v1
.end method

.method private checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkFillPackageName()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ReservedKey_Pid_PackageNameFlag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ReservedKey_Pid_PackageNameFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "ReservedKey_Pid_PackageNameFlag"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-ne v0, v2, :cond_1

    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v2, "checkFillPackageName() - invalid pid."

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->getAppNameByPID(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "pN"

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkFillUserType()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ReservedKey_UserId_UserTypeFlag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ReservedKey_UserId_UserTypeFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "ReservedKey_UserId_UserTypeFlag"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-ne v0, v2, :cond_1

    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFillUserType() - invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserType(I)I

    move-result v3

    if-ne v3, v2, :cond_2

    sget-object v2, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v4, "checkFillUserType() - Couldn\'t get userType"

    invoke-static {v2, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v2, "uT"

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method private getAppNameByPID(I)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppNameByPID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v3, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v4, "getAppNameByPID(): nill processInfoList"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_1

    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v4, "getAppNameByPID(): not found"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->removeMessages(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitVersioningCompleted()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): waiting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "waitVersioningCompleted(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): done"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    return v0
.end method

.method public notifyVersioningCompleted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "KnoxAnalyticsData"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EventQueue"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->start()V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
