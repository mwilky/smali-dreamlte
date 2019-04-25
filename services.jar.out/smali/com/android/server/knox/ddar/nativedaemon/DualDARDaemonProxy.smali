.class public Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
.super Ljava/lang/Object;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.implements Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;


# static fields
.field public static final CLEAR_SECRET:Ljava/lang/String; = "CLEAR_SECRET"

.field public static final DE_ACCESS_RESTRICTION_POLICY:I = 0x9

.field public static final GET_CLIENTLIB_VERSION:Ljava/lang/String; = "GET_CLIENTLIB_VERSION"

.field public static final KNOX_DUAL_DAR_LIB_PATH:Ljava/lang/String; = "/data/misc/knoxcore/dualdar/"

.field public static final LOAD_CLIENT_LIBRARY:Ljava/lang/String; = "LOAD_CLIENT_LIBRARY"

.field public static final NUMBER_OF_THREADS:I = 0x10

.field private static final PROPERTY_DDAR_DAEMON_CONTROL:Ljava/lang/String; = "persist.sys.knox.dualdard"

.field public static final PUSH_SECRET:Ljava/lang/String; = "PUSH_SECRET"

.field public static final SET_DUALDAR_POLICY:Ljava/lang/String; = "SET_DUALDAR_POLICY"

.field public static final START_CLIENT_LIBRARY:Ljava/lang/String; = "START_CLIENT_LIBRARY"

.field public static final START_DAEMON:Ljava/lang/String; = "START_DAEMON"

.field public static final STOP_DAEMON:Ljava/lang/String; = "STOP_DAEMON"

.field public static final TAG:Ljava/lang/String; = "DualDARDaemonProxy"

.field public static final UNLOAD_CLIENT_LIBRARY:Ljava/lang/String; = "UNLOAD_CLIENT_LIBRARY"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;


# instance fields
.field private event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

.field isDaemonConnectionFailed:Z

.field private mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

.field private mConnectorThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    const-string v0, "DualDARDaemonProxy"

    const-string v2, "DualDARDaemonProxy() called"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sput-object p1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    :cond_0
    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private enforceCallingUser(I)V
    .locals 3

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v1, "enforceCallingUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    .locals 2

    const-class v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    :cond_0
    sget-object v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getSystemPropertyBoolean(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_2
    const-string v1, "DualDARDaemonProxy"

    const-string v2, "Invalid property"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    return v0
.end method

.method private static isDaemonRunning(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init.svc."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "running"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v6, "DualDARDaemonProxy"

    const-string/jumbo v7, "isDaemonRunning() - Service not found"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_3
    :goto_3
    const-string v2, "DualDARDaemonProxy"

    const-string/jumbo v3, "isDaemonRunning() - Invalid service name"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_4
    return v0
.end method

.method private static setSystemPropertyBoolean(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_2
    const-string v0, "DualDARDaemonProxy"

    const-string v1, "Invalid property"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    return-void
.end method

.method private startConnectorThread()V
    .locals 3

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v1, "startConnectorThread() "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v2, "DualDARDaemonProxy"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startTimer()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;-><init>(Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopConnectorThread()V
    .locals 4

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v1, "stopConnectorThread() "

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-virtual {v0, v2}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->setIsListening(Z)V

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    :cond_0
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    return-void
.end method

.method public clearSecret(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DualDARDaemonProxy"

    const-string v2, "clearSecret failed! Error: native interface not yet connected failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v2, "key"

    const-string/jumbo v3, "evict"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "all"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v6

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "DualDARDaemonProxy"

    const-string/jumbo v3, "startClientLibrary failed! Error: native interface not yet connected failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v3, "vendor_lib"

    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v1

    const-string v3, "DualDARDaemonProxy"

    const-string/jumbo v4, "getClientLibraryVersion() got response from executeSync"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getResponseCode()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v3, "DualDARDaemonProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startClientLibrary failed! Error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public loadClientLibrary(ILjava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v2, "loadClientLibrary failed! Error: native interface not yet connected failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "load"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/knoxcore/dualdar/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v6

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public onDaemonConnected()V
    .locals 3

    :try_start_0
    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v1, "onDaemonConnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDaemonDisconnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->enforceCallingUser(I)V

    :try_start_0
    const-string v2, "DualDARDaemonProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "UNLOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v5, "CLEAR_SECRET"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_2
    const-string v5, "SET_DUALDAR_POLICY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "PUSH_SECRET"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v5, "START_DAEMON"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_5
    const-string v5, "GET_CLIENTLIB_VERSION"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v5, "START_CLIENT_LIBRARY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v5, "STOP_DAEMON"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v6

    goto :goto_0

    :sswitch_8
    const-string v5, "LOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->clearSecret(I)Z

    move-result v3

    move v0, v3

    const-string/jumbo v3, "dual_dar_response"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "dual_dar_response_message"

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v4}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    const-string v3, "INNER_LAYER_SECRET"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    invoke-virtual {p0, v1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->pushSecret(ILjava/util/List;)Z

    move-result v4

    move v0, v4

    const-string/jumbo v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    const-string v3, "CRYPTO_PATH"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dual_dar_response"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startClientLibrary(I)Z

    move-result v3

    move v0, v3

    const-string/jumbo v3, "dual_dar_response"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "dual_dar_response_message"

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v4}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_4
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->unloadClientLibrary(I)Z

    move-result v3

    move v0, v3

    const-string/jumbo v3, "dual_dar_response"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "dual_dar_response_message"

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v4}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_5
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    const-string v3, "KEY_CLIENT_LIBRARY_NAME"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->loadClientLibrary(ILjava/lang/String;)Z

    move-result v4

    move v0, v4

    const-string/jumbo v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_6
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    const-string v3, "CRYPTO_TYPE"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p0, v1, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicy(II)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicy(II)Z

    move-result v4

    move v0, v4

    const-string/jumbo v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->stopConnectorThread()V

    const-string/jumbo v3, "persist.sys.knox.dualdard"

    invoke-static {v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "dual_dar_response"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_8
    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v5, "dualdard"

    invoke-static {v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonRunning(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "DualDARDaemonProxy"

    const-string/jumbo v7, "start dualdard daemon ! "

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v5, "persist.sys.knox.dualdard"

    invoke-static {v5, v6}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v5, "DualDARDaemonProxy"

    const-string/jumbo v7, "dualdard daemon already running! "

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startTimer()V

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    iget-boolean v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    if-nez v5, :cond_3

    const-string/jumbo v4, "dual_dar_response"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    const-string/jumbo v5, "dual_dar_response"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->cancelTimer()V

    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_3
    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74c33360 -> :sswitch_8
        -0x41169e9f -> :sswitch_7
        -0x398c663c -> :sswitch_6
        0x432f76a -> :sswitch_5
        0xd454d21 -> :sswitch_4
        0x205d4775 -> :sswitch_3
        0x2b3c5855 -> :sswitch_2
        0x2dada502 -> :sswitch_1
        0x4d55a167 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pushSecret(ILjava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v2, "pushSecret failed! Error: native interface not yet connected failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/ddar/Secret;

    :try_start_0
    iget-object v4, v2, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-static {v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v6, "key"

    const-string/jumbo v7, "install"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    iget-object v9, v2, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    aput-object v9, v8, v3

    const/4 v3, 0x2

    aput-object v4, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v3}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v3, "pushSecret failed !"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_2
    return v3
.end method

.method public setDualDARPolicy(II)Z
    .locals 5

    sget-object v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/EnterprisePartitionManager;->setDualDARPolicy(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DualDARDaemonProxy"

    const-string/jumbo v2, "setDualDARPolicy failed!"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public startClientLibrary(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v2, "startClientLibrary failed! Error: native interface not yet connected failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "start"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v6

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public unloadClientLibrary(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v2, "unloadClientLibrary failed! Error: native interface not yet connected failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "unload"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
