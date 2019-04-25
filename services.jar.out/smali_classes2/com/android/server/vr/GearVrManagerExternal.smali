.class public Lcom/android/server/vr/GearVrManagerExternal;
.super Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;,
        Lcom/android/server/vr/GearVrManagerExternal$VRRecord;,
        Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITHOUT_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITH_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

.field public static final ACTION_HMT_SENSOR_CONNECTED_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final MESSAGE_HMT_EVENT_CHANGED:I = 0x1

.field private static final MESSAGE_HMT_EVENT_CHANGED_FOR_FACTORY:I = 0x2

.field private static final MESSAGE_NOTIFY_VR_ACTIVITY_CHANGED:I = 0x7

.field private static final MESSAGE_START_VR_HOME:I = 0x3

.field private static final MESSAGE_START_VR_RECENTS:I = 0x6

.field private static final MESSAGE_START_WAIT_ACTIVITY:I = 0x4

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final MESSAGE_VR_MODE_CHANGED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GearVrManagerExternal"


# instance fields
.field private connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mContext:Landroid/content/Context;

.field private final mGearVrHandler:Landroid/os/Handler;

.field private final mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

.field private final mLock:Ljava/lang/Object;

.field private mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;-><init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/vr/GearVrManagerExternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/GearVrManagerExternal;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerExternal;->handleHmtEventChangedForFactory(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    return-object v0
.end method

.method private cleanUpVrService()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v1}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v3}, Lcom/android/server/vr/GearVrManagerService;->isDeveloperMode()Z

    move-result v3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const-string v4, "GearVrManagerExternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUp VrService isDock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isVrMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDeveloperMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isPersistentVrMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "GearVrManagerExternal"

    const-string v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->ensureNotOnThread()V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GearVrManagerExternal"

    const-string v1, "VrService unavailable."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;-><init>(Lcom/android/server/vr/GearVrManagerExternal;Lcom/android/server/vr/GearVrManagerExternal$1;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.hmt.vrsvc"

    const-string v7, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "GearVrManagerExternal"

    const-string v7, "connect() bindService"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    const v7, 0x4000001

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v0, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    goto :goto_0

    :cond_1
    const-string v5, "GearVrManagerExternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect() check signatures failed. result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-boolean v4, v0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    if-nez v4, :cond_2

    const-string v4, "GearVrManagerExternal"

    const-string v5, "connect() Unable to bind VRSystemService"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    goto :goto_3

    :cond_2
    const-string v1, "GearVrManagerExternal"

    const-string v4, "connect() Take iGearVrManagerExternalService... start"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    :try_start_1
    iget-object v1, v0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x2710

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IGearVrManagerExternalService;

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$302(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$300(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "GearVrManagerExternal"

    const-string v4, "connect() Take iGearVrManagerExternalService... ok!"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$300(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "GearVrManagerExternal"

    const-string v5, "The VRConnection died unexpectedly."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    goto :goto_1

    :cond_3
    const-string v1, "GearVrManagerExternal"

    const-string v4, "connect() iGearVrManagerExternalService is null!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    const-string v4, "GearVrManagerExternal"

    const-string v5, "connect() Take iGearVrManagerExternalService... InterruptedException!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    :goto_3
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v0, :cond_0

    const-string v0, "GearVrManagerExternal"

    const-string v1, "disconnect() already stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "GearVrManagerExternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect() mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVRRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " iGearVrManagerExternalService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$300(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$300(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "GearVrManagerExternal"

    const-string v2, "disconnect() unlinkToDeath"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$300(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$302(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v1, v1, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    if-eqz v1, :cond_2

    const-string v1, "GearVrManagerExternal"

    const-string v2, "disconnect() unbindService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    :cond_2
    return-void
.end method

.method private ensureNotOnThread()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your fg thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$300(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->connect()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v2, :cond_2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-object v0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many requests. connectionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    nop

    return-object v0
.end method

.method private handleHmtEventChangedForFactory(II)V
    .locals 4

    const-string v0, "GearVrManagerExternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHmtEventChangedForFactory  event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "raw_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "raw_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    and-int/lit16 v1, p1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    const-string v1, "hmt_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/high16 v2, 0x20000000

    if-eqz v1, :cond_1

    const-string v1, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x10

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_5
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_6
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_7

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_7
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_2

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->connect()V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$600(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$600(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v1

    :cond_0
    const-string v1, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "  mVRRecord=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    goto :goto_6

    :goto_3
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVRRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$600(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$600(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_4
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    :goto_5
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v1

    :cond_3
    const-string v1, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public getPowerLevelState()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->getPowerLevelState()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v1
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v1
.end method

.method public handleHmtEventChanged(II)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->notifyHmtEventChanged(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public handleNotifyVrActivityFocusChanged(Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->vrActivityType:I

    iget-object v2, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iget v3, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->userId:I

    iget-object v4, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->callingPackage:Landroid/content/ComponentName;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public handleStartVrHome()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->startVrHome()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public handleStartVrRecents()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->startVrRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public handleStartWaitActivity(Landroid/content/Intent;I)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->startWaitActivity(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public handleVrMode(Z)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyHmtEventChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 5

    new-instance v0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;-><init>(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v1
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->retrieveEnableFrequencyLevels()[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v1
.end method

.method public setRelayMode(I)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setRelayMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    nop

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    throw v0
.end method

.method public setVrMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startVrHome()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startVrRecents()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startWaitActivity(Landroid/content/Intent;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
