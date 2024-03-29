.class public final Landroid/support/v7/graphics/Target;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/Target$Builder;
    }
.end annotation


# static fields
.field public static final DARK_MUTED:Landroid/support/v7/graphics/Target;

.field public static final DARK_VIBRANT:Landroid/support/v7/graphics/Target;

.field public static final LIGHT_MUTED:Landroid/support/v7/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

.field public static final MUTED:Landroid/support/v7/graphics/Target;

.field public static final VIBRANT:Landroid/support/v7/graphics/Target;


# instance fields
.field mIsExclusive:Z

.field final mLightnessTargets:[F

.field final mSaturationTargets:[F

.field final mWeights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultLightLightnessValues(Landroid/support/v7/graphics/Target;)V

    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V

    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    sget-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultNormalLightnessValues(Landroid/support/v7/graphics/Target;)V

    sget-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V

    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultDarkLightnessValues(Landroid/support/v7/graphics/Target;)V

    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V

    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultLightLightnessValues(Landroid/support/v7/graphics/Target;)V

    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V

    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    sget-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultNormalLightnessValues(Landroid/support/v7/graphics/Target;)V

    sget-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V

    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultDarkLightnessValues(Landroid/support/v7/graphics/Target;)V

    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setTargetDefaultValues([F)V

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setTargetDefaultValues([F)V

    invoke-direct {p0}, Landroid/support/v7/graphics/Target;->setDefaultWeights()V

    return-void
.end method

.method private static setDefaultDarkLightnessValues(Landroid/support/v7/graphics/Target;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const v2, 0x3e851eb8    # 0.26f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    const v2, 0x3ee66666    # 0.45f

    aput v2, v0, v1

    return-void
.end method

.method private static setDefaultLightLightnessValues(Landroid/support/v7/graphics/Target;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const v2, 0x3f3d70a4    # 0.74f

    aput v2, v0, v1

    return-void
.end method

.method private static setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    const v2, 0x3e99999a    # 0.3f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    const v2, 0x3ecccccd    # 0.4f

    aput v2, v0, v1

    return-void
.end method

.method private static setDefaultNormalLightnessValues(Landroid/support/v7/graphics/Target;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    const v2, 0x3f333333    # 0.7f

    aput v2, v0, v1

    return-void
.end method

.method private static setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    const v2, 0x3eb33333    # 0.35f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    return-void
.end method

.method private setDefaultWeights()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const v1, 0x3e75c28f    # 0.24f

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v2, 0x1

    const v3, 0x3f051eb8    # 0.52f

    aput v3, v0, v2

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v2, 0x2

    aput v1, v0, v2

    return-void
.end method

.method private static setTargetDefaultValues([F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, p0, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public getLightnessWeight()F
    .locals 2

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumLightness()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumSaturation()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumLightness()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumSaturation()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPopulationWeight()F
    .locals 2

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getSaturationWeight()F
    .locals 2

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTargetLightness()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getTargetSaturation()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    return v0
.end method

.method normalizeWeights()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    array-length v2, v2

    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v4, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v4, v4, v1

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    add-float/2addr v0, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    array-length v2, v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v5, v4, v1

    div-float/2addr v5, v0

    aput v5, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
