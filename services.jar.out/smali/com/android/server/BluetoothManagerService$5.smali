.class Lcom/android/server/BluetoothManagerService$5;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / mSamsungBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2400()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2300()I

    move-result v1

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2400()I

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BluetoothManagerService"

    const-string v5, "clear all BleApps"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)V

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)V

    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5, v0}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "error when disabling bluetooth"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_3

    :goto_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_2
    if-le v1, v2, :cond_4

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "BluetoothManagerService"

    const-string v5, "Clear Google BleAppCount, Copy SamsungBleApps"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2400()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2302(I)I

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-virtual {v7}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {v8, v9, v7}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v3}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->setTokenAndAppInfo(Landroid/os/IBinder;Z)V

    :try_start_3
    invoke-interface {v6, v8, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    nop

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v9, "Wake lock is already dead."

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_3
    const-string v0, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange changed mBleAppcount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / mSamsungBleAppCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2400()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
