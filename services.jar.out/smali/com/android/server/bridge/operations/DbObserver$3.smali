.class Lcom/android/server/bridge/operations/DbObserver$3;
.super Landroid/database/ContentObserver;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/bridge/operations/DbObserver$3;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$200(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conatcts onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v0, v0, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v1}, Lcom/android/server/bridge/operations/DbObserver;->access$300(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v2, v2, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v1}, Lcom/android/server/bridge/operations/DbObserver;->access$300(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v2, v2, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
