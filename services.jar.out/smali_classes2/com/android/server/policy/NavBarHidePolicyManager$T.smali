.class final Lcom/android/server/policy/NavBarHidePolicyManager$T;
.super Ljava/lang/Thread;
.source "NavBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NavBarHidePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "T"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NavBarHidePolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NavBarHidePolicyManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-static {v1}, Lcom/android/server/policy/NavBarHidePolicyManager;->access$100(Lcom/android/server/policy/NavBarHidePolicyManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
