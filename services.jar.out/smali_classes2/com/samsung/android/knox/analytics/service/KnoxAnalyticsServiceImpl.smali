.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;
.super Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;
.source "KnoxAnalyticsServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

.field private final mContext:Landroid/content/Context;

.field private mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field private mIsKnoxAnalyticsActivated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    return p1
.end method


# virtual methods
.method public log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "log(): null data"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "KnoxAnalytics has been shutdown, can\'t log."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceCallingPermissionForLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "mEventQueue is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->convertToKnoxAnalyticsSDK(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method
