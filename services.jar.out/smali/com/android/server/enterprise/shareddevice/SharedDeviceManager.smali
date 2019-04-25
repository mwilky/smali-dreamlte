.class public Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
.super Ljava/lang/Object;
.source "SharedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_SHARED_DEVICE_SERVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SHARED_DEVICE_INTERNAL"

.field private static final ERROR_API_CALL:Ljava/lang/String; = "API Call Failed."

.field private static final ERROR_APP_BIND:Ljava/lang/String; = "Unable to bind to shared device agent."

.field private static final ERROR_SERVICE_CONNECTION:Ljava/lang/String; = "Service Connection Not Available."

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final SHARED_DEVICE_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

.field private static final SHARED_DEVICE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final TAG:Ljava/lang/String;

.field private static sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method private bindToService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing bindToService()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.SHARED_DEVICE_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.enterprise.knox.shareddevice"

    const-string v2, "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_SD_ONESDK_INTERNAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Binding to the service..."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x4e20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "In bindToService: CoutnDownLatch returns false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    nop

    return-void

    :cond_2
    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v2, "Unable to bind to shared device agent."

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseService()V
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unbinding from the service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    return-void
.end method


# virtual methods
.method public declared-synchronized getSDUserName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "In getSDUserName in SharedDeviceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;->getSDUserName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v2, "Service Connection Not Available."

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "API Call Failed."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_3
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing notifyUserSignedIn()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;->notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v2, "Service Connection Not Available."

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v1, "Service Connection Not Available."

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v2, "API Call Failed."

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performUserAuthentication(Lcom/samsung/android/knox/shareddevice/UserCredentials;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Executing performUserAuthentication()..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;->performUserAuthentication(Lcom/samsung/android/knox/shareddevice/UserCredentials;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_3
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v2, "Service Connection Not Available."

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "API Call Failed."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_3
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized signOutUser(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing signOutUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;->signOutUser(Z)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_3
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v2, "Service Connection Not Available."

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "API Call Failed."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_3
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
