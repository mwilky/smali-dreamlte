.class final Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReportLaunchInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isReady:Z


# instance fields
.field private isRefreshedForReport:Z

.field private mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

.field private mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

.field private mContext:Landroid/content/Context;

.field private mCurTime:J

.field private mInstalledPackageCount:I

.field private mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

.field private mLastLMKTime:J

.field private mLastPss:J

.field private mLastSwapPss:J

.field private mLaunchTime:J

.field private mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

.field private mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

.field private mPerformanceMode:I

.field private mPid:I

.field private mPowerSavingMode:I

.field private mPss:J

.field private mPst:I

.field private mResolution:Ljava/lang/String;

.field private mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapPss:J

.field private mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

.field private mUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    iput v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iput v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    const/16 v4, -0x270f

    iput v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    iput v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastLMKTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    iput-object p3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    iput-wide p6, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    iput-wide p6, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    iput-wide p8, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    iput-wide p8, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/module/lowmemorykiller/parameters/lmkd_count"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastLMKTime:J

    const-class v1, Lcom/android/server/am/SluggishDetector;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/am/SluggishDetector$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->reportLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->refreshForReport()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->refreshForOccurredReport()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastLMKTime:J

    return-wide v0
.end method

.method static synthetic access$5600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z

    return v0
.end method

.method private refresh()V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [J

    new-array v0, v0, [J

    iget v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    invoke-static {v2, v1, v0}, Landroid/os/Debug;->getPssSwapPss(I[J[J)V

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-wide v5, v0, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$6900(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentSimpleSluggishInfo()Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$IoInfo;->access$6600()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$7000(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->access$7100(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$7200(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->access$7300(Lcom/android/server/am/SluggishDetector$ThroughputInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-void
.end method

.method private refreshForOccurredReport()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->access$7400(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->access$7500(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->access$7600(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector$SettingInfo;->access$7700(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SystemPropertyInfo;->access$7800()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    return-void
.end method

.method private refreshForReport()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->access$7900(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    invoke-static {}, Lcom/android/server/am/SluggishDetector$MemoryInfo;->access$8000()Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$MemoryInfo;->access$8100()Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    :cond_0
    return-void
.end method

.method private reportLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 4

    const-class v0, Lcom/android/server/am/SluggishDetector;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$8200(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$8200(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$8300(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->refresh()V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->access$8400(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->access$8500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$8600(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$8700()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLaunchTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerSavingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAfterSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPerformanceMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIoInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThroughputInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUptime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mInstalledPackageCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMeminfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMeminfoExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastLMKTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastLMKTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
