.class Lcom/android/server/net/LockdownVpnTracker$2;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/LockdownVpnTracker;->LazyHandleStateChangedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x5dc

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$100(Lcom/android/server/net/LockdownVpnTracker;)I

    move-result v1

    move v0, v1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$200(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$300(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$300(Lcom/android/server/net/LockdownVpnTracker;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$400(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LockdownVpnTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LazyHandleStateChangedLocked(): Thread exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    const-string v1, "LockdownVpnTracker"

    const-string v2, "LazyHandleStateChangedLocked(): Thread Bye."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->access$502(Lcom/android/server/net/LockdownVpnTracker;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
