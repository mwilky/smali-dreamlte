.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$000(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$400(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
