.class Lcom/android/server/usb/UsbHostRestrictor$3;
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

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "UsbHostRestrictor"

    const-string v1, "Subscription Receiver onReceive"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$702(Z)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver USB is already UNBLOCKED"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ON_HOST_MDM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "ON_HOST_UPSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "UsbHostRestrictor"

    const-string v4, "USB HOST is blocked. Unblock by SIM"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3, v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3, v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver Cannot write for USB DISABLE"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Subscription Receiver SIM is not recognized properly. Needs to check the SIM CARD"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method
