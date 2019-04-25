.class Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    iput p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    iget v4, v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v2, v3, :cond_2

    const-string v2, "DualDarDaemonConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more buffered than allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    const-string v3, "DualDarDaemonConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "Pending requests:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(ILjava/lang/String;I)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    iget v4, v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p2}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long v3, p3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_2
    if-nez v1, :cond_4

    const-string v2, "DualDarDaemonConnector"

    const-string v3, "Timeout waiting for response"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
