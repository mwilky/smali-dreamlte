.class public Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;
.super Ljava/lang/Object;
.source "CmdSvcFacade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT:I = 0x7d0


# instance fields
.field private final mBlockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mCompleted:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    return-void
.end method

.method private handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_2

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_4

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    goto :goto_3

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0
.end method

.method public static synthetic lambda$perform$0(Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public perform(Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/samsung/android/friends/cmdsvc/CmdSvc;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/friends/cmdsvc/-$$Lambda$CmdSvcFacade$cIWEj78Pty7cT_kR7LqAS0DJc-o;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/friends/cmdsvc/-$$Lambda$CmdSvcFacade$cIWEj78Pty7cT_kR7LqAS0DJc-o;-><init>(Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;)V

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v2, v3}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {v4}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->close()V

    :cond_1
    :goto_1
    throw v4

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->close()V

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    return-object v0
.end method
