.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field final synthetic val$coverSwitchState:Z


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->val$coverSwitchState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$000(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->val$coverSwitchState:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZZZ)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
