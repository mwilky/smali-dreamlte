.class Lcom/android/server/enterprise/firewall/FirewallPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;IZ)V

    :cond_0
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "mBootReceiver.onReceive() - mBootReceiver exception: "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
