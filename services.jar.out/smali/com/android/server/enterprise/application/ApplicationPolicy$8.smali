.class Lcom/android/server/enterprise/application/ApplicationPolicy$8;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$8;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "ApplicationPolicy"

    const-string v1, "User switched"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v0, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$8;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3100(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isPersonaEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v2, "ApplicationPolicy"

    const-string v6, "Persona no longer valid removing from cache"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$8;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v6, v3, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$200(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method
