.class Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecGlobalActionsAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->startAnimationForSafeModeOnConfirm(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$5;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$5;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$000(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Lcom/android/systemui/globalactions/presentation/view/ViewStateController;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/ViewStateController;->setState(Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method
