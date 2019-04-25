.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanningScalingState"
.end annotation


# instance fields
.field mInitialScaleFactor:F

.field private mMovingEnabledByMultiPan:Z

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaling:Z

.field final mScalingThreshold:F

.field private final mScrollGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x105005d

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScalingThreshold:F

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/ScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method private clearMultiFingerPanning()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    return-void
.end method

.method private handleMultiFingerPanning(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clearMultiFingerPanning()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindow(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;I)V

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMultiFingerPanning ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clearMultiFingerPanning()V

    return-void
.end method

.method public isMovingByMultiPanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->handleMultiFingerPanning(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScalingThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    return v1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    const/high16 v3, 0x41000000    # 8.0f

    :goto_0
    goto :goto_1

    :cond_3
    cmpg-float v3, v2, v4

    if-gez v3, :cond_4

    cmpg-float v3, v2, v0

    if-gez v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_1
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hover_zoom_value"

    sub-float v4, v3, v4

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clear()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    return v2
.end method

.method public persistScaleAndTransitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingStateHandler{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
