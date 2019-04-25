.class public Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.super Ljava/lang/Thread;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;
    }
.end annotation


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final DBG:Z = true

.field private static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field private static final HEADER_PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final HTTP_OK:Ljava/lang/String; = "HTTP/1.1 200 OK\n"

.field private static final MEMORY_RAM_PERCENTAGE:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "EnterpriseProxyServer"

.field private static final sAuthPriorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/proxy/auth/AuthenticationState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

.field private static sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyInfoCache:Landroid/net/ProxyInfo;


# instance fields
.field private mCacheCleanerTimer:Ljava/util/Timer;

.field private mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

.field public mIsRunning:Z

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    const-string v0, "Basic"

    const-string v1, "NTLM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnterpriseProxyHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/ProxyInfo;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->onCredentialsReceived(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V

    return-void
.end method

.method public static buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    aget-object v1, p0, v2

    :goto_0
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->convertUrlForAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    if-le v1, v3, :cond_1

    aget-object v1, p0, v3

    goto :goto_2

    :cond_1
    aget-object v1, p0, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connection: keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy-Connection: keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private checkCredentialsReceived(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getRequestLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-interface {v0, p1, v3, v2}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I

    move-result v1

    const-string v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCredentialsReceived: authentication status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3, v1}, Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;->onAuthenticationResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "EnterpriseProxyServer"

    const-string v5, "Failed talking with proxy credentials callback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private static convertUrlForAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string/jumbo v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getAvailableMemory()J
    .locals 4

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-object v0, v2

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    sput-object v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    return-object v1
.end method

.method public static getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const-string v2, ""

    return-object v2

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getAvailableMemory()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    const-wide/16 v7, 0x2

    move-wide v9, v7

    :cond_3
    const/16 v11, 0xd

    if-eq v1, v11, :cond_4

    int-to-char v11, v1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v4, :cond_5

    int-to-long v11, p2

    mul-long/2addr v11, v7

    cmp-long v11, v9, v11

    if-ltz v11, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v11, v9, v2

    if-lez v11, :cond_6

    const-string v7, "EnterpriseProxyServer"

    const-string v8, "Read more bytes (%d) than the maximum supported (%d) for a single line"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v6

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    return-object v5

    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-long/2addr v9, v7

    const/16 v11, 0xa

    if-eq v1, v11, :cond_7

    if-gez v1, :cond_3

    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .locals 12

    new-instance v0, Lcom/android/server/enterprise/proxy/auth/NoCredentialsAuthenticator;

    invoke-direct {v0}, Lcom/android/server/enterprise/proxy/auth/NoCredentialsAuthenticator;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/net/Socket;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v7, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x0

    :try_start_1
    invoke-static {p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    :cond_0
    invoke-static {v9}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    if-eqz v4, :cond_1

    const-string v10, "Proxy-Authenticate:"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    const-string v10, "HTTP/1."

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    const-string v11, "407"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v4, v10

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v10, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    const-string v8, "NTLM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;

    invoke-direct {v8}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;-><init>()V

    move-object v0, v8

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    const-string v8, "Basic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;

    invoke-direct {v8}, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v8

    :cond_4
    :goto_1
    goto :goto_0

    :cond_5
    goto :goto_4

    :catchall_0
    move-exception v8

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v7, :cond_6

    :try_start_4
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v9

    :try_start_5
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    :goto_3
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v1

    const-string v2, "EnterpriseProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRequiredAuthenticationType IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    const-string v1, "EnterpriseProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning authType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    const-string/jumbo v3, "null"

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z
    .locals 3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private onCredentialsReceived(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->getCallback()Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "proxy"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "credentials"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v2, :cond_2

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-direct {p0, v4, v6, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->checkCredentialsReceived(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "EnterpriseProxyServer"

    const-string/jumbo v7, "onCredentialsReceived: retrying proxy connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    new-instance v8, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v7, v4, v9}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V

    iget-object v9, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    const/4 v6, -0x2

    if-ne v2, v6, :cond_5

    const-string v6, "EnterpriseProxyServer"

    const-string/jumbo v7, "onCredentialsReceived: canceling dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v7}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getSource()Ljava/net/Socket;

    move-result-object v8

    if-eqz v8, :cond_3

    :try_start_0
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    sget-object v6, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method

.method private refreshCredentialsDialogFails()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.PROXY_REFRESH_CREDENTIALS_DIALOG_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearCaches()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCaches(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Clearing caches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->refreshCredentialsDialogFails()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPort()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBound()Z
    .locals 2

    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    invoke-direct {v2, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;-><init>(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->setPort(I)V

    const-string v1, "EnterpriseProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting clients to connect. Port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start proxy server "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "EnterpriseProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start proxy server "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    nop

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    return-void
.end method

.method public declared-synchronized setCallback(Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    invoke-interface {p1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;->setProxyPort(I)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPort(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;->setProxyPort(I)V

    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startServer()V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Calling startServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    if-nez v0, :cond_0

    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Enterprise Proxy server not running, starting it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    move-wide v3, v5

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopServer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Calling stopServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
