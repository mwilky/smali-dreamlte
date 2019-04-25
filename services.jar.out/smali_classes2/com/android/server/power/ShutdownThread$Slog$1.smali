.class Lcom/android/server/power/ShutdownThread$Slog$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$Slog;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Slog;->access$4402(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4500()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "recovery"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "recovery-update"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4600()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V

    const-string v0, "ShutdownDelay"

    const-string v1, "!@delayDumpLock released"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4600()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4600()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_2
    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2700()Z

    move-result v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_3
    return-void
.end method
