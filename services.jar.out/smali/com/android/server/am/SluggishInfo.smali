.class public Lcom/android/server/am/SluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;,
        Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
    }
.end annotation


# static fields
.field private static ALWAYS:Z = false

.field private static CurrentLocale:Ljava/util/Locale; = null

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static DEBUG:Z = false

.field private static final DEFAULT_COMPONENT_NAME:Ljava/lang/String;

.field private static final DEFAULT_MAXIMUM_LOG_COUNT:I = 0x3e8

.field private static DateFormat:Ljava/text/SimpleDateFormat; = null

.field public static ENABLE:Z = false

.field private static FLAG_DHA:Z = false

.field private static FLAG_MEMINFO:Z = false

.field private static FLAG_VMSTAT:Z = false

.field private static LaunchingComponentName:Ljava/lang/String; = null

.field private static volatile LogList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MAXIMUM_LOG_COUNT:I = 0x0

.field private static final MSG_ADD_CHANGE_ACTIVITY_LOG:I = 0x3

.field private static final MSG_ADD_END_LAUNCHING_LOG:I = 0x2

.field private static final MSG_ADD_START_LAUNCHING_LOG:I = 0x1

.field private static final SecProductFeature:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TINYM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.tinym"

.field private static final TypeDHA:[Ljava/lang/String;

.field private static final TypeMeminfo:[Ljava/lang/String;

.field private static final TypeSimpleDHA:[Ljava/lang/String;

.field private static final TypeVmstat:[Ljava/lang/String;

.field private static final UNKNOWN:I = -0x1

.field private static volatile instance:Lcom/android/server/am/SluggishInfo;

.field private static numCached:I

.field private static numCachedHiddenProcs:I

.field private static numEmpty:I

.field private static numNonCachedProcs:I


# instance fields
.field private mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/android/server/am/SluggishInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_AAAA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    sput-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/SluggishInfo;->ALWAYS:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    sput-object v0, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    const/16 v1, 0x3e8

    sput v1, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    sput-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    sput-boolean v1, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    sput-boolean v1, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    sget-object v1, Lcom/android/server/am/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    const-string v0, "MemFree"

    const-string v1, "Cached"

    const-string v2, "SwapFree"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/SluggishInfo;->numCached:I

    sput v0, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    sput v0, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    sput v0, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    const-string/jumbo v0, "numCached"

    const-string/jumbo v1, "numEmpty"

    const-string/jumbo v2, "numCachedHiddenProcs"

    const-string/jumbo v3, "numNonCachedProcs"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    const-string/jumbo v0, "numCached"

    const-string/jumbo v1, "numEmpty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeSimpleDHA:[Ljava/lang/String;

    const-string/jumbo v1, "pgpgin"

    const-string/jumbo v2, "pgmajfault"

    const-string/jumbo v3, "pgsteal_kswapd_dma"

    const-string/jumbo v4, "pgsteal_kswapd_normal"

    const-string/jumbo v5, "pgsteal_kswapd_movable"

    const-string/jumbo v6, "pgsteal_direct_dma"

    const-string/jumbo v7, "pgsteal_direct_normal"

    const-string/jumbo v8, "pgsteal_direct_movable"

    const-string v9, "allocstall"

    const-string v10, "compact_stall"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    return-void
.end method

.method private static Clear()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "Clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->initLogList()V

    :cond_1
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private static Clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->Clear()V

    const-string v0, "CLEAR SLUGGISH INFO LOG"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/am/SluggishInfo;
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->addInnerStartLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->addInnerEndLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->addInnerChangeActivityLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()[J
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentSimpleDHAStat()[I

    move-result-object v0

    return-object v0
.end method

.method static addChangeActivityLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static addEndLaunchLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static declared-synchronized addInnerChangeActivityLog(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/android/server/am/SluggishInfo;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_5

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->ALWAYS:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addInnerChangeActivityLog() - LaunchingComponentName == componentName ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerChangeActivityLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/SluggishInfo;->addLog(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addInnerEndLaunchingLog(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/android/server/am/SluggishInfo;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/am/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerEndLaunchingLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[E] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/SluggishInfo;->addLog(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addInnerStartLaunchingLog(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/android/server/am/SluggishInfo;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sput-object p0, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerStartLaunchingLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[S] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/SluggishInfo;->addLog(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addLog(Ljava/lang/String;)V
    .locals 9

    const-class v0, Lcom/android/server/am/SluggishInfo;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_a

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.tinym"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v2, "addLog() - current log is tinym, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLog() - log : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    sget-object v1, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->initLogList()V

    :cond_4
    sget-object v1, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v4, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    if-ne v1, v4, :cond_5

    sget-object v1, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v4, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_7

    sget-object v4, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-static {v1}, Lcom/android/server/am/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentStat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActivityLaunch] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/PerfLog;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00-00 00:00:00.000 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :goto_1
    sget-object v5, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v5, "addLog() - ERROR"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_9

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :cond_a
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static addStartLaunchLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static convertIntArrToString([I)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_convertIntArrToString()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, p0, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static convertLongArrToString([J)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_convertIntArrToString()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-wide v5, p0, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCommonLines()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    array-length v0, p0

    array-length v3, p0

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_5

    if-lez v5, :cond_5

    move v6, v5

    move v5, v4

    :goto_1
    array-length v7, p0

    if-ge v5, v7, :cond_4

    if-lez v6, :cond_4

    aget-object v7, v3, v5

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    aget-object v7, p1, v0

    aget-object v8, p0, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    aget-object v7, p1, v0

    aput-object v7, v3, v5

    add-int/lit8 v6, v6, -0x1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_6

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_6
    return-object v3

    :cond_7
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentDHAStat()[I
    .locals 5

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentDHAStat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v3, 0x0

    sget v4, Lcom/android/server/am/SluggishInfo;->numCached:I

    aput v4, v0, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    aput v4, v0, v3

    const/4 v3, 0x2

    sget v4, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    aput v4, v0, v3

    const/4 v3, 0x3

    sget v4, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    aput v4, v0, v3

    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1
    return-object v0
.end method

.method private static getCurrentMeminfo()[J
    .locals 10

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentMeminfo()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "/proc/meminfo"

    invoke-static {v3}, Lcom/android/server/am/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/server/am/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    const-wide/16 v5, -0x1

    :try_start_0
    aget-object v7, v3, v4

    if-eqz v7, :cond_1

    aget-object v7, v3, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    aget-object v7, v3, v4

    const-string/jumbo v8, "kB"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    aget-object v7, v3, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    sget-object v8, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getCurrentMeminfo() - ERROR"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    aput-wide v5, v0, v4

    goto :goto_2

    :catch_1
    move-exception v7

    aput-wide v5, v0, v4

    :cond_1
    :goto_1
    nop

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return-object v0
.end method

.method private static getCurrentSimpleDHAStat()[I
    .locals 5

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentSimpleDHAStat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    sget v4, Lcom/android/server/am/SluggishInfo;->numCached:I

    aput v4, v0, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    aput v4, v0, v3

    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1
    return-object v0
.end method

.method static getCurrentSimpleSluggishInfo()Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .locals 4

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCurrentSimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentSimpleSluggishInfo()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-direct {v0}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;-><init>()V

    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    return-object v0
.end method

.method private static getCurrentStat()Ljava/lang/String;
    .locals 16

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_0
    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    const-wide v12, 0x412e848000000000L    # 1000000.0

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v11, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v4

    long-to-double v14, v14

    div-double v8, v14, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(meminfo_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    if-eqz v11, :cond_4

    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v11, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :cond_3
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentDHAStat()[I

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/SluggishInfo;->convertIntArrToString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v4

    long-to-double v14, v14

    div-double v8, v14, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(dha_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v11, :cond_6

    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v11, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :cond_5
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentVmstat()[J

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v4

    long-to-double v14, v14

    div-double v8, v14, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(vmstat_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-boolean v11, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v11, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v14, v2, v0

    long-to-double v14, v14

    div-double/2addr v14, v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "(total_Took: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private static getCurrentVmstat()[J
    .locals 10

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentVmstat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "/proc/vmstat"

    invoke-static {v3}, Lcom/android/server/am/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/server/am/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    const-wide/16 v5, -0x1

    :try_start_0
    aget-object v7, v3, v4

    if-eqz v7, :cond_1

    aget-object v7, v3, v4

    sget-object v8, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    aget-object v8, v8, v4

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    aget-object v7, v3, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    sget-object v8, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getCurrentVmstat() - ERROR"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    aput-wide v5, v0, v4

    goto :goto_2

    :catch_1
    move-exception v7

    aput-wide v5, v0, v4

    :cond_1
    :goto_1
    nop

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return-object v0
.end method

.method private static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_getLinesFromFile()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_3

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v4

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getLinesFromBufferedReader() - ERROR"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getLinesFromBufferedReader() - ERROR readLine "

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_1
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return-object v0
.end method

.method private static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getLinesFromFile()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3}, Lcom/android/server/am/SluggishInfo;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v4

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getLinesFromFile() - ERROR"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLinesFromFile() - ERROR IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLinesFromFile() - ERROR FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTypeString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUnknownValueArray([Ljava/lang/String;)[J
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getUnknownValueArray()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    const-wide/16 v4, -0x1

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return-object v0
.end method

.method private static initDateFormat()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    return-void
.end method

.method private static initDateFormat(Ljava/util/Locale;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDateFormat()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-object p0, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initDateFormat() - ERROR"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    :goto_0
    return-void
.end method

.method private static initLogList()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initLogList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    const-class v0, Lcom/android/server/am/SluggishInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private static initSluggishInfo()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    if-nez v0, :cond_4

    :cond_1
    const-class v0, Lcom/android/server/am/SluggishInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v1, v1, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v1, v1, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lcom/android/server/am/SluggishInfo;

    invoke-direct {v1}, Lcom/android/server/am/SluggishInfo;-><init>()V

    sput-object v1, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    :cond_3
    monitor-exit v0

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static refreshDHAStatForSluggishInfo(IIII)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_refreshDHAStatForSluggishInfo()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    sput p0, Lcom/android/server/am/SluggishInfo;->numCached:I

    sput p1, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    sput p2, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    sput p3, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    return-void
.end method

.method private static sendLogToHandler(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendLogToHandler() - SEC_PRODUCT_FEATURE_COMMON_CONFIG_SLUGGISH_INFO=false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method
