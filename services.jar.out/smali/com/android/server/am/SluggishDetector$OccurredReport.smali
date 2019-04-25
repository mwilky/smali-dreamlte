.class final Lcom/android/server/am/SluggishDetector$OccurredReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OccurredReport"
.end annotation


# static fields
.field private static DETECT_OVER_TIME:I = 0x0

.field private static final MAXIMUM_ELEMENT_COUNT_FOR_OCCURRED:I = 0xa

.field private static final MAXIMUM_QUEUE_COUNT_FOR_OCCURRED:I = 0x64

.field private static final MINIMUM_ELEMENT_COUNT_FOR_OCCURRED:I = 0x5

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

    const-class v1, Lcom/android/server/am/SluggishDetector$OccurredReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->DETECT_OVER_TIME:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    return-void
.end method

.method static synthetic access$11400()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->clear()V

    return-void
.end method

.method static synthetic access$11800(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$OccurredReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12200(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    return-void
.end method

.method private static check()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkSluggish(JJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->DETECT_OVER_TIME:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static clear()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10300(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->clear()V

    if-eqz p0, :cond_0

    const-string v0, "CLEAR SLUGGISH DETECTOR - OCCURRED REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static detectedSluggish(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$9800(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$1;)V

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10000(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->check()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "SLUGGISH DETECTOR - OCCURRED REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_occurred)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageBeforeSlgInfoData] [averageAfterSlgInfoData] [averageIoInfoData] [averageThroughputInfoData][launchTimeStandardDeviation]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v0, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10400(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "END OF SLUGGISH DETECTOR - OCCURRED REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

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
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->dump(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

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

    sput-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    :cond_0
    return-void
.end method

.method private static step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 18

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10100(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/am/SluggishDetector$OccurredReport;->checkSluggish(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->detectedSluggish(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    :cond_1
    sget-object v3, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2300(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2500(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$2700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3000(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3100(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3700(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$3900(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v14

    const/16 v15, 0x64

    const/16 v16, 0xa

    const/16 v17, 0x5

    invoke-static/range {v3 .. v17}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10200(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V

    return-void
.end method
