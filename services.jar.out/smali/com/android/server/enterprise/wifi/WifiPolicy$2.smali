.class Lcom/android/server/enterprise/wifi/WifiPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v1, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$400(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$502(Z)Z

    goto :goto_0

    :cond_4
    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$600(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V

    :cond_5
    :goto_0
    return-void
.end method
