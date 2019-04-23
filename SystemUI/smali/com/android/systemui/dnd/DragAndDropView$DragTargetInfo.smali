.class Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;
.super Ljava/lang/Object;
.source "DragAndDropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dnd/DragAndDropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragTargetInfo"
.end annotation


# instance fields
.field private mArea:I

.field private mBounds:Landroid/graphics/Rect;

.field mIsHidden:Z

.field private mTouchBounds:Landroid/graphics/Rect;

.field private mView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/dnd/DragAndDropView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/android/systemui/dnd/DragAndDropView$DnDDropTarget;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;-><init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 5
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/android/systemui/dnd/DragAndDropView$DnDDropTarget;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mArea:I

    iput-object p4, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mBounds:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mTouchBounds:Landroid/graphics/Rect;

    iput-boolean p6, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mIsHidden:Z

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropView;->TAG:Ljava/lang/String;

    const-string v2, "area=%d, mBounds=%s, mTouchBounds=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mArea:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mTouchBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getUnfocusedAlpha()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mIsHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method


# virtual methods
.method public animateFadeIn()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->getUnfocusedAlpha()F

    move-result v5

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getScaleX()F

    move-result v5

    aput v5, v4, v6

    const v5, 0x3f333333    # 0.7f

    aput v5, v4, v7

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    iget-object v8, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScaleY()F

    move-result v8

    aput v8, v4, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateFocusChange(Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mIsHidden:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const v1, 0x7f120b85

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->getUnfocusedAlpha()F

    move-result v7

    :goto_1
    const/4 v8, 0x1

    aput v7, v4, v8

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v3, [F

    iget-object v7, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getScaleX()F

    move-result v7

    aput v7, v4, v6

    const v7, 0x3f333333    # 0.7f

    if-eqz p1, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v7

    :goto_2
    aput v9, v4, v8

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    iget-object v9, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScaleY()F

    move-result v9

    aput v9, v4, v6

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v5, v7

    :goto_3
    aput v5, v4, v8

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateForce(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    if-eqz p1, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    aput v5, v4, v1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public getArea()I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mArea:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTouchBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mTouchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->mView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setFocus(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->animateFocusChange(Z)V

    return-void
.end method
