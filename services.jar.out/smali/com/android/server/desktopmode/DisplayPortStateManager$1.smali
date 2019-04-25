.class Lcom/android/server/desktopmode/DisplayPortStateManager$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DisplayPortStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DisplayPortStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    if-eq v1, p2, :cond_4

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1, p2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$502(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1, v2, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1, v3, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    nop

    :cond_3
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$800(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$702(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$200(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$102(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$400(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$302(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$600(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$502(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$800(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$702(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
