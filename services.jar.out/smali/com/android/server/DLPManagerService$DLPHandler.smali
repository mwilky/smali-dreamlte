.class Lcom/android/server/DLPManagerService$DLPHandler;
.super Landroid/os/Handler;
.source "DLPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DLPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLPHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DLPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DLPManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "DLPHandler"

    invoke-static {p1, v0}, Lcom/android/server/DLPManagerService;->access$000(Lcom/android/server/DLPManagerService;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    const-string v1, "DLPHandler"

    invoke-static {v0, v1}, Lcom/android/server/DLPManagerService;->access$000(Lcom/android/server/DLPManagerService;Ljava/lang/String;)I

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-static {v0}, Lcom/android/server/DLPManagerService;->access$100(Lcom/android/server/DLPManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-static {v6}, Lcom/android/server/DLPManagerService;->access$100(Lcom/android/server/DLPManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getDLPManagerPolicy()Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getDLPConfig()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Lock"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/DLPManagerService;->lockDLP(I)Z

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/DLPManagerService;->unlockDLP(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "DLP_DLPManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurs while handle message for MSG_SYSTEM_READY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
