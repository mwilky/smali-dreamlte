.class public Lcom/android/server/nextapp/PkgPredictorService;
.super Lcom/samsung/android/nextapp/IPkgPredictor$Stub;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/PkgPredictorService$APPInfo;,
        Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;
    }
.end annotation


# static fields
.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static DEBUG:Z = false

.field public static final HALF_YEAR_MILLIS:J = 0x39ef8b000L

.field public static final MEM_12G:I = 0xc

.field public static final MEM_6G:I = 0x6

.field public static final MEM_8G:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService"

.field public static TOTAL_MEM_SIZE:I = 0x0

.field public static final TWO_YEAR_MILLIS:J = 0xeaf625800L

.field public static candidateNum:I

.field protected static mName2Uid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static selectAppNum:I


# instance fields
.field private isScreenOff:Z

.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mCollector:Lcom/android/server/nextapp/Collector;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/server/nextapp/PreloadController;

.field private mCurrentRecord:Lcom/android/server/nextapp/Record;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInstalledPkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/nextapp/PkgPredictorService$APPInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPkgReceiver:Landroid/content/BroadcastReceiver;

.field private mPredictErr:Ljava/lang/String;

.field private mPredictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictor:Lcom/android/server/nextapp/Predictor;

.field private mPreviousPkg:Ljava/lang/String;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private predictTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/android/server/nextapp/PkgPredictorService;->TOTAL_MEM_SIZE:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 12

    invoke-direct {p0}, Lcom/samsung/android/nextapp/IPkgPredictor$Stub;-><init>()V

    new-instance v0, Lcom/android/server/nextapp/PkgPredictorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/PkgPredictorService$1;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    iput-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/nextapp/PkgPredictorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/PkgPredictorService$2;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    iput-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/nextapp/PkgPredictorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/PkgPredictorService$3;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    iput-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/server/nextapp/PkgPredictorService$5;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/PkgPredictorService$5;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    iput-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mUidObserver:Landroid/app/IUidObserver;

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "0x4948"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    :cond_1
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    const-wide/16 v5, 0x2af8

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    const/16 v5, 0xc

    sput v5, Lcom/android/server/nextapp/PkgPredictorService;->TOTAL_MEM_SIZE:I

    const/16 v5, 0xf

    sput v5, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    const/4 v5, 0x5

    sput v5, Lcom/android/server/nextapp/PkgPredictorService;->selectAppNum:I

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x1b58

    cmp-long v5, v3, v5

    const/4 v6, 0x3

    if-ltz v5, :cond_3

    const/16 v5, 0x8

    sput v5, Lcom/android/server/nextapp/PkgPredictorService;->TOTAL_MEM_SIZE:I

    const/16 v5, 0x9

    sput v5, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    sput v6, Lcom/android/server/nextapp/PkgPredictorService;->selectAppNum:I

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    sput v5, Lcom/android/server/nextapp/PkgPredictorService;->TOTAL_MEM_SIZE:I

    sput v6, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    sput v2, Lcom/android/server/nextapp/PkgPredictorService;->selectAppNum:I

    :goto_0
    const-string v5, "PkgPredictorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalMemMb = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " TOTAL_MEM_SIZE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/nextapp/PkgPredictorService;->TOTAL_MEM_SIZE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PkgPredictorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "candidateNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " selectAppNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/nextapp/PkgPredictorService;->selectAppNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/nextapp/DBManager;->init(Landroid/content/Context;)V

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "ObserverHandler"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;

    iget-object v6, p0, Lcom/android/server/nextapp/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;-><init>(Lcom/android/server/nextapp/PkgPredictorService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPM:Landroid/content/pm/PackageManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/nextapp/PkgPredictorService;->mName2Uid:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    new-instance v9, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;

    invoke-direct {v9, p0, v8}, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;-><init>(Lcom/android/server/nextapp/PkgPredictorService;Lcom/android/server/nextapp/PkgPredictorService$1;)V

    move-object v8, v9

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v9, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    move v9, v6

    :goto_2
    iput-boolean v9, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->system:Z

    iget-object v9, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    iget v10, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v10, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    iget v11, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v9, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    iget v10, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    iget-object v10, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/server/nextapp/PkgPredictorService;->mName2Uid:Ljava/util/Map;

    iget-object v10, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/nextapp/BigDataService;->schedule(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/nextapp/Collector;

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/nextapp/Collector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    new-instance v2, Lcom/android/server/nextapp/Predictor;

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/nextapp/Predictor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictor:Lcom/android/server/nextapp/Predictor;

    new-instance v2, Lcom/android/server/nextapp/PreloadController;

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v5, v7}, Lcom/android/server/nextapp/PreloadController;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mController:Lcom/android/server/nextapp/PreloadController;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/nextapp/PkgPredictorService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v9, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/nextapp/PkgPredictorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/nextapp/PkgPredictorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-virtual {v7, v9, v10, v11, v8}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/server/nextapp/PkgPredictorService;->isScreenOff:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/nextapp/PkgPredictorService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/nextapp/PkgPredictorService;->updateInstalledPkgs(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Collector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/nextapp/PkgPredictorService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Predictor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictor:Lcom/android/server/nextapp/Predictor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/nextapp/PkgPredictorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->isScreenOff:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/nextapp/PkgPredictorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/nextapp/PkgPredictorService;->isScreenOff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/PreloadController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mController:Lcom/android/server/nextapp/PreloadController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/nextapp/PkgPredictorService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/nextapp/PkgPredictorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/nextapp/PkgPredictorService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/nextapp/PkgPredictorService;->processForegroundChanged(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/nextapp/PkgPredictorService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/nextapp/PkgPredictorService;->processProcessDie(II)V

    return-void
.end method

.method private dumpDB()V
    .locals 12

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/PkgPredictions.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/PkgPredictions.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v2, v5

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v4, v5

    const-wide/16 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v6, v4

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    const-string v5, "PkgPredictorService"

    const-string/jumbo v6, "dump db successfully!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    nop

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_5
    :goto_2
    goto :goto_7

    :goto_3
    nop

    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_4

    :catch_3
    move-exception v6

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :goto_5
    nop

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_8
    :goto_6
    throw v5

    :cond_9
    :goto_7
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "---------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "PkgPredictorService dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -i: dump all installed app information"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -c: dump collector information"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -p: dump Predictor information"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -t: start a training immediately"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: copy DB file"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "---------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpInstalledApps(Ljava/io/PrintWriter;)V
    .locals 7

    const-string/jumbo v0, "installed apps info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private processForegroundChanged(II)V
    .locals 10

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PkgPredictorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown app go to foreground... uid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v3

    move-object v0, v2

    check-cast v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, p2, :cond_1

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_1

    iget-object v2, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    array-length v5, v2

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    const-string v2, "PkgPredictorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown app go to foreground... uid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPreviousPkg:Ljava/lang/String;

    const-wide/16 v5, 0x40

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPreviousPkg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.app.launcher"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.systemui"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "PkgPredictorService- start collecting"

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v2, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "PkgPredictorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " go to foreground!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    invoke-virtual {v2}, Lcom/android/server/nextapp/Collector;->generateRecord()Lcom/android/server/nextapp/Record;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    sget-boolean v2, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "PkgPredictorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "previous pkgs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v8, v8, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v8, v8, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v8, v8, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " running pkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is system: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->system:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/nextapp/Record;->launchTime:J

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictErr:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictErr:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictions:Ljava/util/List;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    const-string/jumbo v7, "the first app after booting.."

    iput-object v7, v2, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v2, v2, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictions:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v7, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v2, v2, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v7, v7, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iput-boolean v4, v2, Lcom/android/server/nextapp/Record;->success:Z

    :cond_a
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mController:Lcom/android/server/nextapp/PreloadController;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v7, v7, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/server/nextapp/PreloadController;->isPreloadedPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iput-boolean v4, v2, Lcom/android/server/nextapp/Record;->preloaded:Z

    :cond_b
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget v4, p0, Lcom/android/server/nextapp/PkgPredictorService;->predictTime:I

    iput v4, v2, Lcom/android/server/nextapp/Record;->predictTime:I

    :try_start_1
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v4, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPM:Landroid/content/pm/PackageManager;

    iget-object v7, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/nextapp/Record;->apkVersion:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_5
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    invoke-virtual {v2, v3}, Lcom/android/server/nextapp/Collector;->saveRecord(Lcom/android/server/nextapp/Record;)V

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    invoke-virtual {v2}, Lcom/android/server/nextapp/Collector;->isRecordsSizeMax()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictor:Lcom/android/server/nextapp/Predictor;

    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    invoke-virtual {v2, v3}, Lcom/android/server/nextapp/Predictor;->updateSummary(Lcom/android/server/nextapp/Record;)V

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mController:Lcom/android/server/nextapp/PreloadController;

    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCurrentRecord:Lcom/android/server/nextapp/Record;

    iget-object v3, v3, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/nextapp/PreloadController;->setCurrent(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    :cond_d
    iget-object v2, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "PkgPredictorService- start predicting"

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    iget-object v3, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/nextapp/Collector;->loadPkg(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPreviousPkg:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    invoke-virtual {v4}, Lcom/android/server/nextapp/Collector;->generateRecord()Lcom/android/server/nextapp/Record;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictor:Lcom/android/server/nextapp/Predictor;

    iget-object v8, v0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Lcom/android/server/nextapp/Predictor;->predictWithHitRatio(Lcom/android/server/nextapp/Record;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictions:Ljava/util/List;

    iget-object v7, v4, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    if-eqz v7, :cond_e

    iget-object v7, v4, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    :goto_6
    iput-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictErr:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictErr:Ljava/lang/String;

    if-nez v7, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-int v7, v7

    iput v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->predictTime:I

    goto :goto_7

    :cond_f
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/nextapp/PkgPredictorService;->predictTime:I

    :goto_7
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v5, p0, Lcom/android/server/nextapp/PkgPredictorService;->mController:Lcom/android/server/nextapp/PreloadController;

    iget-object v6, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictions:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/android/server/nextapp/PreloadController;->preload(Ljava/util/List;)V

    :cond_10
    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private processProcessDie(II)V
    .locals 0

    return-void
.end method

.method private updateInstalledPkgs(Ljava/lang/String;Z)V
    .locals 6

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;-><init>(Lcom/android/server/nextapp/PkgPredictorService;Lcom/android/server/nextapp/PkgPredictorService$1;)V

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v1, v4

    nop

    :cond_0
    iput-boolean v1, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->system:Z

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    iget v4, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    iget v4, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iget-object v4, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/android/server/nextapp/PkgPredictorService;->mName2Uid:Ljava/util/Map;

    iget-object v3, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/android/server/nextapp/PkgPredictorService;->mName2Uid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/nextapp/PkgPredictorService;->mName2Uid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/server/nextapp/PkgPredictorService;->mName2Uid:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mInstalledPkgs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "PkgPredictorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not found in mInstalledPkgs list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    :cond_5
    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "PkgPredictorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found in mName2Uid list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    if-eqz p3, :cond_b

    array-length v0, p3

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    array-length v1, p3

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/nextapp/PkgPredictorService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_3

    :cond_0
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_b

    aget-object v1, p3, v0

    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/nextapp/PkgPredictorService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const-string v2, "-i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/nextapp/PkgPredictorService;->dumpInstalledApps(Ljava/io/PrintWriter;)V

    :cond_2
    const-string v2, "-c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    invoke-virtual {v2, p2}, Lcom/android/server/nextapp/Collector;->dump(Ljava/io/PrintWriter;)V

    :cond_3
    const-string v2, "-p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictor:Lcom/android/server/nextapp/Predictor;

    invoke-virtual {v2, p2}, Lcom/android/server/nextapp/Predictor;->dump(Ljava/io/PrintWriter;)V

    :cond_4
    const-string v2, "-t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "train start..."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/nextapp/PkgPredictorService$4;

    invoke-direct {v3, p0}, Lcom/android/server/nextapp/PkgPredictorService$4;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string/jumbo v2, "train finish..."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    const-string v2, "-f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/server/nextapp/PkgPredictorService;->dumpDB()V

    :cond_6
    const-string v2, "-m"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->getPkgAccuracyMap()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v3, "PkgPredictorService"

    const-string v4, "Get map == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v8, "PkgPredictorService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " acc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    :goto_2
    const-string v2, "-b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/nextapp/PkgPredictorService$1BigDataRunnableForDump;

    invoke-direct {v3, p0}, Lcom/android/server/nextapp/PkgPredictorService$1BigDataRunnableForDump;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_9
    const-string v2, "-B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/nextapp/PkgPredictorService$2BigDataRunnableForDump;

    invoke-direct {v3, p0}, Lcom/android/server/nextapp/PkgPredictorService$2BigDataRunnableForDump;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-void
.end method

.method public reportToNAP(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PkgPredictorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " thisTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/android/server/nextapp/Collector;->updateActivityLaunchConsumeTime(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public trainModel()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService;->mPredictor:Lcom/android/server/nextapp/Predictor;

    invoke-virtual {v0}, Lcom/android/server/nextapp/Predictor;->trainModel()V

    return-void
.end method

.method public trim(J)V
    .locals 6

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PkgPredictorService"

    const-string/jumbo v2, "trim failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/nextapp/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " where launch_time < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/nextapp/DBManager;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "PkgPredictorService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    :goto_0
    nop

    monitor-exit v1

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
