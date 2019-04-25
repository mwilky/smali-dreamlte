.class public Lcom/android/server/enterprise/securetimer/SecureTimerService;
.super Lcom/samsung/android/knox/securetimer/ISecureTimer$Stub;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;,
        Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;,
        Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;,
        Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;,
        Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;,
        Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEFAULT_UPDATE_TICK_FLAG:B = 0x1t

.field private static final EXTRA_INDEX:Ljava/lang/String; = "INDEX"

.field private static final FIXED_TICK_UPDATE_PERIOD:J = 0x5265c00L

.field private static final INTERVAL_RANGE:I

.field private static final MAX_ALARM_RETRY_COUNT:I = 0x6

.field private static final MAX_INTERVAL:I = 0x36ee80

.field private static final MIN_INTERVAL:I = 0xea60

.field private static final RETRY_THRESHOLD_TIME_MS:J = 0x1d4c0L

.field private static final SECOND2MILLISECOND:J = 0x3e8L

.field private static final SECURE_TIMER_CACHE_LOCATION:Ljava/lang/String; = "/data/misc/arcounter"

.field public static final SECURE_TIMER_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURE_TIMER"

.field private static final SECURE_TIMER_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "[SecureTimerService:] "

.field private static sInstance:Lcom/android/server/enterprise/securetimer/SecureTimerService;


# instance fields
.field private alarm_retry_count:[I

.field private volatile isThreadEnabled:Z

.field private mBroadCastReceiverForFactoryReset:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForPackageChange:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForTimeChange:Landroid/content/BroadcastReceiver;

.field private final mBroadCastReceiverForTimeOutConfirm:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForUserChange:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForUserUnlocked:Landroid/content/BroadcastReceiver;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

.field private mIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Byte;",
            "Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClientReceiverReady:Z

.field private mIsTimeChangeReceiverRegistered:Z

.field private mServiceContext:Landroid/content/Context;

.field private mUpdateThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x360420

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->INTERVAL_RANGE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->sInstance:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/securetimer/ISecureTimer$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIsTimeChangeReceiverRegistered:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIsClientReceiverReady:Z

    const/16 v1, 0x11

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$1;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForUserChange:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$2;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForFactoryReset:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$3;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForUserUnlocked:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$4;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForPackageChange:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$5;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForTimeChange:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$6;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForTimeOutConfirm:Landroid/content/BroadcastReceiver;

    const-string v1, "[SecureTimerService:] "

    const-string v2, "In SecureTimerService Constructor"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;Lcom/android/server/enterprise/securetimer/SecureTimerService$1;)V

    iput-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->registerBroadcastReceiverForPackageChange()V

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->registerBroadcastReceiverForUserChange()V

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->registerBroadcastReceiverForFactoryReset()V

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->registerBroadcastReceiverForUserUnlocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/securetimer/SecureTimerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteAlarmRecords(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->initUpdateTickThread()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->notifyUpdateTickException()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/securetimer/SecureTimerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteAlarmRecords(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/securetimer/SecureTimerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteStatusPolicy(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->resetAlarmRetryCount()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabledInDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/securetimer/SecureTimerService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->changeUpdateTickThreadStatus(ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/securetimer/SecureTimerService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteAlarmRecords(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/securetimer/SecureTimerService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->deleteStatusPolicy(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/securetimer/SecureTimerService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/securetimer/SecureTimerService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->triggerAlarm(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/securetimer/SecureTimerService;J)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->getTickDelay(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private addTimer(JLjava/lang/String;ZLcom/android/server/enterprise/securetimer/SecureTimerService$Result;)Z
    .locals 16

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p4

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In addTimer input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9, v10}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_setTimer(JB)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    iget v0, v11, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->returnCode:I

    if-nez v0, :cond_3

    iget-byte v0, v11, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->index:B

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In addTimer Timer is added in ese with index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, v11, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->index:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    new-instance v15, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    iget-byte v2, v11, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->index:B

    move-object v0, v15

    move-object v1, v7

    move-object/from16 v3, p3

    move v4, v14

    move v5, v13

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;BLjava/lang/String;III)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->saveIntoDb()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[SecureTimerService:] "

    const-string v2, "In addTimer Timer is added in db"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v2, v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In addTimer Timer is added in CACHE:mIdMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mIndexMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v2, v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v12, 0x1

    nop

    :cond_1
    return v12

    :cond_2
    return v12

    :cond_3
    :goto_0
    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTimer failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "Result is null"

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12
.end method

.method static native arcounter_cancelTimer(B)I
.end method

.method static native arcounter_changeTime(JB)Ljava/lang/Object;
.end method

.method static native arcounter_getRefTime()Ljava/lang/Object;
.end method

.method static native arcounter_getRemainTime(BB)Ljava/lang/Object;
.end method

.method static native arcounter_getTimer(BB)Ljava/lang/Object;
.end method

.method static native arcounter_setTimer(JB)Ljava/lang/Object;
.end method

.method static native arcounter_storeRtcTime(J)I
.end method

.method static native arcounter_updateTick()Ljava/lang/Object;
.end method

.method private cancelTimerInternal(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->removeTimer(Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private changeUpdateTickThreadStatus(ZZ)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[SecureTimerService:] "

    const-string v1, "changeUpdateTickThreadStatus interrupt thread"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "[SecureTimerService:] "

    const-string v1, "changeUpdateTickThreadStatus start thread"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->registerBroadcastReceiverForTimeChange()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->unregisterBroadcastReceiverForTimeChange()V

    :goto_2
    return-void
.end method

.method private deleteAlarmRecords(I)Z
    .locals 10

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In deleteAlarmRecords by userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "userId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v3, v5, v1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerTable"

    const-string/jumbo v9, "timerIndex"

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerTable"

    invoke-virtual {v4, v8, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v4

    :cond_1
    :goto_0
    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v4

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAlarmRecords() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return v1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private deleteAlarmRecords(ILjava/lang/String;)Z
    .locals 10

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In deleteAlarmRecords by uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pknName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "creatorUid"

    const-string v3, "creator"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "creatorUid"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerTable"

    const-string/jumbo v9, "timerIndex"

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerTable"

    invoke-virtual {v5, v8, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v5

    :cond_1
    :goto_0
    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v5

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAlarmRecords() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    const-string v2, "[SecureTimerService:] "

    const-string v3, "In deleteAlarmRecords return false"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private deleteAlarmRecords(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In deleteAlarmRecords by index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "timerIndex"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "timerIndex"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SecureTimerTable"

    const-string/jumbo v8, "timerIndex"

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SecureTimerTable"

    invoke-virtual {v3, v7, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v3

    :cond_1
    :goto_0
    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAlarmRecords() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return v1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private deleteStatusPolicy(I)Z
    .locals 10

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In deleteStatusPolicy by userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "userId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v3, v5, v1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerStatusTable"

    const-string/jumbo v9, "status"

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerStatusTable"

    invoke-virtual {v4, v8, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v4

    :cond_1
    :goto_0
    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v4

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteStatusPolicy() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return v1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private deleteStatusPolicy(ILjava/lang/String;)Z
    .locals 10

    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In deleteStatusPolicy by uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pknName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "callerUid"

    const-string/jumbo v3, "pkgName"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "callerUid"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerStatusTable"

    const-string/jumbo v9, "status"

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SecureTimerStatusTable"

    invoke-virtual {v5, v8, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v5

    :cond_1
    :goto_0
    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v5

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteStatusPolicy() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return v1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private disableCounter()Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->resetSecureTimerinDb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "resetSecureTimerinDb failed"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_disableCounter()I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "[SecureTimerService:] "

    const-string/jumbo v2, "disableCounter succeeded!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disableCounter failed: return code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private enableCounter(Z)Z
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In enableCounter Input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "misc"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "arcounter"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "[SecureTimerService:] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error!!! Cannot create cache directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_enableCounter(J)I

    move-result v5

    if-nez v5, :cond_1

    const-string v6, "[SecureTimerService:] "

    const-string/jumbo v7, "enableCounter succeeded!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_1
    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->reset_arcounter_internal()Z

    move-result v6

    return v6

    :cond_2
    const-string v6, "[SecureTimerService:] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "enableCounter failed: return code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    return v6
.end method

.method private enforceSecureTimerPermission()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURE_TIMER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private getAndroidVersion()D
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "(\\d+[.]\\d+)(.*)"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/securetimer/SecureTimerService;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/securetimer/SecureTimerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->sInstance:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->sInstance:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->sInstance:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getProduct()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTickDelay(J)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-wide v2, p1

    move p1, v1

    :goto_0
    const/16 p2, 0x10

    if-gt p1, p2, :cond_3

    iget-boolean p2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    return p2

    :cond_0
    const-wide/16 v4, 0x1

    and-long v6, v2, v4

    cmp-long p2, v6, v4

    if-nez p2, :cond_2

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I

    aget p2, p2, p1

    :goto_1
    move v0, p2

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I

    aget p2, p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_2
    :goto_2
    shr-long/2addr v2, v1

    add-int/lit8 p2, p1, 0x1

    int-to-byte p1, p2

    goto :goto_0

    :cond_3
    const-string p1, "[SecureTimerService:] "

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTickDelay : "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    if-ge v0, p1, :cond_4

    return v1

    :cond_4
    if-lt v0, p1, :cond_5

    const/16 p1, 0x3c

    if-ge v0, p1, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const/16 p1, 0x168

    return p1
.end method

.method private initUpdateTickThread()V
    .locals 2

    const-string v0, "[SecureTimerService:] "

    const-string v1, "In initUpdateTickThread "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->changeUpdateTickThreadStatus(ZZ)V

    return-void
.end method

.method private isSecureTimerEnabledInDb()Z
    .locals 14

    const-string v0, "callerUid"

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "pkgName"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SecureTimerStatusTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, -0x1

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_2

    const-string/jumbo v8, "status"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "userId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "callerUid"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "pkgName"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "[SecureTimerService:] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isSecureTimerEnabledInDb: 1 record found in status db userId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "adminUid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "callerPkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-ne v7, v5, :cond_1

    return v5

    :cond_3
    if-ne v7, v5, :cond_4

    move v3, v5

    nop

    :cond_4
    return v3

    :cond_5
    :goto_0
    const-string v4, "[SecureTimerService:] "

    const-string/jumbo v5, "isSecureTimerEnabledInDb: No record found in status db"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "[SecureTimerService:] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSecureTimerEnabledInDb - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v3

    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method private notifyUpdateTickException()V
    .locals 7

    const-string v0, "[SecureTimerService:] "

    const-string v1, "In notifyUpdateTickException "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    iget-object v3, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.SECURE_TIMER_TIME_UPDATE_EXCEPTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerBroadcastReceiverForFactoryReset()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForFactoryReset:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerBroadcastReceiverForPackageChange()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForPackageChange:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerBroadcastReceiverForTimeChange()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIsTimeChangeReceiverRegistered:Z

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v1, "registerBroadcastReceiverForTimeChange"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForTimeChange:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIsTimeChangeReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private registerBroadcastReceiverForUserChange()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForUserChange:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerBroadcastReceiverForUserUnlocked()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForUserUnlocked:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private removeTimer(Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "[SecureTimerService:] "

    const-string/jumbo v2, "requested remove() of null oldAlarm"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In removeTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-byte v1, p1, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_cancelTimer(B)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In removeTimer failed ! Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    const-string v2, "[SecureTimerService:] "

    const-string v3, "In removeTimer Timer is removed from ese"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->removeFromDb()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "[SecureTimerService:] "

    const-string v3, "In removeTimer Timer is removed from db"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v3, p1, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v3, p1, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    nop

    :cond_4
    return v0
.end method

.method private resetAlarmRetryCount()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->alarm_retry_count:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetSecureTimerinDb()Z
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SecureTimerTable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    iget-object v6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SecureTimerStatusTable"

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    :goto_0
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_1
    const-string v7, "[SecureTimerService:] "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resetSecureTimerinDb() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    const-string v7, "[SecureTimerService:] "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In User resetSecureTimerinDb result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :goto_3
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6
.end method

.method private reset_arcounter_internal()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_disableCounter()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_enableCounter(J)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    return v3
.end method

.method private setSecureTimerEnabledInDb(Z)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "callerUid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "userId"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "pkgName"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, -0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SecureTimerStatusTable"

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v6

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "[SecureTimerService:] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSecureTimerEnabledInDb - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    const-string v4, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveStatusIntoDb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_2
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method

.method private setTimerInternal(JLjava/lang/String;Z)Z
    .locals 11

    new-instance v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, p0, p3, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;Ljava/lang/String;I)V

    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check idMap for id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->removeTimer(Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    new-instance v4, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;

    invoke-direct {v4, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$1;)V

    move-object v3, v4

    move-object v5, p0

    move-wide v6, p1

    move-object v8, p3

    move v9, p4

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->addTimer(JLjava/lang/String;ZLcom/android/server/enterprise/securetimer/SecureTimerService$Result;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v3, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->alarmState:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->triggerAlarm(J)V

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabledInDb()Z

    move-result v2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->changeUpdateTickThreadStatus(ZZ)V

    return v4

    :cond_2
    return v2
.end method

.method private syncTimersFromDb()V
    .locals 8

    const-string v0, "[SecureTimerService:] "

    const-string v1, "In syncFromDb"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :goto_1
    const-string/jumbo v1, "timerIndex"

    const-string/jumbo v2, "userId"

    const-string v3, "creatorUid"

    const-string v4, "adminUid"

    const-string/jumbo v5, "tag"

    const-string v6, "creator"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SecureTimerTable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    new-instance v4, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->loadFromDb(Landroid/content/ContentValues;)V

    iget-object v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v6, v4, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v6, v4, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v6, v4, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->hashCode()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In syncFromDb  Complete sync from db. Number of alarms in Cache mIdMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mIndexMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string v3, "[SecureTimerService:] "

    const-string v4, "In syncFromDb  Nothing to sync from db"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syncTimersFromDb - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method private systemReady()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabledInDb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->syncTimersFromDb()V

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private triggerAlarm(J)V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    const/4 v0, 0x1

    move-wide/from16 v4, p1

    move v3, v0

    :goto_0
    const/16 v6, 0x10

    if-gt v3, v6, :cond_2

    iget-boolean v6, v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z

    if-nez v6, :cond_0

    return-void

    :cond_0
    const-wide/16 v6, 0x1

    and-long v8, v4, v6

    cmp-long v6, v8, v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIndexMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string v7, "[SecureTimerService:] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "find trigger alarm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v11, v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    shr-long/2addr v4, v0

    add-int/lit8 v6, v3, 0x1

    int-to-byte v3, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v3, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-boolean v0, v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;

    const-string v0, "[SecureTimerService:] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send intent for trigger alarm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v8, v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.action.SECURE_TIMER_TIMEOUT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.samsung.android.knox.intent.extra.SECURE_TIMER_TAG"

    iget-object v8, v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->tag:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "INDEX"

    iget-byte v8, v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->indexIneSE:B

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object v7, v6, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerAlarm;->creatorPackage:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "[SecureTimerService:] "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "intent info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForTimeOutConfirm:Landroid/content/BroadcastReceiver;

    iget-object v13, v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v7, "[SecureTimerService:] "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "triggerAlarm - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    return-void
.end method

.method private unregisterBroadcastReceiverForTimeChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIsTimeChangeReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mServiceContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mBroadCastReceiverForTimeChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIsTimeChangeReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method native arcounter_disableCounter()I
.end method

.method native arcounter_enableCounter(J)I
.end method

.method public cancelTimer(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string v2, "cancelTimer failed! No permission!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SecureTimerService:] "

    const-string v2, "cancelTimer failed! SecureTimer is not enabled!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "requested cancelTimer() of null tag"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "[SecureTimerService:] "

    const-string/jumbo v3, "requested cancelTimer() of empty tag"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->cancelTimerInternal(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getReferenceTime()J
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v3, "getReferenceTime failed! No permission!"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v3, "getReferenceTime failed! SecureTimer is not enabled!"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_1
    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v3, "in getReferenceTime"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_getRefTime()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;

    if-eqz v0, :cond_4

    iget v3, v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->returnCode:I

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getReferenceTime succeeded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "Result is null"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->alarmState:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->triggerAlarm(J)V

    iget-wide v1, v0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->referenceTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    return-wide v1

    :cond_4
    :goto_1
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getReferenceTime failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "Result is null"

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public getRemainingTime(Ljava/lang/String;)J
    .locals 12

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v1, "getRemainingTime failed! No permission!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-string v0, "[SecureTimerService:] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getRemainingTime by tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SecureTimerTable"

    const-string/jumbo v6, "timerIndex"

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v5, "timerIndex"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v6, "[SecureTimerService:] "

    const-string v7, "In getRemainingTime failed! indexInDB == null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-wide v0

    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const-string v7, "[SecureTimerService:] "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In getRemainingTime: calling arcounter_getRemainTime by index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_getRemainTime(BB)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;

    if-eqz v7, :cond_5

    iget v8, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->returnCode:I

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v8, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->remainingTime:J

    const-wide/16 v10, 0x3e8

    mul-long v0, v8, v10

    const-string v8, "[SecureTimerService:] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getRemainingTime: return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->alarmState:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->triggerAlarm(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-wide v0

    :cond_5
    :goto_0
    :try_start_2
    const-string v8, "[SecureTimerService:] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getRemainingTime: arcounter_getRemainTime return error ! return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-wide v0

    :cond_6
    :goto_1
    :try_start_3
    const-string v5, "[SecureTimerService:] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In getRemainingTime: tag doesn\'t exist in db ! return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-wide v0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRemainingTime() exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-wide v0

    :goto_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3

    :cond_7
    :goto_3
    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getRemainingTime: empty tag or null tag string ! return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getTimers()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/securetimer/TimerInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v3, "getTimers failed! No permission!"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v3, "getTimers failed! SecureTimer is not enabled!"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v3, "in getTimers"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    move-object v4, v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-string/jumbo v6, "userId"

    const-string v7, "creatorUid"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string/jumbo v8, "timerIndex"

    const-string/jumbo v11, "tag"

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v8

    iget-object v11, v1, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "SecureTimerTable"

    invoke-virtual {v11, v12, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_2

    move-object v2, v3

    move/from16 v19, v5

    move-object/from16 v20, v6

    goto/16 :goto_3

    :cond_2
    nop

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_7

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    new-instance v13, Lcom/samsung/android/knox/securetimer/TimerInfo;

    invoke-direct {v13}, Lcom/samsung/android/knox/securetimer/TimerInfo;-><init>()V

    const-string/jumbo v14, "timerIndex"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v14, :cond_3

    :try_start_1
    const-string v10, "[SecureTimerService:] "

    const-string/jumbo v15, "getTimers failed! indexIneSE == null"

    invoke-static {v10, v15}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4

    :cond_3
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    invoke-static {v15, v10}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_getTimer(BB)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;

    if-eqz v15, :cond_5

    iget v10, v15, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->returnCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v10, :cond_4

    move-object v2, v3

    move/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_1

    :cond_4
    move-object/from16 v16, v3

    :try_start_3
    iget-wide v2, v15, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->timerTime:J

    const-wide/16 v17, 0x3e8

    mul-long v2, v2, v17

    iput-wide v2, v13, Lcom/samsung/android/knox/securetimer/TimerInfo;->triggerTime:J

    const-string/jumbo v2, "tag"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/samsung/android/knox/securetimer/TimerInfo;->tag:Ljava/lang/String;

    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in getTimers: load timer = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v5

    move-object/from16 v20, v6

    iget-wide v5, v13, Lcom/samsung/android/knox/securetimer/TimerInfo;->triggerTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/samsung/android/knox/securetimer/TimerInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " indexIneSE = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v2, v16

    :try_start_4
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v5, v15, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->alarmState:J

    invoke-direct {v1, v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->triggerAlarm(J)V

    add-int/lit8 v9, v9, 0x1

    move-object v3, v2

    move/from16 v5, v19

    move-object/from16 v6, v20

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_4

    :cond_5
    move-object v2, v3

    move/from16 v19, v5

    move-object/from16 v20, v6

    :goto_1
    const-string v3, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimers failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, "Result is null"

    goto :goto_2

    :cond_6
    invoke-virtual {v15}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v3, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    nop

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v3, 0x0

    return-object v3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_7
    move-object v2, v3

    goto :goto_5

    :cond_8
    move-object v2, v3

    move/from16 v19, v5

    move-object/from16 v20, v6

    :goto_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_5
    const-string v3, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimers() exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_5
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-object v2

    :catchall_3
    move-exception v0

    :goto_6
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "getVersion failed! No permission!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "getVersion"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->getAndroidVersion()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->getProduct()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " Product = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_2

    const-string/jumbo v4, "star"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1.0"

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public isSecureTimerEnabled()Z
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "isSecureTimerEnabled failed! No permission!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "isSecureTimerEnabled"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabledInDb()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v3, "[SecureTimerService:] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSecureTimerEnabled isThreadRunning = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isEnabledInDb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    const-string v3, "[SecureTimerService:] "

    const-string/jumbo v4, "isSecureTimerEnabled return false: SecureTimer is enabled but thread is not running"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method public setSecureTimerEnabled(Z)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "setSecureTimerEnabled failed! No permission!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabled()Z

    move-result v0

    const-string v2, "[SecureTimerService:] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSecureTimerEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enableCounter(Z)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->disableCounter()Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService;->mIsClientReceiverReady:Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->changeUpdateTickThreadStatus(ZZ)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->setSecureTimerEnabledInDb(Z)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabled()Z

    move-result v1

    return v1
.end method

.method public setTimer(JLjava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->enforceSecureTimerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "setTimer failed! No permission!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->isSecureTimerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "setTimer failed! SecureTimer is not enabled!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "[SecureTimerService:] "

    const-string v2, "In setTimer"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_2

    const-string v0, "[SecureTimerService:] "

    const-string/jumbo v2, "requested setTimer() of null tag"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "[SecureTimerService:] "

    const-string/jumbo v3, "requested setTimer() of empty tag"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->setTimerInternal(JLjava/lang/String;Z)Z

    move-result v1

    return v1
.end method
