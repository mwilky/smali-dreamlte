.class public Lcom/android/server/wm/MultiWindowFreezeAnimation;
.super Ljava/lang/Object;
.source "MultiWindowFreezeAnimation.java"


# static fields
.field private static final FREEFORM_ANIMATION_DURATION:I = 0x150

.field private static final FREEZE_ANIMATION_DURATION:I = 0xfa

.field private static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab8f

.field private static final SPLIT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "MultiWindowFreezeAnimation"


# instance fields
.field private mAnimating:Z

.field private mAnimation:Landroid/view/animation/Animation;

.field final mCreatedTime:J

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mRect:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private mTmpWindowState:Lcom/android/server/wm/WindowState;

.field private final mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v5, 0x9

    new-array v5, v5, [F

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    new-instance v5, Landroid/view/animation/Transformation;

    invoke-direct {v5}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mCreatedTime:J

    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getLayerStack()I

    move-result v8

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9}, Landroid/hardware/display/DisplayManagerInternal;->isDesktopSwitched()Z

    move-result v9

    if-eqz v9, :cond_0

    iput v10, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    goto :goto_0

    :cond_0
    iget v9, v7, Landroid/view/DisplayInfo;->rotation:I

    iput v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    :goto_0
    iget v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    if-eq v9, v10, :cond_2

    iget v9, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_1

    goto :goto_1

    :cond_1
    iget v9, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v9, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v11, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_2
    nop

    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v4, v4, v9, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v12, "MultiWindowFreezeAnimation"

    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v11}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v0, v13, :cond_4

    :try_start_1
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v13, :cond_3

    iget-object v13, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v13}, Landroid/hardware/display/DisplayManagerInternal;->isDesktopSwitched()Z

    move-result v13
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v13, :cond_4

    :cond_3
    const/4 v12, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    :cond_4
    :goto_3
    move v15, v12

    :try_start_2
    invoke-static {v15}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v12

    move-object v14, v12

    if-eqz v14, :cond_9

    const/4 v12, 0x0

    const/16 v18, 0x0

    new-instance v13, Landroid/view/Surface;

    invoke-direct {v13}, Landroid/view/Surface;-><init>()V

    iget-object v10, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v10}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v10, p4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_5

    const/16 v5, 0x7d0

    :try_start_3
    invoke-direct {v1, v5}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->findWindowByType(I)Lcom/android/server/wm/WindowState;

    move-result-object v5
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v12, v5

    goto :goto_4

    :cond_5
    move-object v5, v12

    :goto_4
    if-eqz v5, :cond_6

    :try_start_4
    const-string v12, "MultiWindowFreezeAnimation"
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v19, v6

    :try_start_5
    const-string v6, "Screenshot to statusbar as maxLayer"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v6
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v20, v7

    move-object v7, v13

    move v13, v9

    move-object v10, v14

    move v14, v11

    move/from16 v21, v15

    move-object v15, v6

    :try_start_6
    invoke-static/range {v12 .. v17}, Landroid/view/SurfaceControl;->sec_screenshotToBuffer(Landroid/graphics/Rect;IILandroid/os/IBinder;ZI)Landroid/graphics/GraphicBuffer;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v7, v6}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v4, v12, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    const/16 v18, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v20, v7

    goto :goto_7

    :cond_6
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v7, v13

    move-object v10, v14

    move/from16 v21, v15

    :cond_7
    :goto_5
    if-nez v18, :cond_8

    invoke-static {v10, v7, v9, v11}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V

    iget-object v6, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v12, 0x1eab8f

    invoke-virtual {v4, v6, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_8
    iget-object v6, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/view/Surface;->destroy()V

    goto :goto_6

    :cond_9
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v10, v14

    move/from16 v21, v15

    const-string v5, "MultiWindowFreezeAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move/from16 v19, v6

    move-object/from16 v20, v7

    :goto_7
    const-string v5, "MultiWindowFreezeAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    int-to-float v5, v9

    int-to-float v6, v11

    invoke-direct {v1, v0, v5, v6, v3}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->rotate(IFFLandroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_a
    iget-object v0, v1, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v1, v4, v0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->setRotationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private clearAnimation()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "clearAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    return-void
.end method

.method private destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "destroy: MultiWindowFreezeAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private findWindowByType(I)Lcom/android/server/wm/WindowState;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;-><init>(Lcom/android/server/wm/MultiWindowFreezeAnimation;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private hasAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$findWindowByType$0(Lcom/android/server/wm/MultiWindowFreezeAnimation;ILcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpWindowState:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadFreezeAnimation(I)V
    .locals 5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-void
.end method

.method private rotate(IFFLandroid/graphics/Rect;)V
    .locals 6

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setAnimationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v10, v1

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v11, v1

    iget v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v2, v11, v8

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v2, v10, v8

    sub-float v3, v11, v9

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v2, v10, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    nop

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v7, :cond_0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v6, v13, v6

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v5, v13, v5

    invoke-virtual {v7, v12, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v4, v6, v4

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v6, v6, v3

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v12, v3, v2

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v13, v2, v1

    move-object v1, v7

    move-object v2, v5

    move v3, v4

    move v4, v6

    move v5, v12

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_0
    iget-object v12, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v6, v13, v6

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v5, v13, v5

    invoke-virtual {v12, v6, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v4, v6, v4

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v3, v6, v3

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v2, v6, v2

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTmpFloats:[F

    aget v1, v6, v1

    invoke-virtual {v5, v4, v3, v2, v1}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v1, v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAnimationTransformation(Landroid/view/animation/Transformation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->setAnimationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V

    return-void
.end method

.method private setRotationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 7

    iget v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRotation:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->setAnimationTransformation(Landroid/view/animation/Transformation;)V

    return v0
.end method


# virtual methods
.method dismiss(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "loadFreezeAnimation: MultiWindowFreezeAnimation is running."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->loadFreezeAnimation(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MultiWindowFreezeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: load alpha animation, changeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method isAnimating()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->hasAnimation()Z

    move-result v0

    return v0
.end method

.method kill()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowFreezeAnimation"

    const-string v1, "Kill!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->clearAnimation()V

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->destroy()V

    return-void
.end method

.method stepAnimationLocked(J)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    if-nez v0, :cond_1

    const-string v0, "MultiWindowFreezeAnimation"

    const-string/jumbo v1, "stepAnimationLocked: start animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->stepAnimation(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/MultiWindowFreezeAnimation;->mCreatedTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
