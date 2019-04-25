.class final Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "SideScreenBoundsAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenBoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppTransitionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/SideScreenBoundsAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SideScreenBoundsAnimationController;Lcom/android/server/wm/SideScreenBoundsAnimationController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/SideScreenBoundsAnimationController;)V

    return-void
.end method

.method private animationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$000(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$100(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$100(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .locals 3

    const-string v0, "SideScreenBoundsAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppTransitionCancelledLocked: mFinishAnimationAfterTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$000(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->animationFinished()V

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "SideScreenBoundsAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppTransitionFinishedLocked: mFinishAnimationAfterTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$000(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->animationFinished()V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$200(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$200(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
