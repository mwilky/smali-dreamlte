.class public Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;
.super Ljava/lang/Object;
.source "SecGlobalActionsAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;,
        Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecGlobalActionsAnimatorFSM"


# instance fields
.field private final mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

.field private mIsPortrait:Z

.field private final mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

.field mState:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

.field private mViewStateController:Lcom/android/systemui/globalactions/presentation/view/ViewStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;Lcom/android/systemui/globalactions/util/LogWrapper;Lcom/android/systemui/globalactions/presentation/view/ViewStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mViewStateController:Lcom/android/systemui/globalactions/presentation/view/ViewStateController;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    return-void
.end method


# virtual methods
.method public handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mViewStateController:Lcom/android/systemui/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ViewStateController;->getState()Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mState:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_3

    :cond_2
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startDismissSafeModeAnimation()V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :pswitch_1
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_3

    :cond_6
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startDismissConfirmAnimation()V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_8
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startSetSafeModeAnimation()V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_9
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :pswitch_2
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->isHideConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->cancelHideConfirmAnimation()V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->isSafeModeConfirm()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startShowSafeModeAnimation()V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startShowConfirmAnimation()V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :cond_f
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :cond_10
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionsAnimator;->startShowAnimation()V

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V

    :cond_12
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mIsPortrait:Z

    return-void
.end method

.method public setState(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsAnimatorFSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->mState:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$State;

    return-void
.end method
