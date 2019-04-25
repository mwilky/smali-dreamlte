.class final Lcom/android/server/am/SluggishDetector$SetLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetLaunchInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isReady:Z


# instance fields
.field private mCurTime:J

.field private mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

.field private mShortComponentName:Ljava/lang/String;

.field private mSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

.field private mThroughputInfo:Lcom/android/server/am/SluggishDetector$ThroughputInfo;

.field private mUid:I


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

    const-class v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->isReady:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mCurTime:J

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mThroughputInfo:Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mUid:I

    const-class v0, Lcom/android/server/am/SluggishDetector;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->isReady:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/am/SluggishDetector$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->setLaunch()V

    return-void
.end method

.method static synthetic access$5500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->isReady:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mThroughputInfo:Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mCurTime:J

    return-wide v0
.end method

.method private refresh()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mCurTime:J

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentSimpleSluggishInfo()Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$IoInfo;->access$6600()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    new-instance v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mUid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;-><init>(ILcom/android/server/am/SluggishDetector$1;)V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mThroughputInfo:Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mThroughputInfo:Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->access$6800(Lcom/android/server/am/SluggishDetector$ThroughputInfo;)V

    return-void
.end method

.method private setLaunch()V
    .locals 2

    const-class v0, Lcom/android/server/am/SluggishDetector;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->isReady:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->refresh()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIoInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThroughputInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->mThroughputInfo:Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
