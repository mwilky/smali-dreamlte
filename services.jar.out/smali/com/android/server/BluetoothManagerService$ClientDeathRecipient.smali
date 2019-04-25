.class Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mIsSamsungApp:Z

.field private mPackageName:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mIsSamsungApp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder is dead - unregister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2300()I

    move-result v1

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2400()I

    move-result v2

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2300()I

    move-result v3

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2400()I

    move-result v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v3, :cond_1

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2306()I

    add-int/lit8 v3, v3, -0x1

    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Google : remove token ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mIsSamsungApp:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BluetoothManagerService"

    const-string v5, "Its Samsung App, decrease the count"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-lez v4, :cond_5

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$2406()I

    add-int/lit8 v4, v4, -0x1

    :cond_5
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Samsung : remove token ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-le v1, v2, :cond_b

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "BluetoothManagerService"

    const-string v5, "Google app killed"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-ne v3, v4, :cond_a

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    const/16 v5, 0xc

    if-eq v0, v5, :cond_a

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "BluetoothManagerService"

    const-string v5, "Stop third party scan, if any"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "error when sending ble disable"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_a
    :goto_0
    nop

    :cond_b
    :goto_1
    if-nez v3, :cond_e

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "BluetoothManagerService"

    const-string v5, "Disabling LE only mode after application crash"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    const-string v5, "BluetoothManagerService"

    const-string v6, "Unable to call onBrEdrDown"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_4

    :goto_3
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_e
    :goto_4
    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setTokenAndAppInfo(Landroid/os/IBinder;Z)V
    .locals 3

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTokenAndAppInfo :: isSamsungApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mIsSamsungApp:Z

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    return-void
.end method
