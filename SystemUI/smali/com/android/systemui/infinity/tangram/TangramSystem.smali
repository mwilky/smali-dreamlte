.class public abstract Lcom/android/systemui/infinity/tangram/TangramSystem;
.super Ljava/lang/Object;
.source "TangramSystem.java"


# static fields
.field public static ONE_DIRECTION_TILT:Z


# instance fields
.field protected beforeTime:J

.field calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

.field context:Landroid/content/Context;

.field protected datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/tangram/TangramData;",
            ">;"
        }
    .end annotation
.end field

.field protected gyroMultiple:F

.field protected hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field protected hideingProgress:F

.field protected isLeft:Z

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field protected maxMoveDistance:F

.field protected maxMoveSpeed:F

.field protected now:J

.field protected overallAlpha:F

.field protected overallScale:F

.field protected plusTangramAlpha:F

.field protected plusXDirectionForInitAnimation:F

.field protected plusXDistanceForInitAnimation:F

.field protected rotateMaxBottom:F

.field protected rotateMaxTop:F

.field protected showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field protected showEasing:F

.field protected showingProgress:F

.field protected speedAcc:F

.field protected tagrams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/tangram/Tangram;",
            ">;"
        }
    .end annotation
.end field

.field protected tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

.field protected targetGyroValue:F

.field public term:F

.field protected textureMap:I

.field protected textureProgram:Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;

.field protected tiltEasing:F

.field protected vertexData:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ONE_DIRECTION_TILT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxTop:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxBottom:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->term:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveDistance:F

    const v1, 0x3b902de0    # 0.0044f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveSpeed:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showEasing:F

    const v1, 0x3db851ec    # 0.09f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tiltEasing:F

    const v1, 0x3fa66666    # 1.3f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->gyroMultiple:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->speedAcc:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->plusXDirectionForInitAnimation:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->plusXDistanceForInitAnimation:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->plusTangramAlpha:F

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tagrams:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->vertexData:[[F

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createCalculateHelper()Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    new-instance v1, Lcom/android/systemui/infinity/tangram/TangramSystem$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/tangram/TangramSystem$1;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;)Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/infinity/tangram/TangramSystem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->invalidate()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract calculateFrame()V
.end method

.method protected checkIsDoneShowing()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public draw([F[F[FFFF)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    move v1, v9

    :goto_0
    move v10, v1

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tagrams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tagrams:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v13, v12, Lcom/android/systemui/infinity/tangram/TangramData;->pivotX:F

    iget v1, v12, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v1, v14, v1

    iget v2, v12, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    mul-float v15, v1, v2

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->plusXDirectionForInitAnimation:F

    iget v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->plusXDistanceForInitAnimation:F

    mul-float/2addr v2, v3

    iget v3, v12, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v3, v14, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramData;->plusMoveX:F

    iget v1, v12, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget v2, v12, Lcom/android/systemui/infinity/tangram/TangramData;->plusMoveX:F

    add-float/2addr v1, v2

    iget v2, v12, Lcom/android/systemui/infinity/tangram/TangramData;->plusHideMoveX:F

    iget v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    mul-float/2addr v2, v3

    add-float v16, v1, v2

    iget v1, v12, Lcom/android/systemui/infinity/tangram/TangramData;->plusHideMoveY:F

    iget v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    mul-float v17, v1, v2

    nop

    iget v1, v12, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    mul-float v18, v1, v2

    invoke-static {v8, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v1, -0x3f400000    # -6.0f

    const/4 v6, 0x0

    invoke-static {v8, v9, v6, v6, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move/from16 v5, p4

    invoke-static {v8, v9, v5, v5, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {v8, v9, v13, v6, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object v1, v8

    move v3, v15

    move/from16 v5, v19

    move v14, v6

    move/from16 v6, v20

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    neg-float v1, v13

    invoke-static {v8, v9, v1, v14, v14}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v3, p3

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    iget v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move/from16 v6, p5

    move/from16 v5, p6

    invoke-static {v7, v9, v6, v5, v14}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->textureProgram:Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->useProgram()V

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->textureProgram:Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;

    iget v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->textureMap:I

    move-object v2, v7

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->setUniforms([FIFFF)V

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->textureProgram:Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;

    invoke-virtual {v11, v1}, Lcom/android/systemui/infinity/tangram/Tangram;->bindData(Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;)V

    invoke-virtual {v11}, Lcom/android/systemui/infinity/tangram/Tangram;->drawRect()V

    add-int/lit8 v1, v10, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public getLinearTargetPosition(FF)F
    .locals 3

    sub-float v0, p1, p2

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveSpeed:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveSpeed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    mul-float v0, v1, v2

    :cond_0
    add-float v1, p2, v0

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveDistance:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveDistance:F

    neg-float v1, v2

    :cond_1
    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveDistance:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveDistance:F

    :cond_2
    return v1
.end method

.method protected abstract getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
.end method

.method public hide(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->stop()V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    invoke-virtual {v1, v2, v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/tangram/TangramSystem$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/tangram/TangramSystem$3;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    invoke-direct {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->invalidate()V

    :goto_0
    return-void
.end method

.method protected makeTangramData()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->vertexData:[[F

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->vertexData:[[F

    aget-object v2, v2, v1

    new-instance v3, Lcom/android/systemui/infinity/tangram/TangramData;

    invoke-direct {v3, v1}, Lcom/android/systemui/infinity/tangram/TangramData;-><init>(I)V

    const/4 v4, 0x4

    aget v5, v2, v4

    iput v5, v3, Lcom/android/systemui/infinity/tangram/TangramData;->minX:F

    const/16 v5, 0x8

    aget v5, v2, v5

    iput v5, v3, Lcom/android/systemui/infinity/tangram/TangramData;->maxX:F

    iget v5, v3, Lcom/android/systemui/infinity/tangram/TangramData;->maxX:F

    iget v6, v3, Lcom/android/systemui/infinity/tangram/TangramData;->minX:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    iget v5, v3, Lcom/android/systemui/infinity/tangram/TangramData;->maxX:F

    iget v6, v3, Lcom/android/systemui/infinity/tangram/TangramData;->minX:F

    iput v6, v3, Lcom/android/systemui/infinity/tangram/TangramData;->maxX:F

    iput v5, v3, Lcom/android/systemui/infinity/tangram/TangramData;->minX:F

    :cond_0
    iget v5, v3, Lcom/android/systemui/infinity/tangram/TangramData;->maxX:F

    iget v6, v3, Lcom/android/systemui/infinity/tangram/TangramData;->minX:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, v3, Lcom/android/systemui/infinity/tangram/TangramData;->minX:F

    add-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/TangramData;->pivotX:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v7, 0x42700000    # 60.0f

    if-nez v5, :cond_1

    iput v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxTop:F

    iput v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxBottom:F

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxTop:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    iput v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxTop:F

    iput v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxBottom:F

    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxTop:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->rotateMaxBottom:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    if-ne v5, v4, :cond_5

    iput v7, v3, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    iput v7, v3, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected moveLeft()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    if-ne v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    nop

    :goto_3
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_4
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    nop

    :goto_6
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_7

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v4

    iput v4, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_7

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_7
    add-int/lit8 v1, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_8
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v4

    iput v4, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_9

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_9
    return-void
.end method

.method protected moveProgress()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    if-ne v0, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v2, v1, v2

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v1, v5, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    nop

    :goto_3
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v1, v4, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    :cond_6
    :goto_4
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    nop

    :goto_6
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_a

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    iput v5, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v5, v1, v5

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v8, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v8, v8, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    :cond_9
    :goto_7
    add-int/lit8 v1, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_8
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    iput v5, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v5, v1, v5

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v8, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v8, v8, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    :cond_c
    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_d
    return-void
.end method

.method protected moveRight()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_3
    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v3

    iput v3, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr v0, v2

    :goto_6
    if-ltz v0, :cond_7

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v3, v1

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v4

    iput v4, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_7

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v7, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v1

    :goto_8
    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v1

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getLinearTargetPosition(FF)F

    move-result v3

    iput v3, v2, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    goto :goto_9

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    sub-float v3, v2, v3

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/TangramData;

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    iget-object v6, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/infinity/tangram/TangramData;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->makeTangramData()V

    new-instance v0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->textureProgram:Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Lcom/android/systemui/infinity/tangram/Tangram;-><init>([F)V

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tagrams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapId:I

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/common/TextureHelper;->loadTexture(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->textureMap:I

    return-void
.end method

.method public setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public setGyroMovement(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->checkIsDoneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->gyroMultiple:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    :cond_1
    return-void
.end method

.method public setTangramEasing(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramData;

    iput p1, v1, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTiltOption(FFFFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveDistance:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->maxMoveSpeed:F

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showEasing:F

    iput p4, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tiltEasing:F

    iput p5, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->gyroMultiple:F

    return-void
.end method

.method public show(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->start()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/TangramData;->plusMoveX:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/TangramData;->currentAlpha:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/TangramData;->currentPosition:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    invoke-virtual {v0, v2, v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/tangram/TangramSystem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/tangram/TangramSystem$2;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    invoke-direct {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->invalidate()V

    :goto_1
    return-void
.end method
