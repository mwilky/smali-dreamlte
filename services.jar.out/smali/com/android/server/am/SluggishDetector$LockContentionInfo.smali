.class final Lcom/android/server/am/SluggishDetector$LockContentionInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockContentionInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static prevTime:J


# instance fields
.field private LcdOnValue:I

.field private mOwnerFileLine:I

.field private mOwnerFileName:Ljava/lang/String;

.field private mOwnerMethod:Ljava/lang/String;

.field private mThreadName:Ljava/lang/String;

.field private mWaitTime:I


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

    const-class v1, Lcom/android/server/am/SluggishDetector$LockContentionInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->prevTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mThreadName:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mWaitTime:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mOwnerFileName:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mOwnerFileLine:I

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mOwnerMethod:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/SluggishDetector$LockContentionInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->sendToHqm()V

    return-void
.end method

.method private sendToHqm()V
    .locals 13

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "ph"

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$11100()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$11100()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/SemHqmManager;

    if-eqz v12, :cond_0

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "LOCK"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v1, v12

    move-object v5, v11

    move-object v9, v0

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkTime()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->prevTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->prevTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    sput-wide v0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->prevTime:J

    const/4 v2, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"SDVR\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"THNM\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"OMTD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mOwnerMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"OFNM\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mOwnerFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"OFLN\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mOwnerFileLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"WTTM\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->mWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"LCDV\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateLCD()V
    .locals 3

    const/16 v0, -0x63

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$11100()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    move v0, v2

    :cond_0
    iput v0, p0, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    return-void
.end method
