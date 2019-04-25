.class Lcom/android/server/GmsAlarmManager$NetWorkStats;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetWorkStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;
    }
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:J

.field final mLock:Ljava/lang/Object;

.field private mTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GmsAlarmManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    return-wide v0
.end method


# virtual methods
.method public addStartTime(J)V
    .locals 6

    new-instance v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    iput-wide p1, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->removeLastData(J)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(J)Ljava/lang/String;
    .locals 15

    move-object v1, p0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x5265c00

    sub-long v4, p1, v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    iget-object v9, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v9

    cmp-long v0, v4, v7

    const/4 v10, 0x0

    if-gtz v0, :cond_2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v11, v0

    iput-wide v11, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    nop

    :goto_0
    move v0, v10

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_1

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v10, v10, v7

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v2, v10

    :cond_0
    add-int/lit8 v10, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v7, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long v7, p1, v7

    add-long/2addr v2, v7

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    nop

    :goto_1
    move v0, v10

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_6

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v11, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v10, v11, v7

    if-eqz v10, :cond_5

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v10, v4

    cmp-long v10, v10, v7

    if-lez v10, :cond_5

    iget-wide v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    cmp-long v10, v2, v7

    if-nez v10, :cond_4

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_3

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v10, v4

    add-long/2addr v2, v10

    goto :goto_2

    :cond_3
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    iget-object v12, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v12, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long/2addr v10, v12

    add-long/2addr v2, v10

    goto :goto_2

    :cond_4
    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v2, v10

    :cond_5
    :goto_2
    add-int/lit8 v10, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v7, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v0, v7, v4

    if-gez v0, :cond_7

    const-wide/32 v2, 0x5265c00

    goto :goto_3

    :cond_7
    iget-object v0, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v7, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long v7, p1, v7

    add-long/2addr v2, v7

    :goto_3
    iget-wide v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    iput-wide v7, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    :cond_8
    :goto_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v7, 0x36ee80

    div-long v9, v2, v7

    mul-long/2addr v7, v9

    sub-long v7, v2, v7

    const-wide/32 v11, 0xea60

    div-long/2addr v7, v11

    div-long v11, v2, v11

    iput-wide v11, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "h "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "m("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "X)"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeLastData(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v6, v6, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v6, v6, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v4

    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEndTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->setEndTime(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
