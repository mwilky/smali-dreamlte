.class public Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/os/IBinder;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    return-void
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v2, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;

    invoke-direct {v2, v0}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {p0, p1, v2, v1, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-direct {v3, p0, v2, v4}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V

    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not bind to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public getService()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    return-object v0
.end method
