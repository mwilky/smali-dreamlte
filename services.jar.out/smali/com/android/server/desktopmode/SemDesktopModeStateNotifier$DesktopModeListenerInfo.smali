.class Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;
.super Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;
.source "SemDesktopModeStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopModeListenerInfo"
.end annotation


# instance fields
.field final listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

.field final synthetic this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->binderDied()V

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-static {v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->access$200(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-static {v1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->access$200(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
