.class public Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
.super Ljava/lang/Object;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;,
        Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$Jitter;,
        Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;
    }
.end annotation


# static fields
.field public static final ACCESS_LOWEST_NET_SPEED:I = 0x1e

.field private static final BG_MIN_NETSPEED_LIMIT_RATE:I = 0xa

.field private static final BG_NETWORK_LIMIT_RATE:I = 0x1e

.field public static final CMD_BG_NET_SPEED_DOWN_LIMIT:I = 0x3

.field public static final CMD_BG_NET_SPEED_START_LIMIT:I = 0x1

.field public static final CMD_BG_NET_SPEED_UP_LIMIT:I = 0x2

.field public static final CMD_INIT_STATUS:I = 0x0

.field public static final CMD_PREVECT_JITTER:I = -0x1

.field public static final DEBUG:Z

.field private static final HIGH_NET_LIMIT_RATE:I = 0x46

.field private static final HIGH_NET_SPEED:I = 0x2710

.field private static final LOW_NET_LIMIT_RATE:I = 0x1e

.field public static final MAX_LIMIT_APP_NUM:I = 0x5

.field private static final MID_NET_LIMIT_RATE:I = 0x32

.field public static final MSG_ADD_BG_SPEED_LIMIT:I = 0x12

.field public static final MSG_CHECK_APP_CHANGE:I = 0x4

.field public static final MSG_CHECK_SPCM_PARAMETERES:I = 0x14

.field public static final MSG_DETECTION_PERIOD:I = 0x2

.field public static final MSG_DETECTION_PERIOD_LONG:I = 0x3

.field public static final MSG_LCD_OFF:I = 0x6

.field public static final MSG_LCD_ON:I = 0x5

.field public static final MSG_NETWORK_CONNECTED:I = 0x1

.field public static final MSG_NETWORK_DISCONNECTED:I = 0xa

.field public static final MSG_REMOVE_ALL_BG_SPEED_LIMIT:I = 0x13

.field public static final MSG_REMOVE_BG_SPEED_LIMIT:I = 0x11

.field public static final MSG_USER_LIMIT_ALL:I = 0x1b

.field public static final MSG_USER_LIMIT_ONE:I = 0x1a

.field public static final MSG_VPN_CONNECTED:I = 0xb

.field public static final PERIOD_LONG_TIME_MS:I = 0x2710

.field public static final PERIOD_LONG_TIME_SEC:I = 0xa

.field public static final PERIOD_TIME_MS:I = 0xbb8

.field public static final PERIOD_TIME_SEC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NetSpeedPolicy"

.field private static final lOW_NET_SPEED:I = 0x3e8

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mTimesLowTotalSpeed:I


# instance fields
.field public isScreenOn:Z

.field private mCandidateApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

.field public mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

.field public mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

.field private mLastFGTotalSpeed:I

.field public mLimitAllAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mLimitOneAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

.field private mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

.field private mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

.field public mUserAllLimit:Z

.field public mUserLimit:Z

.field public needUpdateAvgSpeed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->DEBUG:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mTimesLowTotalSpeed:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mUserLimit:Z

    iput-boolean v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mUserAllLimit:Z

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->getInstance()Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    new-instance v1, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    invoke-direct {v1, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;-><init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;)V

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    new-instance v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    invoke-direct {v1, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)V

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    new-instance v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    const-string v3, "com.android.providers.downloads"

    invoke-virtual {v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getUidForPackageName(Ljava/lang/String;)I

    move-result v2

    const-string v3, "com.android.providers.downloads"

    invoke-direct {v1, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetSpeedPolicy"

    invoke-direct {v1, v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    sget-object v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->checkAppNetworkStatus(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->checkTotalNetworkStatus()Z

    move-result v0

    return v0
.end method

.method private checkAppNetworkStatus(Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "FgNetspeedRelease"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "TotalNetspeedLose"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "BGAppDownLimit"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFGAppList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBGAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->getMaxSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->getMaxSpeedBGAppExceptUsefulApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "NetSpeedPolicy"

    const-string v6, "BG app only have one app using network and the app is music app."

    invoke-static {v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v5, v5, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v7, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FG App Uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  packagename "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "use download provider download and provider services has be limit."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAppLimit(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setCurSpeed(I)V

    const-string v5, "NetSpeedPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " speed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "use donload provider services download."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    :cond_5
    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFgTotalSpeed()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBgTotalSpeed()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getAvgPhySpeed()I

    move-result v8

    const-string v9, "NetSpeedPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " avgPhySpeed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "maxFGSpeedApp uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " speed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " maxBGSpeedApp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " TotalSpeed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x1e

    if-eqz p1, :cond_6

    iget-object v10, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v10

    if-le v10, v9, :cond_12

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v9

    mul-int/lit8 v10, v7, 0x1e

    div-int/lit8 v10, v10, 0x64

    if-le v9, v10, :cond_12

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v9

    if-nez v9, :cond_12

    const/4 v0, 0x1

    const-string v9, "CMD_BG_NET_SPEED_START_LIMIT"

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string v9, "BG App consume bandwidth"

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v10

    if-le v10, v9, :cond_11

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v10

    if-le v10, v9, :cond_11

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v9

    mul-int/lit8 v10, v7, 0x1e

    div-int/lit8 v10, v10, 0x64

    if-le v9, v10, :cond_11

    const/4 v0, 0x1

    iget-object v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "CMD_BG_NET_SPEED_START_LIMIT"

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string v9, "FG&BG  Apps consume netowrk bandwidth"

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const/4 v10, 0x2

    if-ge v5, v9, :cond_9

    const-string v9, "NetSpeedPolicy"

    const-string v11, "Fg app speed is too low"

    invoke-static {v9, v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v11, "FgNetspeedRelease"

    invoke-virtual {v9, v11, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "FG App no speed"

    invoke-virtual {p0, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    mul-int/lit8 v9, v8, 0xa

    div-int/lit8 v9, v9, 0x64

    if-ge v6, v9, :cond_b

    sub-int v9, v8, v5

    div-int/lit8 v11, v8, 0x4

    if-le v9, v11, :cond_b

    const-string v9, "NetSpeedPolicy"

    const-string/jumbo v11, "limit is lowest"

    invoke-static {v9, v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v11, "FgNetspeedRelease"

    invoke-virtual {v9, v11, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "Limited bg app speed too low"

    invoke-virtual {p0, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    iget v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int v9, v5, v9

    div-int/lit8 v11, v8, 0x4

    if-le v9, v11, :cond_e

    div-int/lit8 v9, v5, 0x2

    if-le v6, v9, :cond_e

    sub-int v9, v8, v7

    div-int/lit8 v11, v8, 0x4

    if-ge v9, v11, :cond_e

    const-string v9, "NetSpeedPolicy"

    const-string/jumbo v10, "limit increase"

    invoke-static {v9, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v9

    if-eqz v9, :cond_c

    const/4 v0, 0x2

    const-string v9, "CMD_BG_NET_SPEED_UP_LIMIT"

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string v9, "Continue to enhance BG net bandwidth limit "

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto :goto_1

    :cond_c
    iget-object v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    const-string v9, "CMD_BG_NET_SPEED_START_LIMIT"

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string v9, "Continue to enhance BG net bandwidth limit "

    iput-object v9, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    :goto_1
    iget-object v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    iget-object v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->getMinSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v11, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int/2addr v11, v5

    div-int/lit8 v12, v8, 0x5

    if-gt v11, v12, :cond_f

    sub-int v11, v8, v7

    mul-int/lit8 v12, v8, 0x2

    div-int/lit8 v12, v12, 0x3

    if-le v11, v12, :cond_10

    :cond_f
    iget-object v11, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v12, "BGAppDownLimit"

    invoke-virtual {v11, v12, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v10, "NetSpeedPolicy"

    const-string/jumbo v11, "limit discrease quickly"

    invoke-static {v10, v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v10, "CMD_BG_NET_SPEED_DOWN_LIMIT"

    iput-object v10, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string v10, "Fg App speed reduced  or Total bandwidth has lots of lost"

    iput-object v10, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto :goto_2

    :cond_10
    iget v11, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    div-int/lit8 v12, v8, 0xa

    if-ge v11, v12, :cond_11

    sub-int v11, v8, v7

    div-int/lit8 v12, v8, 0x4

    if-le v11, v12, :cond_11

    const/4 v0, -0x1

    iget-object v11, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v12, "TotalNetspeedLose"

    invoke-virtual {v11, v12, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v0, 0x3

    const-string v10, "CMD_BG_NET_SPEED_DOWN_LIMIT"

    iput-object v10, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string v10, "Fg App speed rise little and Total bandwidth has a little lost"

    iput-object v10, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    :cond_11
    :goto_2
    iput v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    :cond_12
    :goto_3
    if-nez v0, :cond_13

    const/4 v9, 0x1

    goto :goto_4

    :cond_13
    const/4 v9, 0x0

    :goto_4
    iput-boolean v9, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    invoke-virtual {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->limitAppSpeed(I)V

    return-void

    :cond_14
    :goto_5
    return-void
.end method

.method private checkTotalNetworkStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "TotalNetSPeedLowest"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    const-string v0, "NetSpeedPolicy"

    const-string/jumbo v1, "total netSpeed is lower 30kb/s!"

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "TotalNetSPeedLowest"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastFGTotalSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "LimitAppList dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LimitAppList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->dumpNetSpeedLogger(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAppFromList(ILjava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMaxSpeedBGAppExceptUsefulApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v3, v3, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    nop

    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x0

    return-object v2

    :cond_2
    move-object v2, v0

    move v0, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    if-le v3, v4, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "NetSpeedPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packagename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is music app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method public getMinSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isLimitedApp(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public limitAppSpeed(I)V
    .locals 6

    const-string v0, "NetSpeedPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getAvgPhySpeed()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const/16 v2, 0x32

    const/16 v3, 0x2710

    if-le v0, v3, :cond_0

    const/16 v2, 0x46

    goto :goto_0

    :cond_0
    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_1

    const/16 v2, 0x1e

    :cond_1
    :goto_0
    const/16 v3, 0x1e

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v3, "NetSpeedPolicy"

    const-string v4, " down limit start. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int v3, v0, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v4

    if-ge v3, v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v4, v1, v5, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->updateLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;I)V

    goto :goto_3

    :pswitch_1
    const-string v4, "NetSpeedPolicy"

    const-string v5, " up limit start. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    mul-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, v0, 0xa

    div-int/lit8 v5, v5, 0x64

    if-lt v4, v5, :cond_4

    if-ge v4, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v3, v1, v5, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->updateLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;I)V

    goto :goto_3

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    const-string v4, "NetSpeedPolicy"

    const-string v5, " first limit start."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    mul-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, v0, 0xa

    div-int/lit8 v5, v5, 0x64

    if-lt v4, v5, :cond_6

    if-ge v4, v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setLimitSpeed(I)V

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v3, v1, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->enableLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)V

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    :goto_3
    return-void

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshTraffic()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    const-string/jumbo v1, "wlan0"

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->refreshTraffic(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public releaseAllAppsLimit(Ljava/lang/String;)V
    .locals 4

    const-string v0, "NetSpeedPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "realese All Apps Limit, mLimitAppList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iput-object p1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseAppLimit(ILjava/lang/String;)V
    .locals 3

    const-string v0, "NetSpeedPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "realese App Limit, uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    iput-object p2, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)Z

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseUserAllLimit(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)Z

    const-string v1, "NetSpeedPolicy"

    const-string/jumbo v2, "is using mobile date release app!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public userLimitAll(ZI)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseUserAllLimit(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mUserAllLimit:Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseUserAllLimit(Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBGAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    if-le v4, p2, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, p2, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v4, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setLimitSpeed(I)V

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->enableLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mUserAllLimit:Z

    :goto_2
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAllAppList:Ljava/util/List;

    const-string/jumbo v5, "force control all"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public userLimitOne(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseUserAllLimit(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_3

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-direct {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setUid(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setLimitSpeed(I)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->enableLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->getAppFromList(ILjava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    const-string/jumbo v3, "force control"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;Ljava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitOneAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mUserLimit:Z

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mUserLimit:Z

    :goto_1
    return-void
.end method
