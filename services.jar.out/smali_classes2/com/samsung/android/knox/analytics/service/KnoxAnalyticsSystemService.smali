.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;
.super Lcom/android/server/SystemService;
.source "KnoxAnalyticsSystemService.java"


# static fields
.field private static final ANALYTICS_SERVICE:Ljava/lang/String; = "knox_analytics"

.field private static final BOOT_EVENT_NAME:Ljava/lang/String; = "bootIntegrity"

.field private static final EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field private static final EVENT_SCHEMA_VERSION:I = 0x1

.field public static final KNOX_ANALYTICS_SYSTEM_SERVICE_VERSION:Ljava/lang/String; = "v1.0.0"

.field private static final KNOX_BOOT_INTEGRITY:Ljava/lang/String; = "KNOX_BOOT_INTEGRITY"

.field private static final ONE_MINUTE_IN_MS:I = 0xea60

.field private static final PACKAGE_NAME_PARAMETER_NAME:Ljava/lang/String; = "pN"

.field private static final PERMISSION_TYPE_PARAMETER_NAME:Ljava/lang/String; = "prm"

.field private static final PUB_KEY_MD5_PARAMETER_NAME:Ljava/lang/String; = "pkMD5"

.field private static final PUB_KEY_SHA256_PARAMETER_NAME:Ljava/lang/String; = "pkSHA256"

.field private static final SERVICE_ACTIVATION_EVENT_NAME:Ljava/lang/String; = "activationChanged"

.field private static final STATUS_CHANGED_EVENT_NAME:Ljava/lang/String; = "statusChanged"

.field private static final STATUS_PARAMETER_NAME:Ljava/lang/String; = "st"

.field private static final TAG:Ljava/lang/String;

.field private static final TRIGGER_ELM:I = 0x0

.field private static final TRIGGER_EVENT_NAME:Ljava/lang/String; = "serviceChanged"

.field private static final TRIGGER_PARAMETER_NAME:Ljava/lang/String; = "srv"

.field private static final TRUSTBOOT_NAME:Ljava/lang/String; = "tb"

.field private static final WARRANTY_BIT_NAME:Ljava/lang/String; = "wb"


# instance fields
.field private mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field private mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

.field private final mBootCompletedLock:Ljava/lang/Object;

.field private mBootPhase:I

.field private mContext:Landroid/content/Context;

.field private mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

.field private mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field private mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

.field private mIsSystemServiceRunning:Z

.field private final mSystemServiceRunningLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mSystemServiceRunningLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->startSystemService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Lcom/samsung/android/knox/analytics/service/EventQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mSystemServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEvent(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEvent(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationUpdateEvent(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logIcccEventAfterBootCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatusWhenBootCompleted(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationEventAfterStart()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->stopSystemService()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEventAfterStart(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEventAfterStart(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    return-object v0
.end method

.method private broadcastAnalyticsStatusWhenBootCompleted(ZZ)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "broadcastAnalyticsStatusWhenBootCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastAnalyticsStatus(Landroid/content/Context;ZZ)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$3;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkVersioningBlobWhenBootCompleted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "checkVersioningBlobWhenBootCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method private deinitializeDatabaseSizeObserver()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "deinitializeDatabaseSizeObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    :cond_0
    return-void
.end method

.method private initializeDatabaseSizeObserver()V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "initializeDatabaseSizeObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mDatabaseSizeObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->start()V

    return-void
.end method

.method private initializeEventQueue()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "initializeEventQueue()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/analytics/service/EventQueue;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->start()V

    return-void
.end method

.method private logActivationEventAfterStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logActivationEventAfterStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$6;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method private logActivationUpdateEvent(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logActivationUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const-string v2, "activationChanged"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logActivationUpdateEvent(): EventQueue not started!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logDeactivationEvent()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "Won\'t log deactivation because it is already off!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationUpdateEvent(Z)V

    return-void
.end method

.method private logIcccEventAfterBootCompleted()V
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logIcccEventAfterBootCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    const-string v1, "iccc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    new-instance v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_BOOT_INTEGRITY"

    const-string v3, "bootIntegrity"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_0

    sget-object v2, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v3, "logIcccEventAfterBootCompleted(): ICCC not started!"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const v2, -0xdfffff

    invoke-virtual {v0, v2}, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->getSecureData(I)I

    move-result v2

    const-string/jumbo v3, "tb"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const v3, -0xffff4

    invoke-virtual {v0, v3}, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->getSecureData(I)I

    move-result v3

    const-string/jumbo v5, "wb"

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v2, "logIcccEventAfterBootCompleted(): Remote exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private logStatusChangedEvent(IZLjava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logStatusChangedEvent( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const-string/jumbo v2, "statusChanged"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "srv"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pN"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "prm"

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/server/enterprise/utils/Utils;->getPermissionType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v2, v4

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lcom/android/server/enterprise/utils/Utils;->getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log pubkey( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pkMD5"

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pkSHA256"

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method private logStatusChangedEventAfterStart(IZLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logStatusChangedEventAfterStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEvent(IZLjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$5;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method private logTriggerEvent(IZLjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logTriggerEvent( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const-string/jumbo v2, "serviceChanged"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "srv"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    const-string/jumbo v1, "pN"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method private logTriggerEventAfterStart(IZLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string v1, "logTriggerEventAfterStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEvent(IZLjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;-><init>(Ljava/lang/Runnable;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private startSystemService()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSystemService()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSystemService(): can\'t start, already running!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->initializeEventQueue()V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSystemService(): new Impl"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const-string v0, "knox_analytics"

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mImpl:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "knox_analytics_proxy"

    new-instance v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->checkVersioningBlobWhenBootCompleted()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->notifyVersioningCompleted()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->initializeDatabaseSizeObserver()V

    return-void
.end method

.method private stopSystemService()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSystemService()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSystemService(): can\'t stop, already stopped!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->deinitializeDatabaseSizeObserver()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logDeactivationEvent()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mIsSystemServiceRunning:Z

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootPhase:I

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mBootCompletedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase(PHASE_SYSTEM_SERVICES_READY)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart() knox_analytics"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V

    return-void
.end method
