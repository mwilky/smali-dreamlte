.class Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController$1;
.super Ljava/lang/Object;
.source "ConnectedDeviceSignalController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController$1;->this$0:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->access$002(Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController$1;->this$0:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->access$002(Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method
