.class Lcom/android/server/am/SideScreenChangeNotificationController;
.super Ljava/lang/Object;
.source "SideScreenChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;,
        Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;,
        Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    }
.end annotation


# static fields
.field private static final NOTIFY_LID_STATE_CHANGED:I = 0x6

.field private static final NOTIFY_SIDE_SCREEN_DOCK_SIDE_CHANGED_MSG:I = 0x4

.field private static final NOTIFY_SIDE_SCREEN_MENU_VISIBILITY_CHANGED_MSG:I = 0x1

.field private static final NOTIFY_SIDE_SCREEN_MINIMIZED_CHANGED_MSG:I = 0x7

.field private static final NOTIFY_SIDE_SCREEN_MODE_CHANGED_MSG:I = 0x5

.field private static final NOTIFY_SIDE_SCREEN_TASK_SWITCHED_MSG:I = 0x2

.field private static final NOTIFY_SIDE_SCREEN_VISIBILITY_CHANGED_MSG:I = 0x0

.field private static final NOTIFY_SIDE_SCREEN_WINDOWS_DRAWN_MSG:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/multiwindow/ISideScreenEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyLidStateChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mNotifySideScreenDockSideChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mNotifySideScreenMenuVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mNotifySideScreenMinimizedChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mNotifySideScreenModeChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mNotifySideScreenTaskSwitched:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mNotifySideScreenVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mNotifySideScreenWindowsDrawn:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

.field private final mPrimaryMenuVisibilityChangeItem:Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

.field private final mSecondaryMenuVisibilityChangeItem:Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSideScreenEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/ISideScreenEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

    invoke-direct {v0, p0}, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;-><init>(Lcom/android/server/am/SideScreenChangeNotificationController;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mPrimaryMenuVisibilityChangeItem:Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

    new-instance v0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

    invoke-direct {v0, p0}, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;-><init>(Lcom/android/server/am/SideScreenChangeNotificationController;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSecondaryMenuVisibilityChangeItem:Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$HES0cOHxH2U7qMbnaj5KjWWwpXg;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$HES0cOHxH2U7qMbnaj5KjWWwpXg;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMenuVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$lUOj_b0SBFMwl6ejzqVwAmbWnGI;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$lUOj_b0SBFMwl6ejzqVwAmbWnGI;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenTaskSwitched:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$8p_m66S7LlzzI0PIke_HuZeLQzQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$8p_m66S7LlzzI0PIke_HuZeLQzQ;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenWindowsDrawn:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenDockSideChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$781DmrxLOa5G4APCV70pA7Io7Eg;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$781DmrxLOa5G4APCV70pA7Io7Eg;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenModeChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$K1Khu7UtT7GLjaaSvztKPxkgk8s;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$K1Khu7UtT7GLjaaSvztKPxkgk8s;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifyLidStateChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    sget-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$5zOI8xP_DTcMOG1mNYyXi00Uepw;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$5zOI8xP_DTcMOG1mNYyXi00Uepw;

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMinimizedChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    iput-object p1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;-><init>(Lcom/android/server/am/SideScreenChangeNotificationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMenuVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenTaskSwitched:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenWindowsDrawn:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenDockSideChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenModeChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifyLidStateChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMinimizedChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    return-object v0
.end method

.method private forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/ISideScreenEventListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;->accept(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
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

.method private forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/ISideScreenEventListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;->accept(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
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
    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

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

.method static synthetic lambda$new$0(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

    iget v1, v0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;->windowingMode:I

    iget-boolean v2, v0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;->visible:Z

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenMenuVisibilityChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenTaskSwitched(I)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenWindowsDrawn(I)V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenDockSideChanged(I)V

    return-void
.end method

.method static synthetic lambda$new$5(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$new$6(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0, v1}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onLidStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$new$7(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0, v1}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenMinimizedChanged(Z)V

    return-void
.end method


# virtual methods
.method notifyLidStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifyLidStateChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySideScreenDockSideChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenDockSideChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySideScreenMenuVisibilityChanged(IZ)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mPrimaryMenuVisibilityChangeItem:Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSecondaryMenuVisibilityChangeItem:Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;->set(IZ)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMenuVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySideScreenMinimizedChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMinimizedChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySideScreenModeChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenModeChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySideScreenTaskSwitched(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenTaskSwitched:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySideScreenVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    nop

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySideScreenWindowsDrawn(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenWindowsDrawn:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/SideScreenManagerService;->getDockSideLocked()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenModeLocked()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, v3, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenVisibilityLocked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isMainBuiltInDisplayActivated()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenDockSideChanged(I)V

    invoke-interface {p1, v2}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenModeChanged(I)V

    invoke-interface {p1, v3}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onSideScreenVisibilityChanged(Z)V

    invoke-interface {p1, v4}, Lcom/samsung/android/multiwindow/ISideScreenEventListener;->onLidStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    iget-object v5, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_2
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

.method public unregisterEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController;->mSideScreenEventListeners:Landroid/os/RemoteCallbackList;

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
