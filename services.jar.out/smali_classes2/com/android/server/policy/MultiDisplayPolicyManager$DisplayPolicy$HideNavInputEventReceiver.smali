.class final Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MultiDisplayPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-static {v3}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v4, v4, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    if-eq v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iput v4, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    const/4 v2, 0x1

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    or-int/lit8 v4, v5, 0x2

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eq v5, v4, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iput v4, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-static {v5}, Lcom/android/server/policy/MultiDisplayPolicyManager;->access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    iget-object v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->this$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iget-object v3, v3, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    iget-object v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->this$1:Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    iget v4, v4, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->reevaluateStatusBarVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
