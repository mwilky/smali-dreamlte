.class Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v3, v3, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;-><init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$2;-><init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
