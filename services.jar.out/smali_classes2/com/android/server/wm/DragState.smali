.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$AnimationListener;,
        Lcom/android/server/wm/DragState$InputInterceptor;
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field private static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3

.field private static final MAX_ANIMATION_DURATION_MS:J = 0x177L

.field private static final MIN_ANIMATION_DURATION_MS:J = 0xc3L


# instance fields
.field volatile mAnimationCompleted:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field mCrossProfileCopyAllowed:Z

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplaySize:Landroid/graphics/Point;

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field mDragInProgress:Z

.field mDragResult:Z

.field mFlags:I

.field mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalAlpha:F

.field mOriginalX:F

.field mOriginalY:F

.field mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceUserId:I

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Landroid/os/IBinder;

.field mTouchSource:I

.field mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v7, "x"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v2, v5

    const-string/jumbo v7, "y"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v2, v4

    const-string/jumbo v7, "scale"

    new-array v8, v6, [F

    iget v9, v0, Landroid/view/MagnificationSpec;->scale:F

    aput v9, v8, v5

    aput v3, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v7, "alpha"

    new-array v6, v6, [F

    iget v8, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v8, v6, v5

    aput v3, v6, v4

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v7, "x"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v2, v5

    const-string/jumbo v7, "y"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v2, v4

    const-string/jumbo v7, "scale"

    new-array v8, v6, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v7, "alpha"

    new-array v6, v6, [F

    iget v8, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v8, v6, v5

    aput v3, v6, v4

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    const-wide/16 v3, 0xc3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;

    invoke-direct {v4, v1}, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 14

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v7, "x"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v3, v5

    const-string/jumbo v7, "y"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v3, v4

    const-string/jumbo v7, "scale"

    new-array v8, v6, [F

    iget v9, v0, Landroid/view/MagnificationSpec;->scale:F

    aput v9, v8, v5

    iget v9, v0, Landroid/view/MagnificationSpec;->scale:F

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v7, "alpha"

    new-array v6, v6, [F

    iget v8, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v8, v6, v5

    iget v5, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    div-float/2addr v5, v1

    aput v5, v6, v4

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v7, "x"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v3, v5

    const-string/jumbo v7, "y"

    new-array v8, v6, [F

    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    aput v9, v8, v5

    iget v9, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v3, v4

    const-string/jumbo v7, "scale"

    new-array v8, v6, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v7, "alpha"

    new-array v6, v6, [F

    iget v8, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v8, v6, v5

    iget v5, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    div-float/2addr v5, v1

    aput v5, v6, v4

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v2, v3

    :goto_1
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v3, v4

    :goto_2
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/16 v8, 0xc3

    div-double v10, v4, v6

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    double-to-long v10, v10

    add-long/2addr v8, v10

    new-instance v10, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v11, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v11, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;

    invoke-direct {v12, v1}, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isFromSource(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$broadcastDragStartedLocked$0(Lcom/android/server/wm/DragState;FFLcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    return-void
.end method

.method static synthetic lambda$createCancelAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$createReturnAnimationLocked$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 13

    move-object v0, p0

    move v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v10

    move/from16 v11, p3

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v12

    move v2, p1

    move v3, v10

    move v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v2 .. v9}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    return-object v2
.end method

.method private sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_1

    :goto_0
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-start window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    :cond_0
    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method broadcastDragStartedLocked(FF)V
    .locals 4

    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string/jumbo v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcasting DRAG_STARTED at ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;-><init>(Lcom/android/server/wm/DragState;FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method cancelDragLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method closeLocked()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v2, "unregistering drag input channel"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    const-string v4, "broadcasting DRAG_ENDED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v7, :cond_3

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    iget v8, p0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v7, v8, :cond_3

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    :cond_3
    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-boolean v14, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v8, v5

    move v9, v6

    invoke-static/range {v7 .. v14}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v7

    :try_start_0
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8, v7}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v8, :cond_4

    invoke-virtual {v7}, Landroid/view/DragEvent;->recycle()V

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    :cond_6
    const/16 v0, 0x2002

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    iput v2, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_9

    const-string v0, "WindowManager"

    const-string v3, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method endDragLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method getDragLayerLocked()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method getInputChannel()Landroid/view/InputChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    :goto_0
    return-object v0
.end method

.method getInputWindowHandle()Lcom/android/server/input/InputWindowHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    :goto_0
    return-object v0
.end method

.method isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    return v0
.end method

.method notifyDropLocked(FF)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v11, p1

    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput v11, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput v12, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsDecorCaptionWin:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDexCompatBaseWin:Lcom/android/server/wm/WindowState;

    :cond_1
    move-object v13, v0

    invoke-direct {v1, v13}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_2

    iput-boolean v14, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending DROP to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    iget v0, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v4, v1, Lcom/android/server/wm/DragState;->mUid:I

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iget v2, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v6, v2, 0xc3

    iget v7, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v2, v0

    move v8, v15

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Landroid/content/ClipData;ILjava/lang/String;III)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    iget v0, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v0, v15, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v2, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->fixUris(I)V

    :cond_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/16 v16, 0x0

    move-object v2, v13

    move v4, v11

    move v5, v12

    move-object v14, v8

    move-object v8, v0

    move v11, v10

    move/from16 v10, v16

    invoke-static/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    move-object v2, v0

    :try_start_0
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v0, :cond_6

    :goto_1
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t send drop notification to win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    iput-object v14, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    return-void

    :goto_3
    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v3, :cond_7

    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    :cond_7
    throw v0
.end method

.method notifyLocationLocked(FF)V
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsDecorCaptionWin:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDexCompatBaseWin:Lcom/android/server/wm/WindowState;

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    move-object v13, v0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v13, v2, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending DRAG_EXITED to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v14, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_3

    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    :cond_3
    if-eqz v13, :cond_4

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    move v4, v11

    move v5, v12

    invoke-static/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_4

    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "can\'t send drag notification to windows"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v13, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method notifyMoveLocked(FF)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION notifyMoveLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  DRAG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": pos=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v2, p1, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "notifyMoveLw"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_5

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION notifyMoveLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "notifyMoveLw"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_6

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION notifyMoveLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
.end method

.method overridePointerIconLocked(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    const/16 v0, 0x2002

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_0
    return-void
.end method

.method register(Landroid/view/Display;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v1, "registering drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "Duplicate register of drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :goto_0
    return-void
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "need to send DRAG_STARTED to new window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    :cond_2
    return-void
.end method
