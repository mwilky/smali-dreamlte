.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    const-string/jumbo v0, "ent_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.server.enterprise.billing.mapping_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.server.enterprise.billing.action_enable_status_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3eb

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_4
    goto :goto_1

    :cond_5
    const-string v1, "com.samsung.server.enterprise.billing.mobile_fallback_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_7
    goto :goto_2

    :cond_8
    const-string v1, "com.samsung.server.enterprise.billing.wifi_fallback_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_a
    goto :goto_3

    :cond_b
    const-string v1, "com.samsung.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_d
    goto :goto_4

    :cond_e
    const-string v1, "com.samsung.server.enterprise.billing.roaming_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_10
    goto :goto_5

    :cond_11
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    if-eqz v0, :cond_12

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_13
    goto :goto_6

    :cond_14
    return-void
.end method
