.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$2400(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$2400(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$2100(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
