.class public Lcom/android/server/net/NetworkStatsRecorder;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final BIGDATA_MOBILE_DATA:Ljava/lang/String; = "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorder"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"

.field private static sUsingClatUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/net/NetworkStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollection;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkStatsRecorder;->sUsingClatUidList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    const-wide v1, 0x7528ad000L

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    const-string/jumbo v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    return-void
.end method

.method private adjustMptcpUsage(Landroid/net/NetworkStats;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v9, p1

    if-eqz v9, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Landroid/net/NetworkStats;

    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    invoke-direct {v0, v10, v11, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v12, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    move-object v13, v1

    move v14, v2

    :goto_0
    move v8, v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v8, v1, :cond_7

    invoke-virtual {v9, v8, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v0, v7, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    move-wide v1, v10

    move-object v10, v7

    move v11, v8

    goto/16 :goto_4

    :cond_1
    const-string/jumbo v0, "lo"

    iget-object v1, v7, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v7, Landroid/net/NetworkStats$Entry;->tag:I

    const-string v1, "0x6effffe6"

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget v2, v7, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v7, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v4, 0x0

    iget v5, v7, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, v7, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v1, v7, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move-object v0, v9

    move v15, v1

    move-object/from16 v1, p2

    move-object v10, v7

    move v7, v15

    move v11, v8

    move v8, v14

    invoke-virtual/range {v0 .. v8}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIIIII)I

    move-result v14

    if-ltz v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-lt v14, v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v9, v14, v13}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v1, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    neg-long v1, v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v1, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    neg-long v1, v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v12, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/16 v1, 0x0

    :goto_2
    move-object v13, v0

    goto :goto_4

    :cond_5
    :goto_3
    const-wide/16 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    goto :goto_4

    :cond_6
    move-wide v1, v10

    move-object v10, v7

    move v11, v8

    :goto_4
    add-int/lit8 v3, v11, 0x1

    move-object v0, v10

    move-wide v10, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v9, v12}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    return-void

    :cond_8
    :goto_5
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 9

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    move-object v4, v0

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkStatsRecorder"

    const-string/jumbo v3, "problem completely reading network stats"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "NetworkStatsRecorder"

    const-string/jumbo v3, "problem completely reading network stats"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private recoverFromWtf()V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    const-string/jumbo v2, "netstats_dump"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    return-void

    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 6

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_0

    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    :cond_1
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_0
    return-void
.end method

.method public forcePersistLocked(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetworkStatsRecorder"

    const-string/jumbo v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    :goto_0
    nop

    :cond_0
    :goto_1
    return-void
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    return-object v0
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .locals 8

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    :cond_0
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    :cond_0
    return-void
.end method

.method public maybePersistLocked(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    :goto_0
    return-void
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;Ljava/lang/String;JZ)V

    return-void
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;Ljava/lang/String;JZ)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v5, :cond_1

    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    return-void

    :cond_1
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v15

    if-nez v15, :cond_3

    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    return-void

    :cond_3
    move-wide/from16 v26, p5

    invoke-virtual {v15}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    sub-long v28, v26, v6

    move-object/from16 v13, p4

    invoke-direct {v0, v15, v13}, Lcom/android/server/net/NetworkStatsRecorder;->adjustMptcpUsage(Landroid/net/NetworkStats;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    array-length v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v3, v7

    iget v9, v8, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    iget-object v10, v8, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    invoke-virtual {v15, v9, v10, v11}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/android/server/net/NetworkStatsRecorder;->sUsingClatUidList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    :goto_2
    move v12, v6

    invoke-virtual {v15}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v12, v6, :cond_19

    invoke-virtual {v15, v12, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    if-nez v10, :cond_5

    nop

    :goto_3
    move-object/from16 v16, v10

    move v3, v11

    move/from16 v17, v12

    move-object/from16 v19, v15

    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_5
    iget-object v6, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v10}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-interface {v6, v15, v12, v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/Object;)V

    :cond_7
    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v6, v10, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v10, Landroid/net/NetworkStats$Entry;->operations:J

    :cond_8
    iget-object v6, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v7, "v4-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v10}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget v6, v10, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_9

    sget-object v6, Lcom/android/server/net/NetworkStatsRecorder;->sUsingClatUidList:Ljava/util/ArrayList;

    iget v7, v10, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Lcom/android/server/net/NetworkStatsRecorder;->sUsingClatUidList:Ljava/util/ArrayList;

    iget v7, v10, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "NetworkStatsRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uses clat."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v6, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/net/NetworkIdentitySet;

    const/4 v7, 0x1

    if-nez v6, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz p7, :cond_e

    iget-object v9, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v14, "rmnet"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "VZW-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v3, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    const/4 v7, 0x0

    invoke-virtual {v14, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v14, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v30, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object/from16 v9, v30

    const/4 v3, 0x0

    const/16 v16, 0x1

    goto :goto_4

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v9, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v14, 0x1

    sub-int/2addr v9, v14

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v14, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v31, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v31

    :goto_4
    iget-object v14, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/net/NetworkIdentitySet;

    if-nez v14, :cond_b

    const-string v3, "NetworkStatsRecorder"

    const-string/jumbo v2, "ident is null, add to unknownIfaces"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v14}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkIdentity;

    nop

    move-object/from16 v32, v2

    const-string v2, "NetworkStatsRecorder"

    move-object/from16 v33, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v7

    const-string/jumbo v7, "temp_ident.getSubType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", temp_ident.getSubscriberId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", temp_ident.getNetworkId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", temp_ident.getRoaming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", temp_ident.getDefaultNetwork: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/NetworkIdentity;

    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v19

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v22

    const/16 v23, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v24

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    new-instance v6, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v6}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    invoke-virtual {v6, v2}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    nop

    nop

    move-object v2, v6

    goto :goto_5

    :cond_c
    move-object/from16 v32, v2

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    iget-object v2, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    move-object/from16 v33, v6

    move-object/from16 v34, v7

    iget-object v2, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    move-object/from16 v33, v6

    iget-object v2, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    move-object/from16 v33, v6

    move/from16 v16, v7

    move-object/from16 v2, v33

    :goto_5
    invoke-virtual {v10}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    :goto_6
    goto/16 :goto_3

    :cond_10
    iget-object v3, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget v3, v10, Landroid/net/NetworkStats$Entry;->uid:I

    if-nez v3, :cond_14

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkIdentity;

    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getType()I

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v7}, Landroid/net/NetworkIdentity;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_11

    goto :goto_8

    :cond_11
    goto :goto_7

    :cond_12
    :goto_8
    const/4 v3, 0x1

    nop

    :cond_13
    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iget v3, v10, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v3, :cond_15

    move/from16 v3, v16

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    :goto_9
    iget-boolean v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    if-eq v3, v6, :cond_18

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    iget v6, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v7, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v8, v10, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-wide/from16 v21, v28

    move-wide/from16 v23, v26

    move-object/from16 v25, v10

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    :cond_16
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    iget v6, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v7, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v8, v10, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-wide/from16 v21, v28

    move-wide/from16 v23, v26

    move-object/from16 v25, v10

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    :cond_17
    if-eqz v5, :cond_18

    iget v8, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v9, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v3, v10, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v6, v5

    move-object v7, v2

    move-object/from16 v16, v10

    move v10, v3

    move v3, v11

    move/from16 v17, v12

    move-wide/from16 v11, v28

    const/16 v18, 0x0

    move-wide/from16 v13, v26

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_a

    :cond_18
    move-object/from16 v16, v10

    move v3, v11

    move/from16 v17, v12

    move-object/from16 v19, v15

    const/16 v18, 0x0

    :goto_a
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v13, p4

    move v11, v3

    move-object/from16 v7, v16

    move-object/from16 v15, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_2

    :cond_19
    move v3, v11

    move-object/from16 v19, v15

    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    sget-object v2, Lcom/android/server/net/NetworkStatsRecorder;->sUsingClatUidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v3, v2, :cond_1c

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsRecorder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1b

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "category"

    const-string v8, "CLAT"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    :goto_b
    sget-object v9, Lcom/android/server/net/NetworkStatsRecorder;->sUsingClatUidList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1a

    sget-object v9, Lcom/android/server/net/NetworkStatsRecorder;->sUsingClatUidList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_1a
    const-string/jumbo v8, "uidList"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v8, "NetworkStatsRecorder"

    const-string/jumbo v9, "sending MdcService"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1b
    const-string v2, "NetworkStatsRecorder"

    const-string/jumbo v6, "mContext is null."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_c
    return-void
.end method

.method public removeUidsLocked([I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v1, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkStatsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem removing UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetworkStatsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem removing UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "NetworkStatsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem removing UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    :goto_0
    nop

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    :cond_5
    return-void
.end method

.method public resetLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setPersistThreshold(J)V
    .locals 6

    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    return-void
.end method

.method public writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v2, :cond_0

    const-wide v2, 0x10300000001L

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
