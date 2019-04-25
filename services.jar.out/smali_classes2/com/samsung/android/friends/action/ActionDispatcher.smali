.class public Lcom/samsung/android/friends/action/ActionDispatcher;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/action/ActionDispatcher$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionDispatcher"


# instance fields
.field private volatile mAcceptable:Z

.field private final mAccessMgr:Lcom/samsung/android/friends/executable/ExecAccessMgr;

.field private mDefault:Lcom/samsung/android/friends/action/ActionExecutable;

.field private mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mExecutes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/friends/action/ActionExecutable;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/samsung/android/friends/common/Logger;

.field private final mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/friends/executable/ExecAccessMgr;Lcom/samsung/android/friends/common/Logger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAccessMgr:Lcom/samsung/android/friends/executable/ExecAccessMgr;

    iput-object p2, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAcceptable:Z

    return-void
.end method

.method private getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public varargs add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    iget-boolean v0, v1, Lcom/samsung/android/friends/action/ActionDispatcher;->mAcceptable:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/friends/action/ActionDispatcher;->mLogger:Lcom/samsung/android/friends/common/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ActionDispatcher"

    const-string/jumbo v5, "skipped action 0x%x - not ready"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v13, 0x0

    const-string v0, "ActionDispatcher"

    const-string v2, "execute 0x%x"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v0, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/friends/action/ActionDispatcher;->mAccessMgr:Lcom/samsung/android/friends/executable/ExecAccessMgr;

    invoke-virtual {v0, v9}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isAccessible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/samsung/android/friends/action/ActionDispatcher;->mDefault:Lcom/samsung/android/friends/action/ActionExecutable;

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/friends/action/ActionExecutable;

    move-object v14, v2

    if-eqz v10, :cond_1

    const-string/jumbo v2, "sysSvcVer"

    const/4 v3, 0x4

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz v14, :cond_3

    invoke-interface {v14, v10, v0, v9}, Lcom/samsung/android/friends/action/ActionExecutable;->preExecute(Landroid/os/Bundle;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14, v9}, Lcom/samsung/android/friends/action/ActionExecutable;->executeOnSameThread(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14, v10, v0, v9}, Lcom/samsung/android/friends/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    move-result-object v2

    move-object v13, v2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    move v15, v2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/friends/action/ActionDispatcher;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v7, Lcom/samsung/android/friends/action/ActionDispatcher$Task;

    const/16 v16, 0x0

    move-object v2, v7

    move v3, v15

    move-object v4, v14

    move-object v5, v10

    move v6, v0

    move-object v11, v7

    move v7, v9

    move-object v12, v8

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/friends/action/ActionDispatcher$Task;-><init>(ILcom/samsung/android/friends/action/ActionExecutable;Landroid/os/Bundle;IILcom/samsung/android/friends/action/ActionDispatcher$1;)V

    invoke-interface {v12, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v3

    move-object v13, v3

    const-string v3, "ActionDispatcher"

    const-string/jumbo v4, "submit task[%d]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static {v3, v4, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Not accessible"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v2, v0, Landroid/os/RemoteException;

    if-nez v2, :cond_5

    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-object v13

    :cond_5
    throw v0
.end method

.method public setAcceptable(Z)Lcom/samsung/android/friends/action/ActionDispatcher;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAcceptable:Z

    return-object p0
.end method

.method public setDefault(Lcom/samsung/android/friends/action/ActionExecutable;)Lcom/samsung/android/friends/action/ActionDispatcher;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mDefault:Lcom/samsung/android/friends/action/ActionExecutable;

    return-object p0
.end method
