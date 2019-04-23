.class public Lcom/altamirasoft/glanimationutil/GLValueAnimator;
.super Ljava/lang/Object;
.source "GLValueAnimator.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLAnimatorFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;,
        Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;
    }
.end annotation


# instance fields
.field currentValue:F

.field duration:J

.field fromValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field isCanceled:Z

.field isFinished:Z

.field isStarted:Z

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field startDelay:J

.field toValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isCanceled:Z

    return-void
.end method

.method private interpolator(FFFF)F
    .locals 4

    div-float v0, p4, p3

    cmpg-float v1, p3, p4

    if-gtz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator:Landroid/animation/TimeInterpolator;

    if-nez v2, :cond_1

    sub-float v2, p2, p1

    mul-float/2addr v2, v0

    add-float/2addr v2, p1

    :goto_0
    goto :goto_1

    :cond_1
    sub-float v2, p2, p1

    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    goto :goto_0

    :goto_1
    return v2
.end method

.method public static ofFloat(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;
    .locals 1

    new-instance v0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-direct {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;-><init>()V

    iput p0, v0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->fromValue:F

    iput p1, v0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->toValue:F

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doFrame()V
    .locals 7

    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->startDelay:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->startDelay:J

    sub-long/2addr v0, v3

    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->fromValue:F

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->toValue:F

    iget-wide v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->duration:J

    long-to-float v5, v5

    long-to-float v6, v0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator(FFFF)F

    move-result v3

    iput v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->currentValue:F

    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->currentValue:F

    iget v4, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->toValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;

    invoke-interface {v5, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_4
    return-void
.end method

.method public end()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    nop

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;->onAnimationEnd(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentValue()F
    .locals 1

    iget v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->currentValue:F

    return v0
.end method

.method public setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;
    .locals 0

    iput-wide p1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->duration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public start()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isCanceled:Z

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    nop

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;->onAnimationStart(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
