.class final Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicLaunchReport"
.end annotation


# static fields
.field private static final MAXIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = 0x1f4

.field private static final MAXIMUM_QUEUE_COUNT_FOR_PERIODIC:I = 0xc8

.field private static final MINIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = -0x1

.field private static final REPORT_COUNT_FOR_PERIODIC:I = 0x9

.field private static final REPORT_COUNT_IN_MESSAGE_FOR_PERIODIC:I = 0x3

.field private static REPORT_FLAG_FOR_PERIODIC:Z = false

.field private static REPORT_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final REPORT_WAIT_INTERVAL_FOR_PERIODIC:J = 0x7530L

.field private static final TAG:Ljava/lang/String;

.field private static sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;


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

    const-class v1, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->init()V

    return-void
.end method

.method static synthetic access$11500()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->clear()V

    return-void
.end method

.method static synthetic access$11900(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12300(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodicWithDelay()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    return-void
.end method

.method private static check()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static clear()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->init()V

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10300(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->clear()V

    if-eqz p0, :cond_0

    const-string v0, "CLEAR SLUGGISH DETECTOR - PERIODIC LAUNCH REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->check()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->init()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "SLUGGISH DETECTOR - PERIODIC LAUNCH REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_periodic_launch)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageBeforeSlgInfoData] [averageAfterSlgInfoData] [averageIoInfoData] [averageThroughputInfoData][launchTimeStandardDeviation]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v0, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10400(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC LAUNCH REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->dump(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static init()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    :cond_0
    return-void
.end method

.method private static makePeriodicReport(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->sendPeriodicReportToHandler(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->clear()V

    return-void
.end method

.method private static sendPeriodicReportToHandler(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 8

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const-wide/16 v1, 0x9

    invoke-static {v0, v1, v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10600(Lcom/android/server/am/SluggishDetector$AgingDataQueue;J)Ljava/util/LinkedList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/android/server/am/SluggishDetector$DetectInfo;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/am/SluggishDetector$1;)V

    const-wide/16 v6, 0x7530

    invoke-static {v5, v3, v6, v7}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10800(ILjava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setReportFlagForPeriodic()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private static setReportFlagForPeriodicWithDelay()V
    .locals 3

    sget-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x3e9

    invoke-static {v2, v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10500(IJ)V

    return-void
.end method

.method private static step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 16

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->init()V

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodicWithDelay()V

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->makePeriodicReport(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    :cond_1
    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v3

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3000(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v12

    const/16 v13, 0xc8

    const/16 v14, 0x1f4

    const/4 v15, -0x1

    invoke-static/range {v1 .. v15}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10200(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V

    return-void
.end method
