.class Lcom/android/server/wm/SideScreenStackPositioner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SideScreenStackPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SideScreenStackPositioner;->getScreenMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SideScreenStackPositioner;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SideScreenStackPositioner;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iput-object p2, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v1, v1, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SideScreenStackPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v1}, Lcom/android/server/wm/SideScreenStackPositioner;->access$500(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v1}, Lcom/android/server/wm/SideScreenStackPositioner;->access$600(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
