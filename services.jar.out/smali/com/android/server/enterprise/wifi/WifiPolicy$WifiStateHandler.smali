.class Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;
.super Landroid/os/Handler;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "WifiPolicyService"

    const-string v1, "Not defined state. Ignoring."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "WifiPolicyService"

    const-string v1, "Updating WPS Blocked networks"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$000(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "WifiPolicyService"

    const-string v1, "Updating configured networks"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmUpdateConfiguredNetworks()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
