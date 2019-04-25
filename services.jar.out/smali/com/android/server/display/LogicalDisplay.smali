.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field private static final PROP_MASKING_INSET_TOP:Ljava/lang/String; = "persist.sys.displayinset.top"

.field private static final SCREEN_RATIO_16_BY_9:F = 1.7777778f

.field private static final TAG:Ljava/lang/String; = "LogicalDisplay"


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field mFixedRotation:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorMode:I

.field private mRequestedModeId:I

.field private mScaledDisplayHeight:I

.field private mScaledDisplayWidth:I

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;

.field mTempPrimaryDevice:Lcom/android/server/display/DisplayDevice;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mFixedRotation:I

    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayWidth:I

    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayHeight:I

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-void
.end method

.method private static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method

.method private static isScreenRatio16by9(II)Z
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fe38e39

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, -0x1

    if-eqz p3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_0
    invoke-virtual {v2, v1, v5}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_1

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    iget v7, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    invoke-virtual {v2, v5, v7}, Lcom/android/server/display/DisplayDevice;->requestDisplayModesLocked(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6, v6}, Lcom/android/server/display/DisplayDevice;->requestDisplayModesLocked(II)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v9, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v8, 0x0

    iget v9, v7, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    iget v8, v5, Landroid/view/DisplayInfo;->rotation:I

    :cond_2
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mFixedRotation:I

    if-le v9, v3, :cond_3

    iget v3, v7, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-ne v3, v10, :cond_3

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mFixedRotation:I

    :cond_3
    iget v3, v7, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v3, v8

    rem-int/lit8 v3, v3, 0x4

    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    const/4 v9, 0x3

    if-ltz v8, :cond_4

    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    if-gt v8, v9, :cond_4

    iget v3, v7, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    :cond_4
    if-eq v3, v11, :cond_6

    if-ne v3, v9, :cond_5

    goto :goto_2

    :cond_5
    move v8, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v8, v11

    :goto_3
    if-eqz v8, :cond_7

    iget v9, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_4

    :cond_7
    iget v9, v7, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_4
    if-eqz v8, :cond_8

    iget v12, v7, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_5

    :cond_8
    iget v12, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_5
    invoke-static {v7}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v13

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v14, :cond_9

    sget-boolean v14, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT:Z

    if-eqz v14, :cond_9

    const-string v14, "DisplayManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LogicalDisplay: configureDisplayLocked: d"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " maskingInsets="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " displayDeviceInfo"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v6, v13, Landroid/graphics/Rect;->left:I

    iget v14, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v14

    iget v14, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v14

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v14

    if-lez v6, :cond_a

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    move v6, v11

    if-eqz v6, :cond_b

    iget v11, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v11, v14}, Lcom/android/server/display/LogicalDisplay;->isScreenRatio16by9(II)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    :cond_b
    invoke-static {v13, v3}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    iget v6, v13, Landroid/graphics/Rect;->left:I

    iget v11, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v11

    sub-int/2addr v9, v6

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v11, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v11

    sub-int/2addr v12, v6

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayWidth:I

    if-ltz v6, :cond_e

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayHeight:I

    if-ltz v6, :cond_e

    if-eqz v8, :cond_c

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayHeight:I

    goto :goto_7

    :cond_c
    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayWidth:I

    :goto_7
    move v9, v6

    if-eqz v8, :cond_d

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayWidth:I

    goto :goto_8

    :cond_d
    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayHeight:I

    :goto_8
    move v12, v6

    :cond_e
    iget v6, v5, Landroid/view/DisplayInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v6, v11

    if-eqz v6, :cond_10

    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_f
    :goto_9
    move/from16 v16, v6

    goto/16 :goto_d

    :cond_10
    iget v6, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v6, v9

    iget v11, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v11, v12

    if-ge v6, v11, :cond_15

    move v6, v9

    iget v11, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v14, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/2addr v11, v14

    iget v14, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eq v9, v14, :cond_14

    iget v14, v13, Landroid/graphics/Rect;->top:I

    if-nez v14, :cond_11

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    if-eqz v14, :cond_f

    :cond_11
    iget v14, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v14, v12

    int-to-float v14, v14

    int-to-float v15, v9

    div-float/2addr v14, v15

    iget v15, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v15, v15

    div-float v15, v14, v15

    int-to-float v10, v12

    int-to-float v4, v9

    div-float/2addr v10, v4

    cmpl-float v4, v15, v10

    if-nez v4, :cond_12

    float-to-int v4, v14

    move/from16 v16, v6

    iget v6, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v4, v6, :cond_13

    float-to-int v4, v14

    int-to-float v4, v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_13

    int-to-float v4, v9

    mul-float/2addr v4, v14

    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    move v11, v4

    goto :goto_a

    :cond_12
    move/from16 v16, v6

    :cond_13
    :goto_a
    goto :goto_d

    :cond_14
    move/from16 v16, v6

    goto :goto_d

    :cond_15
    iget v4, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v4, v12

    iget v6, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int v6, v4, v6

    move v11, v12

    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eq v12, v4, :cond_18

    iget v4, v13, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_17

    iget v4, v13, Landroid/graphics/Rect;->right:I

    if-eqz v4, :cond_16

    goto :goto_b

    :cond_16
    move/from16 v17, v6

    goto :goto_c

    :cond_17
    :goto_b
    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v10, v12

    div-float/2addr v4, v10

    iget v10, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v10, v10

    div-float v10, v4, v10

    int-to-float v14, v9

    int-to-float v15, v12

    div-float/2addr v14, v15

    cmpl-float v15, v10, v14

    if-nez v15, :cond_18

    float-to-int v15, v4

    move/from16 v17, v6

    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v15, v6, :cond_19

    float-to-int v6, v4

    int-to-float v6, v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_19

    int-to-float v6, v12

    mul-float/2addr v6, v4

    iget v15, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v15, v15

    div-float/2addr v6, v15

    float-to-int v6, v6

    goto/16 :goto_9

    :cond_18
    move/from16 v17, v6

    :cond_19
    :goto_c
    move/from16 v16, v17

    :goto_d
    sub-int v4, v12, v11

    const/4 v6, 0x2

    div-int/2addr v4, v6

    sub-int v10, v9, v16

    div-int/2addr v10, v6

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v14, v10, v16

    add-int v15, v4, v11

    invoke-virtual {v6, v10, v4, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    iget v15, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->left:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    add-int/2addr v14, v15

    iput v14, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->right:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    add-int/2addr v14, v15

    iput v14, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    add-int/2addr v14, v15

    iput v14, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    add-int/2addr v14, v15

    iput v14, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3, v6, v14}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getBuiltInDisplayId()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    return v1

    :cond_1
    return v2

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanTop:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanRight:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public getRequestedModeIdLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    return v0
.end method

.method hasBaseDisplayCutoutLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    rem-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v4, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_0
    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v4, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_3

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return v0

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return v0

    :cond_4
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_5

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayOffsetsLocked(II)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return-void
.end method

.method setPrimaryDisplayDevice(Lcom/android/server/display/DisplayDevice;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayDevice;",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT_LIGHT:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogicalDisplay: setPrimaryDisplayDevice: d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return-void
.end method

.method public setRequestedModeIdLocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    return-void
.end method

.method public setScaledDisplaySizeLocked(II)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayWidth:I

    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mScaledDisplayHeight:I

    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v3, v2, Landroid/view/DisplayInfo;->layerStack:I

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_2
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_3
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    :cond_4
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    :cond_5
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_6
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_7
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_8
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v8, v7, Landroid/view/DisplayInfo;->type:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v7, Landroid/view/DisplayInfo;->rotation:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->modeId:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->defaultModeId:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/Display$Mode;

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v8, v7, Landroid/view/DisplayInfo;->colorMode:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v8, v7, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v8, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v8, v7, Landroid/view/DisplayInfo;->state:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v8, v7, Landroid/view/DisplayInfo;->ownerUid:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_9

    move v3, v4

    nop

    :cond_9
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_a

    move-object v8, v1

    goto :goto_0

    :cond_a
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_0
    iput-object v8, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v7, 0x10000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v7, v8

    iput v7, v1, Landroid/view/DisplayInfo;->flags:I

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    if-eq v1, v4, :cond_b

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v1, Landroid/view/DisplayInfo;->rotation:I

    :cond_c
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v4, 0x20000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v4, v7

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_d
    return-void
.end method
