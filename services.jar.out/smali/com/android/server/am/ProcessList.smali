.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_DIRECTBOOST:B = 0x3t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPRIOSTT:B = 0x5t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_SETPARAMETER:B = 0x4t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_ABNORMAL:I = -0x3

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_CACHED:I = -0x2

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static addBonusEFK:I

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J

.field private static v_BonusEFK:I


# instance fields
.field private final direct_mOomAdj:[I

.field private final direct_mOomMinFree:[I

.field private mCachedRestoreLevel:J

.field mDisplayHeight:I

.field mDisplayWidth:I

.field private mHaveDisplaySize:Z

.field private mIsDisplayChanged:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    const-string/jumbo v1, "ro.config.add_bonusEFK"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/ProcessList;->addBonusEFK:I

    const-string/jumbo v1, "ro.config.v_bonusEFK"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/ProcessList;->v_BonusEFK:I

    const/16 v1, 0x13

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->direct_mOomAdj:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->direct_mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->direct_mOomMinFree:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iput v0, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x385
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data

    :array_2
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_3
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1

    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 8

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    if-eqz v3, :cond_2

    move v4, v1

    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v1, v1, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v1

    iput v4, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    :goto_2
    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    nop

    :goto_3
    if-eqz p2, :cond_5

    if-eqz v3, :cond_4

    sget-object v2, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_7

    if-eqz p3, :cond_6

    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_8

    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    aget-wide v4, v2, v0

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    const-wide/32 v4, 0x36ee80

    :cond_9
    add-long v6, p4, v4

    return-wide v6
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    const-string v1, "cch"

    const-string v2, "  "

    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x320

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    const-string/jumbo v2, "svcb "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    const-string/jumbo v2, "prev "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    const-string/jumbo v2, "home "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    const-string/jumbo v2, "svc  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    const-string/jumbo v2, "hvy  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    const-string v2, "bkup "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7

    const-string/jumbo v2, "prcp "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8

    const-string/jumbo v2, "vis  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    if-ltz p0, :cond_9

    const-string/jumbo v0, "fore "

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_a

    const-string/jumbo v2, "psvc "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const/16 v0, -0x320

    if-lt p0, v0, :cond_b

    const-string/jumbo v2, "pers "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/16 v0, -0x384

    if-lt p0, v0, :cond_c

    const-string/jumbo v2, "sys  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_d

    const-string/jumbo v2, "ntv  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x3e6

    return v0

    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    :pswitch_11
    const/16 v0, 0x3ea

    return v0

    :pswitch_12
    const/16 v0, 0x3e9

    return v0

    :pswitch_13
    const/16 v0, 0x3e8

    return v0

    :pswitch_14
    const/16 v0, 0x3e7

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "??"

    goto :goto_0

    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "CEM "

    goto :goto_0

    :pswitch_2
    const-string v0, "CRE "

    goto :goto_0

    :pswitch_3
    const-string v0, "CACC"

    goto :goto_0

    :pswitch_4
    const-string v0, "CAC "

    goto :goto_0

    :pswitch_5
    const-string v0, "LAST"

    goto :goto_0

    :pswitch_6
    const-string v0, "HOME"

    goto :goto_0

    :pswitch_7
    const-string v0, "HVY "

    goto :goto_0

    :pswitch_8
    const-string v0, "TPSL"

    goto :goto_0

    :pswitch_9
    const-string v0, "RCVR"

    goto :goto_0

    :pswitch_a
    const-string v0, "SVC "

    goto :goto_0

    :pswitch_b
    const-string v0, "BKUP"

    goto :goto_0

    :pswitch_c
    const-string v0, "TRNB"

    goto :goto_0

    :pswitch_d
    const-string v0, "IMPB"

    goto :goto_0

    :pswitch_e
    const-string v0, "IMPF"

    goto :goto_0

    :pswitch_f
    const-string v0, "BFGS"

    goto :goto_0

    :pswitch_10
    const-string v0, "FGS "

    goto :goto_0

    :pswitch_11
    const-string v0, "TOP "

    goto :goto_0

    :pswitch_12
    const-string v0, "PERU"

    goto :goto_0

    :pswitch_13
    const-string v0, "PER "

    nop

    :goto_0
    nop

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private static openLmkdSocket()Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final remove(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private setDirectBoost([I)V
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "none"

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKADJArray:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKADJArray:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOomLevels_directboost using mDirectLMKADJArray "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKADJArray:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->direct_mOomAdj:[I

    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "ActivityManager"

    const-string/jumbo v5, "updateOomLevels, DirectLMKADJArray NumberFormatException "

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->mDirectLMKMultiVal:F

    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->direct_mOomMinFree:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->direct_mOomMinFree:[I

    aget v4, p1, v1

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-nez v1, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->direct_mOomAdj:[I

    array-length v1, v1

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v5, v4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    nop

    :goto_3
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->direct_mOomAdj:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->direct_mOomMinFree:[I

    aget v3, v3, v2

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->direct_mOomAdj:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v5, v4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    nop

    :goto_4
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    aget v3, p1, v2

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final setLmkdParameter(II)V
    .locals 2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final setOomAdj(IIII)V
    .locals 8

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 24

    move-object/from16 v1, p0

    iget-wide v4, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v6, 0x15e

    sub-long/2addr v4, v6

    long-to-float v0, v4

    const/high16 v4, 0x43af0000    # 350.0f

    div-float/2addr v0, v4

    const v4, 0x5dc00

    const v5, 0xfa000

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v8, 0x600

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    mul-int v6, p1, p2

    const v7, 0xfa000

    if-lt v6, v7, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-wide v6, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v8, 0x12c

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const v7, 0x44b54000    # 1450.0f

    div-float v0, v6, v7

    const v4, 0x25800

    const v5, 0x1fa400

    goto :goto_0

    :goto_2
    mul-int v0, p1, p2

    int-to-float v0, v0

    int-to-float v7, v4

    sub-float/2addr v0, v7

    sub-int v7, v5, v4

    int-to-float v7, v7

    div-float v7, v0, v7

    cmpl-float v0, v6, v7

    if-lez v0, :cond_2

    move v0, v6

    goto :goto_3

    :cond_2
    move v0, v7

    :goto_3
    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gez v8, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v8

    if-lez v8, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    :goto_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e007e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e007d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sget-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v10, :cond_5

    sget v10, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    :cond_5
    move v10, v0

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    move v13, v0

    const/4 v0, 0x0

    :goto_6
    iget-object v14, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v14, v14

    const/4 v15, 0x2

    const/4 v11, 0x4

    if-ge v0, v14, :cond_9

    iget-object v14, v1, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v14, v14, v0

    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v12, v12, v0

    if-eqz v13, :cond_8

    if-ne v0, v11, :cond_7

    mul-int/lit8 v11, v12, 0x3

    div-int/lit8 v12, v11, 0x2

    goto :goto_7

    :cond_7
    const/4 v15, 0x5

    if-ne v0, v15, :cond_8

    mul-int/lit8 v15, v12, 0x7

    div-int/lit8 v12, v15, 0x4

    :cond_8
    :goto_7
    iget-object v11, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v14

    move/from16 v17, v4

    sub-int v4, v12, v14

    int-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v15, v4

    float-to-int v4, v15

    aput v4, v11, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v17

    goto :goto_6

    :cond_9
    move/from16 v17, v4

    if-ltz v9, :cond_a

    const/4 v0, 0x0

    :goto_8
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v4, v4

    if-ge v0, v4, :cond_a

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v12, v9

    iget-object v14, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v14, v0

    int-to-float v14, v14

    mul-float/2addr v12, v14

    iget-object v14, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    int-to-float v14, v14

    div-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v4, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v15, 0x2

    goto :goto_8

    :cond_a
    if-eqz v8, :cond_c

    const/4 v0, 0x0

    :goto_9
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v4, v4

    if-ge v0, v4, :cond_c

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v12, v4, v0

    int-to-float v14, v8

    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v15, v15, v0

    int-to-float v15, v15

    mul-float/2addr v14, v15

    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v11, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v11, v11

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v11, v15, v11

    int-to-float v11, v11

    div-float/2addr v14, v11

    float-to-int v11, v14

    add-int/2addr v12, v11

    aput v12, v4, v0

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v4, v4, v0

    if-gez v4, :cond_b

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v11, 0x0

    aput v11, v4, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x4

    goto :goto_9

    :cond_c
    const/16 v0, 0x38a

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v11

    const-wide/16 v14, 0x400

    div-long/2addr v11, v14

    const-wide/16 v19, 0x3

    div-long v11, v11, v19

    iput-wide v11, v1, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int v0, p1, p2

    const/4 v4, 0x4

    mul-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit16 v0, v0, 0x400

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x10e0065

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0064

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-ltz v11, :cond_d

    move v0, v11

    :cond_d
    if-eqz v4, :cond_e

    add-int/2addr v0, v4

    if-gez v0, :cond_e

    const/4 v0, 0x0

    :cond_e
    const/4 v12, 0x0

    iget-wide v14, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v19, 0xc00

    cmp-long v14, v14, v19

    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    if-ltz v14, :cond_f

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v14

    if-nez v14, :cond_f

    iget-wide v14, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v21, 0x400

    mul-long v14, v14, v21

    long-to-double v14, v14

    mul-double v14, v14, v19

    double-to-int v12, v14

    :cond_f
    sget v14, Lcom/android/server/am/ProcessList;->addBonusEFK:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    iget-wide v14, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v21, 0x400

    mul-long v14, v14, v21

    long-to-double v14, v14

    mul-double v14, v14, v19

    double-to-int v12, v14

    goto :goto_a

    :cond_10
    sget v14, Lcom/android/server/am/ProcessList;->addBonusEFK:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_11

    sget v12, Lcom/android/server/am/ProcessList;->v_BonusEFK:I

    goto :goto_a

    :cond_11
    sget v14, Lcom/android/server/am/ProcessList;->addBonusEFK:I

    if-nez v14, :cond_12

    const/4 v12, 0x0

    :cond_12
    :goto_a
    add-int v14, v0, v12

    const-string/jumbo v0, "none"

    sget-object v15, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v15, ","

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOomLevels using LMKArray "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_b
    :try_start_0
    array-length v2, v15

    if-ge v0, v2, :cond_13

    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget-object v3, v15, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v18, 0x4

    mul-int/lit8 v3, v3, 0x4

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_13
    goto :goto_c

    :catch_0
    move-exception v0

    const-string v2, "ActivityManager"

    const-string/jumbo v3, "updateOomLevels, LMKArray NumberFormatException "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_c
    if-eqz p3, :cond_16

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    const/4 v3, 0x2

    mul-int v15, v3, v0

    const/4 v3, 0x1

    add-int/2addr v15, v3

    const/4 v3, 0x4

    mul-int v0, v3, v15

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    nop

    :goto_d
    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v3, v15, :cond_15

    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v15, v15, v3

    mul-int/lit16 v15, v15, 0x400

    div-int/lit16 v15, v15, 0x1000

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v3

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_15
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    invoke-direct {v1, v3}, Lcom/android/server/am/ProcessList;->setDirectBoost([I)V

    const-string/jumbo v3, "sys.sysctl.extra_free_kbytes"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v2

    const-string v3, "ActivityManager"

    const-string v4, "Error writing to lowmemorykiller socket"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    sget-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_1
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v4, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->HRT_MaxCached_Enable:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessList;->getCachedNumByRes(II)V

    :cond_1
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->HRT_MinCached_Enable:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessList;->getMinCachedNumByRes(II)V

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    :cond_3
    return-void
.end method

.method public getCachedNumByRes(II)V
    .locals 4

    mul-int v0, p1, p2

    const v1, 0x384000

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    :goto_0
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    int-to-float v1, v1

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change Max_Cached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinCachedNumByRes(II)V
    .locals 3

    mul-int v0, p1, p2

    const v1, 0x384000

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MinCached:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MinCached:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    :goto_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change Min_Cached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getmIsDisplayChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    return v0
.end method

.method public setTrimCriticalTH(I)V
    .locals 0

    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0

    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    return-void
.end method

.method public setmIsDisplayChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    :cond_0
    return-void
.end method

.method public updateLMKThreshold()V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void
.end method
