.class public Lcom/android/server/TcpOptimizerLogger;
.super Ljava/lang/Object;
.source "TcpOptimizerLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/TcpOptimizerLogger;


# instance fields
.field private mErrorLog:Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;

.field mIsShowingGlobalLog:Z

.field mIsUsed:Z

.field private mTcpOptimizerLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    const-string v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsShowingGlobalLog:Z

    new-instance v0, Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mErrorLog:Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/TcpOptimizerLogger;
    .locals 2

    const-class v0, Lcom/android/server/TcpOptimizerLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/TcpOptimizerLogger;

    invoke-direct {v1}, Lcom/android/server/TcpOptimizerLogger;-><init>()V

    sput-object v1, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    :cond_0
    sget-object v1, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writeMobileDataLogFile()V
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/err"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/err/mobiledata_soc.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    nop

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/TcpOptimizerLogger;->mErrorLog:Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;

    invoke-virtual {v3, v1}, Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public add(Lcom/android/server/TcpStats;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    invoke-virtual {p1}, Lcom/android/server/TcpStats;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/TcpStats;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mErrorLog:Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;

    invoke-virtual {p1}, Lcom/android/server/TcpStats;->toStringForUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/TcpOptimizerLogger$TcpOptimizerLocalLog;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dumpTcpStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "TcpOptimizer Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsShowingGlobalLog:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "time - procName\tuid\tpid\ttid\taddr\tsid\tstate\terrno\tmark\tbytes_acked(tx)\tbytes_received(rx)\tscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/TcpOptimizerLogger;->writeMobileDataLogFile()V

    :cond_1
    return-void
.end method
