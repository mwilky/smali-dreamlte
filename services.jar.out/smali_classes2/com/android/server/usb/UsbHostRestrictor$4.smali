.class Lcom/android/server/usb/UsbHostRestrictor$4;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "mUPSMReceiver onReceive"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    const-string v2, "UsbHostRestrictor"

    const-string/jumbo v3, "mUPSMReceiver Ultra Power Saving Mode is ON"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$902(Z)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_HOST_UPSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_BOTH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "ON_HOST_UPSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver set USB BLOCK as ON_HOST_UPSM"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3, v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->isInHostState()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_1

    :cond_1
    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver set USB BLOCK as ON_ALL_BOTH"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3, v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver USB is already DISABLED"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver Cannot write for USB DISABLE"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    goto/16 :goto_4

    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_b

    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver Ultra Power Saving Mode is OFF."

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$902(Z)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "UsbHostRestrictor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write Value is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "ON_ALL_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "ON_HOST_MDM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver set USB UNBLOCK by UPSM to OFF or ON_ALL_SIM or ON_HOST_MDM"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3, v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultUsbValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver USB is already ENABLED or SIM BLOCKED"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver Cannot write for USB ENABLE"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    goto :goto_4

    :cond_b
    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPSM state is unknown."

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    return-void
.end method
