.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$800(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v2, v3, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$402(Z)Z

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v1, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1100(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;)V

    :cond_2
    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1202(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)Z

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "plugged"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1402(Z)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getForceAutoShutDownState()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1402(Z)Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->powerOff()I

    :cond_6
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1402(Z)Z

    :goto_1
    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1502(Z)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1502(Z)Z

    :cond_9
    :goto_2
    return-void
.end method
