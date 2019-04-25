.class Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
.super Ljava/lang/Thread;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashNotiThread"
.end annotation


# instance fields
.field private final mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

.field private mForceStop:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-object v0
.end method

.method private delay(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v2, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    :cond_2
    :goto_1
    return-void
.end method

.method private startFlashNoti()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9600(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9610(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9800(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->access$9900(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->startFlashNoti()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8900(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9402(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9002(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
