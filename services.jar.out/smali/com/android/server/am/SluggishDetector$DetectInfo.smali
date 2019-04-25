.class final Lcom/android/server/am/SluggishDetector$DetectInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DetectInfo"
.end annotation


# static fields
.field private static final DETECT_TYPE_AVERAGE_OVER:I = 0x1

.field private static final DETECT_TYPE_PERIODIC_LAUNCH_REPORT:I = 0x2

.field private static final DETECT_TYPE_PERIODIC_MEMORY_REPORT:I = 0x3

.field private static final DETECT_TYPE_PERIODIC_OLOG_REPORT:I = 0x4

.field private static final DIV:Ljava/lang/String; = "|"

.field private static final DIV_EXP:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoData:Ljava/lang/String;

.field private mAverageAfterSlgInfoData:[Ljava/lang/String;

.field private mAverageBeforeSlgInfoData:[Ljava/lang/String;

.field private mAverageIoInfoData:[Ljava/lang/String;

.field private mAverageLaunchTime:[J

.field private mAveragePss:[J

.field private mAverageSwapPss:[J

.field private mAverageThroughputInfoData:[Ljava/lang/String;

.field private mBeforeSlgInfoData:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDetectType:I

.field private mInstalledPackageCount:I

.field private mIoInfoData:Ljava/lang/String;

.field private mLastLMKTime:J

.field private mLaunchTime:J

.field private mLaunchTimeStandardDeviation:[D

.field private mMeminfo:Ljava/lang/String;

.field private mMeminfoExtra:Ljava/lang/String;

.field private mPerformanceMode:I

.field private mPowerSavingMode:I

.field private mPss:J

.field private mPst:I

.field private mResolution:Ljava/lang/String;

.field private mRunCount:[J

.field private mShortComponentName:[Ljava/lang/String;

.field private mShortComponentVersionName:[Ljava/lang/String;

.field private mSwapPss:J

.field private mThroughputInfoData:Ljava/lang/String;

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

    const-class v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    const/16 v4, -0x270f

    iput v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    const-string/jumbo v1, "null"

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    const-string/jumbo v1, "null"

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLastLMKTime:J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$1800(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$1900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2000(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    iput p1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    new-array v1, v0, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    new-array v1, v0, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2400(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    new-array v1, v0, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2600(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    new-array v1, v0, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3000(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$3200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$3300(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3400(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3600(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$3800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$4000(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4200(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4400(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    new-array v0, v0, [D

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$4500(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v1

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4600(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLastLMKTime:J

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V

    return-void
.end method

.method private constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    iput v2, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v5, "null"

    iput-object v5, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v5, "null"

    iput-object v5, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    iput v2, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    const-string/jumbo v5, "null"

    iput-object v5, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    const/16 v5, -0x270f

    iput v5, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    const-string/jumbo v6, "null"

    iput-object v6, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    const-string/jumbo v6, "null"

    iput-object v6, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    iput v2, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    const-string/jumbo v6, "null"

    iput-object v6, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    const-string/jumbo v6, "null"

    iput-object v6, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLastLMKTime:J

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$1800(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [D

    const/4 v15, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_0

    move-object/from16 v5, p3

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$4700(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v17

    aput-wide v17, v6, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2400(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v17

    aput-wide v17, v7, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2600(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v17

    aput-wide v17, v8, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v17

    aput-wide v17, v9, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$3200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$3300(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$3800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$4000(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    invoke-static {v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$4500(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v17

    aput-wide v17, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v2, -0x1

    const/16 v5, -0x270f

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2000(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    move/from16 v2, p1

    iput v2, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    iput-object v7, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    iput-object v8, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    iput-object v9, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    const/4 v15, -0x1

    iput v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v15, "null"

    iput-object v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v15, "null"

    iput-object v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    iput-object v11, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    const/4 v15, -0x1

    iput v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    const-string/jumbo v15, "null"

    iput-object v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    const/16 v15, -0x270f

    iput v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    const-string/jumbo v15, "null"

    iput-object v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    iput-object v12, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    const-string/jumbo v15, "null"

    iput-object v15, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    iput-object v13, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4200(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v3

    iput v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$4400(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLastLMKTime:J

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/am/SluggishDetector$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->sendToHqm()V

    return-void
.end method

.method private process()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "process() - mContext is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    const/16 v8, 0x80

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v8, "null"

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private sendToHqm()V
    .locals 13

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->process()V

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ph"

    iget v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v1, "sm"

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/SemHqmManager;

    if-eqz v12, :cond_2

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "AGIN"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v1, v12

    move-object v5, v11

    move-object v9, v0

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"SDVR\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"DTYP\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"SNAM\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    const-string/jumbo v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"SVER\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    const-string/jumbo v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"RCNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    array-length v4, v3

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_4

    aget-wide v6, v3, v5

    const-string/jumbo v8, "|"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"LANT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"ALNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    array-length v4, v3

    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_6

    aget-wide v6, v3, v5

    const-string/jumbo v8, "|"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_7
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"PSSV\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"APSS\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    array-length v4, v3

    move v5, v2

    :goto_8
    if-ge v5, v4, :cond_8

    aget-wide v6, v3, v5

    const-string/jumbo v8, "|"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_9
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"SWPS\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"ASWP\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    array-length v4, v3

    move v5, v2

    :goto_a
    if-ge v5, v4, :cond_a

    aget-wide v6, v3, v5

    const-string/jumbo v8, "|"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_b
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"PSMD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"BSLD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"ASLD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"ABSL\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_c
    if-ge v5, v4, :cond_c

    aget-object v6, v3, v5

    const-string/jumbo v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_d
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"AASL\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_e
    if-ge v5, v4, :cond_e

    aget-object v6, v3, v5

    const-string/jumbo v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_f
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"PFMD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"RESO\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"PSTV\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"IOAM\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"AIOA\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_10
    if-ge v5, v4, :cond_10

    aget-object v6, v3, v5

    const-string/jumbo v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_11
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"TPID\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"ATPD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_12

    aget-object v6, v3, v5

    const-string/jumbo v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_13
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"UTIM\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"PKGC\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"MINF\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"MIEX\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"LTSD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    array-length v4, v3

    :goto_14
    if-ge v2, v4, :cond_14

    aget-wide v5, v3, v2

    const-string/jumbo v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_15
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"LMKT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLastLMKTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
