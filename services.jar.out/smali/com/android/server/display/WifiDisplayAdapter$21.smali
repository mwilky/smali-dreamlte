.class Lcom/android/server/display/WifiDisplayAdapter$21;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .locals 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2302(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$3300(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

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

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 8

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;->access$2900(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$3000(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;I)I

    :cond_4
    and-int/lit8 v2, p5, 0x20

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/hardware/display/SemDeviceInfo;->addFlag(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2302(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayStateBroadcast(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3100(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "wlan.wfd.status"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .locals 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayConnecting  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2302(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-array v2, v2, [Landroid/hardware/display/WifiDisplay;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2402(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "wlan.wfd.status"

    const-string v1, "connecting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2302(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v2, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v2}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;)Landroid/hardware/display/SemDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDisplayDisconnected()V
    .locals 4

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3400(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;I)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2302(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v3, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v3}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;)Landroid/hardware/display/SemDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2502(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2402(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$3100(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFeatureStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

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

.method public onScanFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2200(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiDisplayAdapter"

    const-string/jumbo v2, "onScanFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2202(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

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

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .locals 7

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onScanResults"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    if-nez v4, :cond_1

    array-length v5, p1

    if-ge v1, v5, :cond_1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v6

    if-eq v5, v6, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    move v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2502(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2600(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2700(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanStarted()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2200(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "WifiDisplayAdapter"

    const-string/jumbo v3, "onScanStarted in counnected status"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-array v3, v2, [Landroid/hardware/display/WifiDisplay;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2402(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    goto :goto_0

    :cond_0
    const-string v1, "WifiDisplayAdapter"

    const-string/jumbo v3, "onScanStarted"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2402(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2202(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$21;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
