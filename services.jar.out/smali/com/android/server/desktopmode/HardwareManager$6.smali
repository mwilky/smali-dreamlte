.class Lcom/android/server/desktopmode/HardwareManager$6;
.super Landroid/content/BroadcastReceiver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/HardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v4

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "minorClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v5, 0x13

    if-ne v1, v5, :cond_2

    const/16 v5, 0x580

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/HardwareManager;->access$1202(Lcom/android/server/desktopmode/HardwareManager;Z)Z

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mIsBtMouseDeepSleep=true"

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->access$1300(Lcom/android/server/desktopmode/HardwareManager;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->access$500(Lcom/android/server/desktopmode/HardwareManager;)V

    :cond_2
    return-void
.end method
