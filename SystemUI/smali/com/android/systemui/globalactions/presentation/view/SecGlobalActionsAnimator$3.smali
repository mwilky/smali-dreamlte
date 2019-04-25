.class Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecGlobalActionsAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->addAnimatorListenerAdapter(Landroid/animation/AnimatorSet;Z)V
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

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$200(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Lcom/android/systemui/globalactions/util/LogWrapper;

    move-result-object v0

    const-string v1, "SecGlobalActionsAnimator"

    const-string/jumbo v2, "onAnimationEnd() : show"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$400(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$600(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$700(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$802(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$000(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Lcom/android/systemui/globalactions/presentation/view/ViewStateController;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/ViewStateController;->setState(Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$200(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Lcom/android/systemui/globalactions/util/LogWrapper;

    move-result-object v0

    const-string v1, "SecGlobalActionsAnimator"

    const-string/jumbo v2, "onAnimationStart() : show"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$100(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$400(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->requestFocusFor(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$500(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$400(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$600(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;->access$700(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
