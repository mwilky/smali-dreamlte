.class Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecMappingStrategy"
.end annotation


# static fields
.field private static final TAG_PAB:Ljava/lang/String; = "[PAB]"


# instance fields
.field private final AUTO_BRIGHTNESS_SCALE_FACTOR_EXCEPTION_ADJ:F

.field private final AUTO_BRIGHTNESS_SCALE_FACTOR_EXCEPTION_LUX:F

.field private final AUTO_BRIGHTNESS_SCALE_FACTOR_MAX:F

.field private final BASIS_LUX:F

.field private final SIZE_DEFAULT_LIST:I

.field private mAutoBrightnessScaleFactorSetting:I

.field private final mBrightness:[F

.field private mHbmLux:F

.field private final mLockPAB:Ljava/lang/Object;

.field private final mLux:[F

.field private mOffsetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

.field private mOp0LuxChangedByUser:Z

.field private mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

.field private mSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>([F[IF)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->BASIS_LUX:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->SIZE_DEFAULT_LIST:I

    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->AUTO_BRIGHTNESS_SCALE_FACTOR_MAX:F

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->AUTO_BRIGHTNESS_SCALE_FACTOR_EXCEPTION_LUX:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->AUTO_BRIGHTNESS_SCALE_FACTOR_EXCEPTION_ADJ:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Lux and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Lux and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v3, "lux"

    invoke-static {p1, v0, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const v0, 0x7fffffff

    const-string v1, "brightness"

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    array-length v0, p2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    nop

    :goto_2
    move v1, v2

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    aget v3, p1, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    aget v3, p2, v1

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->init()V

    return-void
.end method

.method private addSubOffsetPointsIfNeededLocked(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->removeAllSubOffsetPointsLocked()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->checkReversePointsByUsingAutoBrightnessTableValue(I)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    move v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]4-[CHECK POINT] : Too Many Sub Points. size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private addToListAfterBoundaryCheckLocked(FFF)I
    .locals 9

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v5, v5, v0

    if-gtz v5, :cond_0

    const-string v5, "BrightnessMappingStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB]1-remove op : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]1-remove 0lux offset : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    const-string v1, "BrightnessMappingStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB]1-index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v1, p1, v2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput p3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]1-change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput p3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]1-change : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    new-instance v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v6

    const/4 v8, 0x1

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v4, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mHighBoundary:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    iget v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-eqz v3, :cond_5

    const-string v3, "BrightnessMappingStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB]1-remove : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLowBoundary:F

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-eqz v4, :cond_6

    const-string v4, "BrightnessMappingStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB]1-remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_6
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v4, "BrightnessMappingStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB]1-add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method private checkReversePointsByUsingAutoBrightnessTableValue(I)I
    .locals 28

    move-object/from16 v6, p0

    move/from16 v7, p1

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    iget-object v10, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    iget-object v11, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    iget-object v12, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    move v14, v0

    array-length v0, v10

    const v15, 0x461c4000    # 10000.0f

    if-ge v14, v0, :cond_1

    aget v0, v10, v14

    cmpl-float v0, v0, v15

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v15, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    aget v2, v10, v14

    aget v0, v10, v14

    invoke-virtual {v6, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    aget v0, v10, v14

    invoke-virtual {v6, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOffset(F)F

    move-result v4

    const/4 v5, 0x2

    move-object v0, v15

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v14, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-direct {v6, v9, v1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_4

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]Index ERROR : addedIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4
    iget-object v0, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float v14, v0, v1

    iget-object v0, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    move v0, v14

    invoke-direct {v6, v9, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v16, v8

    move v8, v0

    :goto_4
    move v3, v1

    const/16 v17, 0x2

    if-ltz v3, :cond_f

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float v18, v2, v1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    const/4 v5, 0x0

    cmpg-float v19, v18, v5

    if-gez v19, :cond_9

    cmpl-float v5, v0, v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move/from16 v5, v17

    :goto_5
    new-instance v17, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v19

    neg-float v13, v2

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v21, v1

    move-object v1, v6

    move/from16 v22, v2

    move/from16 v2, v20

    move/from16 v23, v3

    move/from16 v3, v19

    move v15, v4

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    move/from16 v13, v20

    invoke-direct {v6, v1, v13}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    sub-float v3, v14, v22

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]4-negative-change : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2-negative-ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_7
    add-int/lit8 v16, v16, 0x1

    const/4 v0, 0x0

    nop

    move v8, v0

    goto/16 :goto_b

    :cond_9
    move v13, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move v15, v4

    cmpl-float v0, v18, v8

    if-ltz v0, :cond_e

    cmpl-float v0, v13, v5

    if-nez v0, :cond_a

    const/4 v5, 0x0

    goto :goto_8

    :cond_a
    move/from16 v5, v17

    :goto_8
    new-instance v17, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v13}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    sub-float v4, v8, v22

    move-object/from16 v0, v17

    move-object v1, v6

    move v2, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {v6, v1, v13}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_d

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    goto :goto_9

    :cond_b
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_c

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    sub-float v3, v8, v22

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]4-reverse-change : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_c
    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2-reverse-ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    :goto_9
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_a
    add-int/lit8 v16, v16, 0x1

    :cond_e
    :goto_b
    add-int/lit8 v1, v23, -0x1

    move v4, v15

    const v15, 0x461c4000    # 10000.0f

    goto/16 :goto_4

    :cond_f
    move v15, v4

    invoke-direct {v6, v9, v15}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    :goto_c
    move v13, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_19

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float v18, v4, v3

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v0, v18, v14

    if-gez v0, :cond_14

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v1, v2, v0

    if-nez v1, :cond_10

    const/4 v5, 0x0

    goto :goto_d

    :cond_10
    move/from16 v5, v17

    :goto_d
    new-instance v19, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v20

    sub-float v21, v14, v4

    move-object/from16 v0, v19

    move-object v1, v6

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v3, v20

    move/from16 v20, v4

    move/from16 v4, v21

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    move/from16 v4, v24

    invoke-direct {v6, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_13

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    move/from16 v26, v5

    goto :goto_e

    :cond_11
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_12

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    sub-float v3, v14, v20

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v5

    const-string v5, "[PAB]4-change : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_12
    move/from16 v26, v5

    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_13
    move/from16 v26, v5

    :goto_e
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_f
    add-int/lit8 v16, v16, 0x1

    nop

    const v19, 0x461c4000    # 10000.0f

    goto/16 :goto_13

    :cond_14
    move/from16 v25, v3

    move/from16 v20, v4

    move v4, v2

    move/from16 v14, v18

    const v19, 0x461c4000    # 10000.0f

    cmpl-float v0, v4, v19

    if-nez v0, :cond_15

    const/4 v5, 0x0

    goto :goto_10

    :cond_15
    move/from16 v5, v17

    :goto_10
    new-instance v21, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    move-object/from16 v0, v21

    move-object v1, v6

    move v2, v4

    move v7, v4

    move/from16 v4, v25

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {v6, v1, v7}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_18

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    move/from16 v27, v25

    goto :goto_11

    :cond_16
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    move/from16 v3, v25

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v3

    const-string v3, "[PAB]4-change : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_17
    move/from16 v27, v25

    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_18
    move/from16 v27, v25

    :goto_11
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_12
    add-int/lit8 v16, v16, 0x1

    :goto_13
    add-int/lit8 v0, v13, 0x1

    move/from16 v7, p1

    goto/16 :goto_c

    :cond_19
    return v16
.end method

.method private getIndex(Ljava/util/ArrayList;F)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v3, v3, p2

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le v0, v2, :cond_2

    move v0, v2

    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSlope(FFFF)F
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, p3

    if-eqz v1, :cond_2

    cmpl-float v1, p2, p4

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    const p1, 0x3f7fbe77    # 0.999f

    :cond_0
    cmpl-float v1, p3, v1

    if-nez v1, :cond_1

    const p3, 0x3f7fbe77    # 0.999f

    :cond_1
    sub-float v1, p4, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    :cond_2
    return v0
.end method

.method private getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v4, v4, 0x6

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n[PAB]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v7, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iput-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    new-instance v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v10, v2, v3

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]init : size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private printOffsetList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]Offset List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshFixedOffsetPointsLocked(I)V
    .locals 7

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]3-[CHECK POINT] ERROR. index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_9

    const/high16 v0, 0x41f00000    # 30.0f

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_4

    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_3

    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_0

    :cond_3
    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v6, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    :cond_5
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v4, v5

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v6, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v6, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_7
    iget v0, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    :goto_1
    goto :goto_2

    :cond_9
    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]3-[CHECK POINT] Fixed points are missing. size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    :cond_a
    :goto_2
    return-void
.end method

.method private removeAllReverseUserOffsetPointsLocked(I)I
    .locals 11

    const/4 v0, 0x0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]2-[CHECK POINT] ERROR. index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    const/4 v4, 0x1

    if-lez p1, :cond_4

    add-int/lit8 v5, p1, -0x1

    :goto_0
    if-ltz v5, :cond_4

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v7, v8

    cmpl-float v8, v7, v3

    if-lez v8, :cond_3

    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-ne v8, v4, :cond_1

    const-string v8, "BrightnessMappingStrategy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[PAB]2-remove : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-nez v8, :cond_2

    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    sub-float v8, v3, v8

    iput v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    goto :goto_1

    :cond_2
    const-string v8, "BrightnessMappingStrategy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[PAB]2-remove : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_2
    if-le v0, p1, :cond_9

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v6, v7

    cmpg-float v7, v6, v3

    if-gez v7, :cond_8

    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-ne v7, v4, :cond_5

    const-string v7, "BrightnessMappingStrategy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PAB]2-remove : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_6

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_3

    :cond_6
    const-string v7, "BrightnessMappingStrategy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PAB]2-ERROR.  i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", i.offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string v7, "BrightnessMappingStrategy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PAB]2-remove : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    :cond_9
    return v1
.end method

.method private removeAllSubOffsetPointsLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v0

    sub-float v1, p2, v0

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->removeAllSubOffsetPointsLocked()V

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->addToListAfterBoundaryCheckLocked(FFF)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->removeAllReverseUserOffsetPointsLocked(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->refreshFixedOffsetPointsLocked(I)V

    invoke-direct {p0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->addSubOffsetPointsIfNeededLocked(I)V

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->printOffsetList(Ljava/util/ArrayList;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :goto_0
    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]Do not add Point : lux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearUserDataPoints()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrightnessMappingStrategy"

    const-string v1, "[PAB]clearUserDataPoints"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    :cond_0
    return-void
.end method

.method public convertToNits(I)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "SecMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "[PAB]Personal Auto Brightness:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]mOp0LuxChangedByUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBrightness(F)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOffset(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffset(F)F
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_0
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    sub-float p1, v2, v3

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v2

    if-gtz v2, :cond_3

    const-string v1, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]getOffset: index error. index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    monitor-exit v0

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    :goto_0
    goto/16 :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_9

    cmpl-float v7, v3, v4

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    cmpl-float v7, v6, v1

    if-nez v7, :cond_7

    const v6, 0x3f7fbe77    # 0.999f

    :cond_7
    cmpl-float v1, p1, v1

    if-nez v1, :cond_8

    const p1, 0x3f7fbe77    # 0.999f

    :cond_8
    invoke-direct {p0, v6, v4, v5, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getSlope(FFFF)F

    move-result v1

    float-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v1, v7

    add-float/2addr v1, v4

    goto :goto_2

    :cond_9
    :goto_1
    move v1, v3

    goto :goto_0

    :goto_2
    nop

    monitor-exit v0

    return v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrgCd(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getPersonalScreenAutoBrightness(F)F
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOffset(F)F

    move-result v4

    add-float v5, v3, v4

    nop

    monitor-exit v0

    return v5

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPersonalizedOffsetList()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasPersonalizedAutoBrightnessControl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasUserDataPoints()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    if-eqz v0, :cond_0

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

.method public isChangedByUser0Lux()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    return v0
.end method

.method public isDefaultConfig()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadPoint(Ljava/lang/String;Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_5

    :try_start_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-boolean p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_4

    aget-object v4, v1, v3

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v12, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v9

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    move-object v6, v12

    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    sub-float/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_1

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v7, v7, v5

    if-gtz v7, :cond_3

    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "BrightnessMappingStrategy"

    const-string v7, "[PAB]Failed to load PAC point"

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "BrightnessMappingStrategy"

    const-string/jumbo v4, "hbm lux change. need reset"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :cond_5
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public resetPersonalAutoBrightness()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAutoBrightnessScaleFactor(I)Z
    .locals 9

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const-string v0, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutoBrightnessScaleFactor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_4

    cmpg-float v4, v0, v5

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    array-length v6, v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    nop

    :goto_0
    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    array-length v6, v6

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    aget v6, v6, v1

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v0

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    aget v7, v7, v1

    const/high16 v8, 0x43fa0000    # 500.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    const v7, 0x3da3d70a    # 0.08f

    add-float/2addr v6, v7

    mul-float v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float v6, v7, v2

    :cond_2
    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    aget v7, v7, v1

    const v8, 0x3f7d70a4    # 0.99f

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {v7, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    invoke-static {v1, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    goto :goto_2

    :cond_4
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    :goto_2
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/4 v1, 0x1

    return v1

    :cond_5
    const-string v2, "BrightnessMappingStrategy"

    const-string/jumbo v3, "invalid scale factor"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updatePacOffset()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mHbmLux:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
