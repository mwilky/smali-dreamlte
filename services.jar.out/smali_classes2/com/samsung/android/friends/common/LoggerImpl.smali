.class public Lcom/samsung/android/friends/common/LoggerImpl;
.super Ljava/lang/Object;
.source "LoggerImpl.java"

# interfaces
.implements Lcom/samsung/android/friends/common/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/common/LoggerImpl$Node;
    }
.end annotation


# static fields
.field private static final TIME_DIFF:J = 0x5265c00L


# instance fields
.field private mLastTimeStamp:J

.field private final mMaxCount:I

.field private final mNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/friends/common/LoggerImpl$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mLastTimeStamp:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    iput p1, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    return-void
.end method

.method private appendHistoryNode(Lcom/samsung/android/friends/common/LoggerImpl$Node;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/friends/common/LoggerImpl;->isExpired(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    :cond_1
    :goto_0
    iput-wide v1, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mLastTimeStamp:J

    iget-object v3, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isExpired(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mLastTimeStamp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public varargs append(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    invoke-static {p3, p4}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    new-instance v0, Lcom/samsung/android/friends/common/LoggerImpl$Node;

    invoke-direct {v0, p3, p1, p2}, Lcom/samsung/android/friends/common/LoggerImpl$Node;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/common/LoggerImpl;->appendHistoryNode(Lcom/samsung/android/friends/common/LoggerImpl$Node;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Lcom/samsung/android/friends/common/LoggerImpl$Node;

    invoke-direct {v0, p1}, Lcom/samsung/android/friends/common/LoggerImpl$Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/common/LoggerImpl;->appendHistoryNode(Lcom/samsung/android/friends/common/LoggerImpl$Node;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .locals 5

    const-string v0, "\n---- history info.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/friends/common/LoggerImpl$Node;

    if-eqz v2, :cond_0

    iget-wide v3, v2, Lcom/samsung/android/friends/common/LoggerImpl$Node;->timeStamp:J

    invoke-static {v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->getDateString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/samsung/android/friends/common/LoggerImpl$Node;->msg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
