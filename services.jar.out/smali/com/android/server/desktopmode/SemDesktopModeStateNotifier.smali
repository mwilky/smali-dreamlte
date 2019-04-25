.class Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
.super Ljava/lang/Object;
.source "SemDesktopModeStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;,
        Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;,
        Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;
    }
.end annotation


# static fields
.field private static final NAME_LIMIT:I = 0x64

.field private static final REGISTER_LIMIT:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDesktopModeListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDesktopModeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEventListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    return-object v0
.end method

.method private enforceRegisterLimit(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;",
            ">;I)V"
        }
    .end annotation

    if-lez p3, :cond_4

    iget v0, p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    iget v3, v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->pid:I

    iget v4, p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->pid:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    iget v4, p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_2

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "s"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " per pid/uid is allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventListeners ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDesktopModeListeners ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method notifyDesktopDockConnectionChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;

    :try_start_1
    iget-object v3, v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/desktopmode/IEventListener;->onDesktopDockConnectionChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method notifyDesktopModeChanged(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;

    :try_start_1
    iget-object v3, v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/desktopmode/IEventListener;->onDesktopModeChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_1

    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    goto :goto_2

    :cond_1
    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    :goto_2
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.extra.DISPLAY_TYPE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_2

    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    goto :goto_3

    :cond_2
    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    :goto_3
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.extra.DISPLAY_TYPE"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;

    :try_start_1
    iget-object v3, v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v9, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, p2

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;-><init>(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;II)V

    move-object v3, v9

    iget-object v4, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    const/16 v5, 0x14

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->enforceRegisterLimit(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;Ljava/util/Map;I)V

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    move-exception v3

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method registerEventListener(Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v9, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, p2

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;-><init>(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;II)V

    move-object v3, v9

    iget-object v4, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    const/16 v5, 0x14

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->enforceRegisterLimit(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;Ljava/util/Map;I)V

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    move-exception v3

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v3}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterEventListener(Lcom/samsung/android/desktopmode/IEventListener;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v3}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
