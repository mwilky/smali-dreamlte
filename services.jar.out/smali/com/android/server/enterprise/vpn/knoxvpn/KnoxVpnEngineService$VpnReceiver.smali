.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vpn Receiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_0
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vpn Receiver : The extra value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-le v6, v4, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vpn Receiver : Package Added = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v4, "uid"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "package"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "new_install_or_update"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v7, 0x2

    invoke-static {v4, v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    :cond_3
    goto/16 :goto_8

    :cond_4
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_5
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vpn Receiver : Package Removed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v6, "uid"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "package"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "new_install_or_update"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v7, 0x3

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_7
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "KnoxVpnEngineService"

    const-string v4, "Airplane Event received."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v5, 0x14

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    :cond_8
    goto/16 :goto_8

    :cond_9
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v4, 0x15

    invoke-static {v2, v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_a
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v3, 0xf

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_b
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v3, 0xe

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_c
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x9

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_d
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v3, 0xd

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_e
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_21

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change in connectivity has occured  for the network type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v6, :cond_13

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/16 v6, 0x19

    if-eq v3, v4, :cond_12

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_f

    goto :goto_1

    :cond_f
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_11

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_10

    goto :goto_0

    :cond_10
    return-void

    :cond_11
    :goto_0
    const-string/jumbo v3, "state"

    const-string v4, "DISCONNECTED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_12
    :goto_1
    const-string/jumbo v3, "state"

    const-string v4, "CONNECTED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/16 v6, 0x1a

    if-eq v3, v4, :cond_17

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_14

    goto :goto_3

    :cond_14
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_16

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_15

    goto :goto_2

    :cond_15
    return-void

    :cond_16
    :goto_2
    const-string/jumbo v3, "state"

    const-string v4, "DISCONNECTED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_17
    :goto_3
    const-string/jumbo v3, "state"

    const-string v4, "CONNECTED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_18
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/16 v6, 0x1b

    if-eq v3, v4, :cond_1c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_19

    goto :goto_5

    :cond_19
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1b

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1a

    goto :goto_4

    :cond_1a
    return-void

    :cond_1b
    :goto_4
    const-string/jumbo v3, "state"

    const-string v4, "DISCONNECTED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto :goto_6

    :cond_1c
    :goto_5
    const-string/jumbo v3, "state"

    const-string v4, "CONNECTED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto :goto_6

    :cond_1d
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_1f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isKnoxProfile()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "bundle_interface_type"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getInterfaceType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "bundle_profile_name"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getprofileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bundle_v4_address"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getV4Address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bundle_v6_address"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getV6Address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bundle_interface_name"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getKnoxInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isKnoxNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v4, 0x1e

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto :goto_6

    :cond_1e
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v4, 0x1f

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    :cond_1f
    :goto_6
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v5, :cond_20

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_20

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v4, 0x4

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    :cond_20
    goto/16 :goto_8

    :cond_21
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_22
    const-string v2, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_23
    const-string/jumbo v2, "enterprise.container.admin.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "android.intent.extra.user_handle"

    const-string v3, "containerid"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android.intent.extra.UID"

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v3, 0xc

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_24
    const-string v2, "com.samsung.android.knox.intent.action.VPN_PROXY_BROADCAST_INTERNAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "com.samsung.android.knox.intent.extra.caller"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v4, 0x12

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_25
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v3, 0x16

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_26
    const-string v2, "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v3, 0x1c

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_27
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x1d

    if-eqz v2, :cond_2c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v7, :cond_29

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1102(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Z)Z

    const-string v4, "captive"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto :goto_7

    :cond_28
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1102(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Z)Z

    goto :goto_7

    :cond_29
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v7, :cond_2b

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1102(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Z)Z

    const-string v4, "captive"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v4, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto :goto_7

    :cond_2a
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v3, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1102(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Z)Z

    :cond_2b
    :goto_7
    goto :goto_8

    :cond_2c
    const-string v2, "com.samsung.android.knox.intent.action.NETWORK_VALIDATED_INTERNAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "captive"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    :cond_2d
    :goto_8
    return-void
.end method
