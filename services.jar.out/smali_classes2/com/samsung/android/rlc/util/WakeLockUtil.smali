.class public Lcom/samsung/android/rlc/util/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PCWCLIENTTRACE_WakeLockUtil"

.field private static final WAKELOCK_TIMEOUT:I = 0xea60

.field private static final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mLock:Ljava/lang/Object;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireWakeLock(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "pcw wakelock"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v2, "PCWCLIENTTRACE_WakeLockUtil"

    const-string v3, "[WAKELOCK] pcw wakelock created"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    sget-object v1, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const-string v2, "PCWCLIENTTRACE_WakeLockUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WAKELOCK] pcw wakelock acquired : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static releaseWakeLock()V
    .locals 5

    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    move v1, v2

    if-nez v1, :cond_0

    sput-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v2, "PCWCLIENTTRACE_WakeLockUtil"

    const-string v3, "[WAKELOCK] pcw wakelock set null"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "PCWCLIENTTRACE_WakeLockUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WAKELOCK] pcw wakelock released : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sput-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v2, "PCWCLIENTTRACE_WakeLockUtil"

    const-string v3, "[WAKELOCK] pcw wakelock set null"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
