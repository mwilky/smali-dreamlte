.class public final Lcom/android/server/am/CoreStateController;
.super Ljava/lang/Object;
.source "CoreStateController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoreStateController"

.field private static final mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/server/corestate/CoreStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final mObserverControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/corestate/CoreStateObserverController;",
            ">;"
        }
    .end annotation
.end field

.field private static final mObserverControllersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/server/corestate/CoreStateObserverController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private initialized:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStatesForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllersMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreStateController;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    const-string v0, "CoreStateController"

    const-string v1, "CoreStateController()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private notifyCoreStatesChanged(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v4, v0}, Landroid/app/ActivityThread;->onCoreStatesChange(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    sget-object v6, Lcom/android/server/am/CoreStateController;->mCallbacks:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/corestate/CoreStateCallback;

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/samsung/android/server/corestate/CoreStateCallback;->onCoreStateChanged(I)V

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_2
    move v2, v4

    if-ltz v2, :cond_7

    iget-object v4, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_3

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, p1, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v5, :cond_6

    const-string v5, "com.android.systemui"

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "CoreStateController"

    const-string/jumbo v6, "update systemUI\'s states with current user\'s."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_0
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_5

    const-string v5, "CoreStateController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scheduleCoreStatesChange to pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    invoke-static {v0}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    iget-object v7, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-static {v0}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_3

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v4, v2, -0x1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v5, Lcom/android/server/am/CoreStateController;->mCallbacks:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/corestate/CoreStateCallback;

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/samsung/android/server/corestate/CoreStateCallback;->onPostCoreStateChanged(I)V

    :cond_8
    goto :goto_4

    :cond_9
    return-void
.end method


# virtual methods
.method public createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;
    .locals 8

    new-instance v7, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    iget-object v1, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CoreStateController;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)V

    return-object v7
.end method

.method public getCoreStatesLocked(I)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_0
    return-object v1
.end method

.method public init()V
    .locals 4

    const-string v0, "CoreStateController"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->init()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/android/server/am/CoreStateController;->notifyCoreStatesChanged(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/CoreStateController;->initialized:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCoreStateChanged(Ljava/lang/Class;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v1, Lcom/android/server/am/CoreStateController;->mObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string v3, "CoreStateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t have states onCoreStateChanged()."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "CoreStateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCoreStateChanged() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", [u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/am/CoreStateController;->notifyCoreStatesChanged(I)V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/CoreStateController;->initialized:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/am/CoreStateController;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to registerObserverController after initialized!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSharedPreferenceEdited(Ljava/lang/Class;I)V
    .locals 2

    sget-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/CoreStateController;->mObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "IZZ)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    if-eqz v0, :cond_0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setVolatileState(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V

    :cond_0
    return-void
.end method

.method public startUserLocked(IZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "CoreStateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUserLocked(u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->startUserLocked(IZZ)V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/am/CoreStateController;->notifyCoreStatesChanged(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopUserLocked(IZ)V
    .locals 4

    sget-object v0, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "CoreStateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopUserLocked(u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/CoreStateController;->mObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->stopUserLocked(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
