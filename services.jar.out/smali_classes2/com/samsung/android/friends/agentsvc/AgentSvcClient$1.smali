.class Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/agentsvc/AgentSvcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string v0, "AgentSvcClient"

    const-string/jumbo v1, "onServiceConnected binder[%s] %s %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$000(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$100(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$000(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v0, v5}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$002(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$100(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$100(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    const-string v0, "AgentSvcClient"

    const-string v1, "FSvc is connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$200(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    const-string v0, "AgentSvcClient"

    const-string v1, "FSvc is re-connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->access$200(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    const-string v0, "AgentSvcClient"

    const-string v1, "FSvc is disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
