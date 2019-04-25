.class Lcom/android/server/am/DividerCloseNotificationController;
.super Ljava/lang/Object;
.source "DividerCloseNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DividerCloseNotificationController$MainHandler;,
        Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;
    }
.end annotation


# static fields
.field private static final NOTIFY_ALREADY_RUNNING_ON_DOCKED_STACK_MSG:I


# instance fields
.field private final mDividerCloseEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IDividerCloseEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/multiwindow/IDividerCloseEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyAlreadyRunningOnDockedStack:Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mDividerCloseEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;->INSTANCE:Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;

    iput-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mNotifyAlreadyRunningOnDockedStack:Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;

    iput-object p1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/DividerCloseNotificationController$MainHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DividerCloseNotificationController$MainHandler;-><init>(Lcom/android/server/am/DividerCloseNotificationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/DividerCloseNotificationController;)Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mNotifyAlreadyRunningOnDockedStack:Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/DividerCloseNotificationController;Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/DividerCloseNotificationController;->forAllRemoteListeners(Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;Landroid/os/Message;)V

    return-void
.end method

.method private forAllLocalListeners(Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/DividerCloseNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/IDividerCloseEventListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;->accept(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private forAllRemoteListeners(Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mDividerCloseEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/DividerCloseNotificationController;->mDividerCloseEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/IDividerCloseEventListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;->accept(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mDividerCloseEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/samsung/android/multiwindow/IDividerCloseEventListener;->onAlreadyRunningOnDockedStack()V

    return-void
.end method


# virtual methods
.method notifyAlreadyRunningOnDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mNotifyAlreadyRunningOnDockedStack:Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/DividerCloseNotificationController;->forAllLocalListeners(Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mDividerCloseEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController;->mDividerCloseEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
