.class public Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;
.super Ljava/lang/Object;
.source "SecTransitionViewParams.java"


# instance fields
.field public h:F

.field public locationOnScreenX:F

.field public locationOnScreenY:F

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->w:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->h:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->locationOnScreenX:F

    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->locationOnScreenY:F

    return-void
.end method
