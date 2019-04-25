.class Lcom/android/server/am/SideScreenManagerService$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SideScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SideScreenManagerService;->getSideScreenStacksMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SideScreenManagerService;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/SideScreenManagerService;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SideScreenManagerService$1;->this$0:Lcom/android/server/am/SideScreenManagerService;

    iput-object p2, p0, Lcom/android/server/am/SideScreenManagerService$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService$1;->this$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v0, v0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$1;->this$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService$1;->this$0:Lcom/android/server/am/SideScreenManagerService;

    invoke-static {v2}, Lcom/android/server/am/SideScreenManagerService;->access$000(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$1;->this$0:Lcom/android/server/am/SideScreenManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/SideScreenManagerService;->access$102(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$1;->this$0:Lcom/android/server/am/SideScreenManagerService;

    invoke-static {v1}, Lcom/android/server/am/SideScreenManagerService;->access$200(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$1;->this$0:Lcom/android/server/am/SideScreenManagerService;

    invoke-static {v1}, Lcom/android/server/am/SideScreenManagerService;->access$000(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
