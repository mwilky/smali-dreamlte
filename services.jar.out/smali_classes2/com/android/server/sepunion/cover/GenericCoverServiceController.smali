.class public Lcom/android/server/sepunion/cover/GenericCoverServiceController;
.super Ljava/lang/Object;
.source "GenericCoverServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;,
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;,
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$SystemEvents;,
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$ListenerTypes;
    }
.end annotation


# static fields
.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0x1

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;-><init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send power key"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "disable LCD Off"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->handleSendPowerKeyToCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/GenericCoverServiceController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v4, "Shouldn\'t happen"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleSendPowerKeyToCover(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v4, "Shouldn\'t happen"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, " Current Generic Cover Callback state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Live callbacks ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported touch listener type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerNfcTouchListenerCallback : duplicated listener handle"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    new-instance v9, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;-><init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    move-object v1, v9

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendPowerKeyToCover()V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPowerKeyToCover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method setLcdOffDisabledByCover(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLcdOffDisabledByCover disabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lcd_off_disabled_by_cover"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
