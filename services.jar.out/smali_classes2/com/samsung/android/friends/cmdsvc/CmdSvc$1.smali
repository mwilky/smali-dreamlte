.class Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/cmdsvc/CmdSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;


# direct methods
.method constructor <init>(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string v0, "CmdSvc"

    const-string/jumbo v1, "onServiceConnected %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v4}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->access$000(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->access$000(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v0, v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->access$002(Lcom/samsung/android/friends/cmdsvc/CmdSvc;Z)Z

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->access$100(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->access$100(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->access$200(Lcom/samsung/android/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->access$200(Lcom/samsung/android/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    const-string v0, "CmdSvc"

    const-string/jumbo v1, "onServiceDisconnected "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
