.class final Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;
.super Landroid/os/Handler;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishDetectorHandler"
.end annotation


# static fields
.field private static final ENABLE_DELAY_AFTER_BOOT:J = 0x1b7740L

.field private static ENABLE_HANDLER:Z = false

.field private static final MSG_ENABLE_HANDLER:I = 0x1

.field private static final MSG_REPORT_LAUNCH:I = 0xc

.field private static final MSG_REPORT_LOCK_CONTENTION:I = 0xd

.field private static final MSG_SEND_TO_HQM:I = 0x2

.field private static final MSG_SET_COLLECT_FLAG_FOR_PERIODIC_MEMORY:I = 0x65

.field private static final MSG_SET_LAUNCH:I = 0xb

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_LAUNCH:I = 0x3e9

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_MEMORY:I = 0x3ea

.field private static final MSG_SET_STORE_FLAG_FOR_OLOG:I = 0x3eb

.field private static final MSG_STORE_OLOG:I = 0xe

.field private static final TAG:Ljava/lang/String;

.field private static sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

.field private static sHandlerThread:Lcom/android/server/ServiceThread;


# instance fields
.field private mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;


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

    const-class v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    return-void
.end method

.method static synthetic access$10000(ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$10500(IJ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method static synthetic access$10800(ILjava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    return-void
.end method

.method private static check()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static init()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->access$600()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$700()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$800()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setEnableWithDelay()V

    :cond_0
    return-void
.end method

.method private reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1, v0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$1200(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private static sendDataToHandler(ILjava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_2
    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private static sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_1
    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private static sendMessageToHandlerDelayed(IJ)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$DetectInfo;->access$900(Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    return-void
.end method

.method private sendToHqmForLockContention(Lcom/android/server/am/SluggishDetector$LockContentionInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->access$1000(Lcom/android/server/am/SluggishDetector$LockContentionInfo;)V

    return-void
.end method

.method private setCollectFlagForPeriodicMemory()V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$1500()V

    return-void
.end method

.method private static setEnable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method private static setEnableWithDelay()V
    .locals 3

    const/4 v0, 0x1

    const-wide/32 v1, 0x1b7740

    invoke-static {v0, v1, v2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method private setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$1100(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private setReportFlagForPeriodicLaunch()V
    .locals 1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->access$1300()V

    return-void
.end method

.method private setReportFlagForPeriodicMemory()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->access$1400()V

    return-void
.end method

.method private setStoreFlagForOLOG()V
    .locals 1

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$1600()V

    return-void
.end method

.method private storeOLOG()V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->access$1700()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setStoreFlagForOLOG()V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicMemory()V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicLaunch()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->storeOLOG()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/SluggishDetector$LockContentionInfo;

    invoke-direct {v1, v0}, Lcom/android/server/am/SluggishDetector$LockContentionInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->checkTime()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/SluggishDetector$LockContentionInfo;->updateLCD()V

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendToHqmForLockContention(Lcom/android/server/am/SluggishDetector$LockContentionInfo;)V

    :cond_1
    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    invoke-direct {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-direct {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/SluggishDetector$DetectInfo;

    invoke-direct {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string v1, "case MSG_ENABLE_HANDLER"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setEnable()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setCollectFlagForPeriodicMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_3
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
