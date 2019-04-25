.class Lcom/android/server/am/SluggishDetector;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$LockContentionInfo;,
        Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;,
        Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;,
        Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;,
        Lcom/android/server/am/SluggishDetector$OccurredReport;,
        Lcom/android/server/am/SluggishDetector$AgingDataQueue;,
        Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;,
        Lcom/android/server/am/SluggishDetector$SetLaunchInfo;,
        Lcom/android/server/am/SluggishDetector$MemoryInfo;,
        Lcom/android/server/am/SluggishDetector$SystemPropertyInfo;,
        Lcom/android/server/am/SluggishDetector$SettingInfo;,
        Lcom/android/server/am/SluggishDetector$IoInfo;,
        Lcom/android/server/am/SluggishDetector$ThroughputInfo;,
        Lcom/android/server/am/SluggishDetector$NetworkInfo;,
        Lcom/android/server/am/SluggishDetector$DetectInfo;,
        Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;
    }
.end annotation


# static fields
.field private static final BIGDATA_ENABLE:Z

.field private static final DATA_FORMAT:Ljava/lang/String; = "[shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageBeforeSlgInfoData] [averageAfterSlgInfoData] [averageIoInfoData] [averageThroughputInfoData][launchTimeStandardDeviation]"

.field private static final DEBUG:Z = false

.field public static final ENABLE:Z

.field private static final NO_CONTEXT:I = -0x63

.field private static final NO_VALUE:I = -0x1

.field private static final PROC_KPERF_OLOG:Ljava/lang/String; = "/proc/kperfmon"

.field private static final PROC_STORE_OLOG:Ljava/lang/String; = "/data/log/remaining_olog"

.field private static final SecProductFeature:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_NAME:Ljava/lang/String; = "1.2.0"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/am/SluggishDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector;->BIGDATA_ENABLE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SluggishDetector;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->access$000()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->access$100()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$200()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$300()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$400()V

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$11100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->access$11400()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->access$11500()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$11600()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$11700()V

    if-eqz p0, :cond_0

    const-string v0, "CLEAR SLUGGISH DETECTOR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->access$12200(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->access$12300(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$12400(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$12500(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "slgdetect_occurred"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$OccurredReport;->access$11800(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "slgdetect_periodic_launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->access$11900(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "slgdetect_periodic_memory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$12000(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "slgdetect_periodic_olog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$12100(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    nop

    :goto_1
    return-object v0
.end method

.method private static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static reportLaunch(Lcom/android/server/am/ActivityRecord;J)V
    .locals 12

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v7, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v9, v1, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    const/4 v11, 0x0

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/am/SluggishDetector$1;)V

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10000(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/server/am/SluggishDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method static setLaunch(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;ILcom/android/server/am/SluggishDetector$1;)V

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10000(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private static setLockContentionInfo(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :try_start_0
    invoke-static {v0, p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10000(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
