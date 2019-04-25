.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;
.super Landroid/os/Handler;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxVpnHandler"
.end annotation


# static fields
.field private static final ACTION_AIRPLANE_MODE_TURNED_ON:I = 0x14

.field private static final ACTION_BOOT_COMPLETED:I = 0xf

.field private static final ACTION_CONTAINER_ADMIN_CHANGED:I = 0xc

.field private static final ACTION_HANDLE_CAPTIVE_PORTAL:I = 0x1d

.field private static final ACTION_HANDLE_KNOX_VPN_CONNECTED:I = 0x1e

.field private static final ACTION_HANDLE_KNOX_VPN_DISCONNECTED:I = 0x1f

.field private static final ACTION_LOCKED_BOOT_COMPLETED:I = 0xe

.field private static final ACTION_MIGRATE_KNOX10_KNOX20:I = 0xa

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_REMOVE_CREDENTIALS_KEYSTORE:I = 0x10

.field private static final ACTION_SEND_PROXY_BROADCAST:I = 0x12

.field private static final ACTION_START_VPN_CONNECTION_CLIENT:I = 0x17

.field private static final ACTION_STOP_VPN_CONNECTION_CLIENT:I = 0x18

.field private static final ACTION_UCM_REFRESH_DONE:I = 0x1c

.field private static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0x16

.field private static final ACTION_UPDATE_IPTABLE_RULES_ETHERNET:I = 0x1b

.field private static final ACTION_UPDATE_IPTABLE_RULES_MOBILE:I = 0x1a

.field private static final ACTION_UPDATE_IPTABLE_RULES_WIFI:I = 0x19

.field private static final ACTION_USER_PRESENT:I = 0x15

.field private static final ACTION_USER_REMOVED:I = 0x6

.field private static final ACTION_USER_STARTED:I = 0x9

.field private static final ACTION_USER_SWITCHED:I = 0xd

.field private static final ACTION_VPN_INTERFACE_STATUS:I = 0x1

.field private static final ADMIN_REMOVAL_ACTION:I = 0x13

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final MSG_SHOW_TOAST:I = 0x20


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "KnoxVpnEngineService"

    const-string/jumbo v1, "vpn handle : Message received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, -0x2710

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KnoxVpnEngineService"

    const-string v4, "case MSG_SHOW_TOAST: - START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string v3, "KnoxVpnEngineService"

    const-string v4, "case MSG_SHOW_TOAST: - END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeRulesAfterVpnDisconnected(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addRulesAfterVpnEstablished(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string v2, "KnoxVpnEngineService"

    const-string/jumbo v3, "ultra power saving mode has been disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_f
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v1, "profileName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeProfileCredentials(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto :goto_0

    :pswitch_12
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto :goto_0

    :pswitch_13
    goto :goto_0

    :pswitch_14
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_15
    goto :goto_0

    :pswitch_16
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_17
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_18
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageRemoved(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_19
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1a
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
