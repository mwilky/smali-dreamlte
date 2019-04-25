.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mAutoBrightnessScaleFactorSetting:I

.field private mAutoBrightnessScaleFactorUpdated:Z

.field private mAutoBrightnessScaleFactorValue:F

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightnessSpline:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mHbmLux:F

.field private mLastAutoBrightnessScaleFactorValue:F

.field private mMaxGamma:F

.field private final mNitsToBacklightSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserBrightnessOffset:F

.field private mUserLux:F


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IFF)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v1, p3

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Nits and backlight arrays must not be empty!"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v1, p2

    array-length v4, p3

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v1, "Nits and backlight arrays must be the same length!"

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v2, "nits"

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    nop

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300()I

    move-result v1

    const-string v2, "backlight"

    invoke-static {p3, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iput p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mHbmLux:F

    array-length v0, p2

    new-array v1, v0, [F

    nop

    :goto_2
    move v2, v3

    if-ge v2, v0, :cond_2

    aget v3, p3, v2

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-static {v1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    return-void
.end method

.method private checkReverse([F[FI)V
    .locals 7

    aget v0, p1, p3

    aget v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget v3, p1, v2

    aget v4, p2, v2

    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mHbmLux:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    goto :goto_2

    :cond_1
    move v0, v3

    move v1, v5

    aput v5, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    aget v0, p1, p3

    aget v1, p2, p3

    add-int/lit8 v2, p3, -0x1

    :goto_3
    if-ltz v2, :cond_5

    aget v3, p1, v2

    aget v4, p2, v2

    cmpl-float v5, v4, v1

    if-lez v5, :cond_3

    move v5, v1

    goto :goto_4

    :cond_3
    move v5, v4

    :goto_4
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_4

    goto :goto_5

    :cond_4
    move v0, v3

    move v1, v5

    aput v5, p2, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    :goto_5
    return-void
.end method

.method private computeSpline()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    array-length v4, v3

    new-array v4, v4, [F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_0

    iget-object v7, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v8, v3, v6

    invoke-virtual {v7, v8}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->isDefaultConfig()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v6}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [F

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v9

    move v9, v5

    :goto_1
    array-length v12, v2

    if-ge v9, v12, :cond_2

    aget v12, v2, v9

    iget v13, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mHbmLux:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    add-int/lit8 v11, v11, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v5

    :goto_2
    array-length v12, v7

    if-ge v9, v12, :cond_4

    aget v12, v7, v9

    iget v13, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mHbmLux:F

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    add-int v9, v11, v10

    new-array v12, v9, [F

    new-array v13, v9, [F

    invoke-static {v2, v5, v12, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v5, v13, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v7

    sub-int/2addr v14, v10

    invoke-static {v7, v14, v12, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v8

    sub-int/2addr v14, v10

    invoke-static {v8, v14, v13, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v13

    new-array v14, v14, [F

    move v15, v5

    :goto_3
    array-length v5, v14

    if-ge v15, v5, :cond_5

    iget-object v5, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    move-object/from16 v16, v1

    aget v1, v13, v15

    invoke-virtual {v5, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    aput v1, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v16, v1

    invoke-virtual {v12}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [F

    invoke-virtual {v14}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [F

    goto :goto_4

    :cond_6
    move-object/from16 v16, v1

    :goto_4
    iget v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v5, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getOffsetAdjustedCurve([F[FFF)Landroid/util/Pair;

    move-result-object v1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    array-length v7, v6

    new-array v7, v7, [F

    const/4 v8, 0x0

    :goto_5
    array-length v9, v7

    if-ge v8, v9, :cond_a

    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v10, v6, v8

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    aput v9, v7, v8

    iget-boolean v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-eqz v9, :cond_9

    aget v9, v5, v8

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mHbmLux:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    if-eqz v9, :cond_8

    iget v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    aget v10, v5, v8

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    div-float/2addr v9, v10

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v9, v10

    aput v9, v7, v8

    goto :goto_7

    :cond_8
    :goto_6
    aget v9, v7, v8

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v9, v10

    aput v9, v7, v8

    :goto_7
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v10, v7, v8

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    aput v9, v7, v8

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    iget-boolean v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-eqz v8, :cond_b

    iget v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    iput v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    :cond_b
    invoke-static {v5, v7}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    return-void
.end method

.method private getOffsetAdjustedCurve([F[FFF)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    move-object v0, p1

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_2

    aget v5, v0, v2

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mHbmLux:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v6, v1, v2

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v6, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    aput v6, v1, v2

    aget v6, v1, v2

    cmpl-float v6, v6, v4

    if-lez v6, :cond_1

    aput v4, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    sub-float v6, p4, v5

    iput v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    nop

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_5

    aget v6, v1, v3

    cmpl-float v6, v6, v4

    if-lez v6, :cond_3

    goto :goto_3

    :cond_3
    aget v6, v1, v3

    aget v7, p1, v3

    invoke-virtual {p0, v7, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getOffset(FFF)F

    move-result v7

    add-float/2addr v6, v7

    aput v6, v1, v3

    aget v6, v1, v3

    cmpl-float v6, v6, v4

    if-lez v6, :cond_4

    aput v4, v1, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->insertUserPoint([F[FFF)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [F

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [F

    :cond_6
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private getSlope(FFFF)F
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, p3

    if-eqz v1, :cond_0

    cmpl-float v1, p2, p4

    if-eqz v1, :cond_0

    sub-float v1, p4, p2

    sub-float v2, p3, p1

    div-float v0, v1, v2

    :cond_0
    return v0
.end method

.method private getUnadjustedBrightness(F)F
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method

.method private insertUserPoint([F[FFF)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    invoke-static {p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->access$400([FF)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    aput p3, v1, v0

    aput p4, v2, v0

    goto :goto_0

    :cond_0
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    aput p4, v2, v0

    goto :goto_0

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p3, v1, v0

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p4, v2, v0

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->checkReverse([F[FI)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-static {v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    return-void
.end method

.method public clearUserDataPoints()V
    .locals 2

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    :cond_0
    return-void
.end method

.method public convertToNits(I)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightnessOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    return v1
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getOffset(FFF)F
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v5, p1, p2

    if-eqz v5, :cond_2

    move v4, p2

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    cmpg-float v5, p1, p2

    if-gez v5, :cond_0

    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    cmpg-float v5, p2, p1

    if-gez v5, :cond_1

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mHbmLux:F

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v4, v2, v3, v1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getSlope(FFFF)F

    move-result v5

    sub-float v6, p1, v4

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    :goto_1
    return v5
.end method

.method public hasPersonalizedAutoBrightnessControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasUserDataPoints()Z
    .locals 2

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultConfig()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .locals 3

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoBrightnessAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessScaleFactor(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoBrightnessScaleFactor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    const v0, 0x3c75c28f    # 0.015f

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v2, 0x55

    if-ne v1, v2, :cond_3

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_4

    const v0, 0x3b449ba6    # 0.003f

    :cond_4
    :goto_0
    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    return v1
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    const/4 v0, 0x1

    return v0
.end method
