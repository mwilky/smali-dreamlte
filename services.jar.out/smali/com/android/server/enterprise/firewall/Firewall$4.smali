.class Lcom/android/server/enterprise/firewall/Firewall$4;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "initializeIpTables() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->access$400(Lcom/android/server/enterprise/firewall/Firewall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$500(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$600(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$700(Lcom/android/server/enterprise/firewall/Firewall;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$800(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains(Ljava/lang/Integer;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$800(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/server/enterprise/firewall/Firewall;->access$900(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$800(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$800(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadDomainFilterOnIptablesRules()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/firewall/Firewall;->access$502(Lcom/android/server/enterprise/firewall/Firewall;Z)Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/server/enterprise/firewall/Firewall;->access$900(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "initializeIpTables() - IP Tables initialization was done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$1000(Lcom/android/server/enterprise/firewall/Firewall;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
