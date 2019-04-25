.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"

.field private static sScreenExtendedBrightnessRangeMaximum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)F
    .locals 1

    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(FFF)F
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$200([F[FFFFF)Landroid/util/Pair;
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    return v0
.end method

.method static synthetic access$400([FF)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x1070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v1

    const v2, 0x1070064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v3, 0x1070062

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x1130000

    invoke-virtual {v0, v5, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    const v6, 0x10700a5

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v12

    const v6, 0x10700a4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    const v6, 0x107007c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getDynamicAutoBrightnessLevels([I)[F

    move-result-object v14

    const v6, 0x1070082

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    const v6, 0x10e00b5

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/16 v7, 0xff

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    const v6, 0x10e0020

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil$Sales;->CHINA:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->A90Q_PROJECT:Z

    if-eqz v6, :cond_1

    :cond_0
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v6, :cond_1

    invoke-static {v14, v15}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "BrightnessMappingStrategy"

    const-string v6, "Use SecMappingStrategy"

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;

    int-to-float v6, v11

    invoke-direct {v4, v14, v15, v6}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;-><init>([F[IF)V

    return-object v4

    :cond_1
    invoke-static {v12, v13}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v1, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v6, :cond_4

    const v6, 0x10e00bc

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v6, 0x10e00bb

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const/4 v6, 0x0

    aget v6, v13, v6

    if-gt v6, v10, :cond_2

    array-length v6, v13

    sub-int/2addr v6, v4

    aget v4, v13, v6

    if-ge v4, v9, :cond_3

    :cond_2
    const-string v4, "BrightnessMappingStrategy"

    const-string v6, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v4, "BrightnessMappingStrategy"

    const-string v6, "Use PhysicalMappingStrategy"

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>()V

    invoke-virtual {v4, v1, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    new-instance v16, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v7

    int-to-float v8, v11

    move-object/from16 v6, v16

    move/from16 v17, v8

    move-object v8, v12

    move/from16 v18, v9

    move-object v9, v13

    move/from16 v19, v10

    move v10, v5

    move/from16 v20, v11

    move/from16 v11, v17

    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IFF)V

    return-object v16

    :cond_4
    move/from16 v20, v11

    invoke-static {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "BrightnessMappingStrategy"

    const-string v6, "Use SimpleMappingStrategy"

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object v4

    :cond_5
    const-string v4, "BrightnessMappingStrategy"

    const-string/jumbo v6, "not found. null"

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "nitsRange"

    invoke-static {v12, v4}, Lcom/android/server/power/PowerManagerUtil;->printArray([FLjava/lang/String;)V

    const-string v4, "backlightRange"

    invoke-static {v13, v4}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    const-string/jumbo v4, "luxLevels"

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerUtil;->printArray([FLjava/lang/String;)V

    const-string v4, "brightnessLevelsNits"

    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerUtil;->printArray([FLjava/lang/String;)V

    const-string v4, "brightnessLevelsBacklight"

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    const-string/jumbo v4, "dynamicAutoBrightnessLevels"

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    const-string/jumbo v4, "dynamicAutoBrightnessValues"

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    const/4 v4, 0x0

    return-object v4
.end method

.method private static findInsertionPoint([FF)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    return v0
.end method

.method private static getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    move-object v0, p0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p4, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p4

    neg-float v4, p4

    invoke-static {p5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    aget v6, v1, v5

    cmpl-float v6, v6, v3

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    aget v6, v1, v5

    invoke-static {v6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    cmpl-float v2, p2, v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    :cond_2
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static getDynamicAutoBrightnessLevels([I)[F
    .locals 3

    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 4

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static inferAutoBrightnessAdjustment(FFF)F
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    cmpl-float v2, p1, v3

    if-nez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    sub-float v0, p1, p2

    :goto_1
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private static insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    array-length v1, p0

    if-ne v0, v1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    aput p2, v1, v0

    aput p3, v2, v0

    goto :goto_0

    :cond_0
    aget v1, p0, v0

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    aput p3, v2, v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, v1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p3, v2, v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p0

    if-eqz v1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    aget v2, p0, v0

    aget v3, p1, v0

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_8

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_7

    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_6

    aget v6, p1, v2

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    goto :goto_2

    :cond_3
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_5

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    aget v3, p0, v2

    aget v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const-string v4, "BrightnessMappingStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " y["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    :goto_2
    const-string v4, "BrightnessMappingStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prevX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " x["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " prevY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " y["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    return v4

    :cond_8
    :goto_3
    const-string v4, "BrightnessMappingStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prevX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " prevY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    :goto_4
    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_a

    const-string/jumbo v3, "null"

    goto :goto_5

    :cond_a
    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_b

    const-string/jumbo v3, "null"

    goto :goto_6

    :cond_b
    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isValidMapping([F[I)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    aget v2, p0, v0

    aget v3, p1, v0

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    if-ltz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_6

    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_5

    aget v6, p1, v2

    if-le v5, v6, :cond_3

    goto :goto_1

    :cond_3
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, "BrightnessMappingStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    aget v3, p0, v2

    aget v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const-string v4, "BrightnessMappingStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prevX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " x["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " prevY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " y["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    return v4

    :cond_7
    :goto_2
    const-string v4, "BrightnessMappingStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prevX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " prevY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    :goto_3
    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_9

    const-string/jumbo v3, "null"

    goto :goto_4

    :cond_9
    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_a

    const-string/jumbo v3, "null"

    goto :goto_5

    :cond_a
    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2

    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static permissibleRatio(FF)F
    .locals 2

    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p0, v0

    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private static smoothCurve([F[FI)V
    .locals 8

    aget v0, p0, p2

    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    cmpl-float v7, v6, v4

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    move v1, v6

    aput v6, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget v0, p0, p2

    aget v1, p1, p2

    add-int/lit8 v2, p2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    cmpl-float v7, v6, v4

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    move v0, v3

    move v1, v6

    aput v6, p1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getBrightness(F)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract hasPersonalizedAutoBrightnessControl()Z
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setAutoBrightnessScaleFactor(I)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method
