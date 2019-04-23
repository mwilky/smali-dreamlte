.class public Lcom/android/systemui/infinity/GalaxyRenderer;
.super Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.source "GalaxyRenderer.java"

# interfaces
.implements Lcom/android/systemui/infinity/GalaxyRendererInterface;


# instance fields
.field private final IMAGE_RATIO:F

.field private final Z_STATIC_DISTANCE:F

.field backgroundScale:F

.field private backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

.field checkScale:F

.field public height:F

.field isPortrait:Z

.field public mAODBgOff:Z

.field public mContext:Landroid/content/Context;

.field private mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

.field public mRatio:F

.field mobileKeyboardScale:F

.field private particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

.field public particleTranslationX:F

.field public particleTranslationY:F

.field public particleTranslationZ:F

.field private final projectionMatrix:[F

.field scaleTriangle:F

.field private smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

.field private tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

.field private theme:Lcom/android/systemui/infinity/theme/ThemeInterface;

.field public trangleScale:F

.field public trangleTranslationX:F

.field public trangleTranslationY:F

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F

.field public width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/theme/ThemeInterface;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    const v1, 0x40333333    # 2.8f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->scaleTriangle:F

    const v1, 0x3f75c28f    # 0.96f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundScale:F

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mobileKeyboardScale:F

    const v0, 0x3ef913e8    # 0.48648f

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->IMAGE_RATIO:F

    const v0, -0x3feccccd    # -2.3f

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->Z_STATIC_DISTANCE:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->isPortrait:Z

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    const v0, 0x3f5eb852    # 0.87f

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleScale:F

    const v0, 0x3cf5c28f    # 0.03f

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleTranslationX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleTranslationY:F

    const v1, -0x41570a3d    # -0.33f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationX:F

    const v1, -0x41f0a3d7    # -0.14f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationY:F

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationZ:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mAODBgOff:Z

    iput-object p2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->theme:Lcom/android/systemui/infinity/theme/ThemeInterface;

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getTangramSystem()Lcom/android/systemui/infinity/tangram/TangramSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-interface {p2}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getParticleSystem()Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-interface {p2}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getHomeBackgroundSystem()Lcom/android/systemui/infinity/background/BackgroundSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-interface {p2}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getSmokeSystem()Lcom/android/systemui/infinity/smoke/SmokeSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getEasingHelper()Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    return-void
.end method

.method private drawBackground()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundScale:F

    iget v2, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    mul-float/2addr v2, v1

    move v3, v1

    move v4, v3

    const v5, 0x3ef913e8    # 0.48648f

    mul-float/2addr v5, v4

    div-float v6, v2, v5

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v9, 0x0

    const v10, -0x3feccccd    # -2.3f

    invoke-static {v7, v8, v9, v9, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    mul-float v9, v5, v6

    mul-float v10, v4, v6

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v12, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    iget-object v14, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    iget-object v8, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/background/BackgroundSystem;->draw([F)V

    return-void
.end method

.method private drawParticles()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    const v2, 0x3ef913e8    # 0.48648f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationX:F

    const v3, 0x3f99999a    # 1.2f

    add-float/2addr v0, v3

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-boolean v4, v4, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isRight:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationX:F

    add-float/2addr v3, v4

    neg-float v0, v3

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    iget v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v4, v0

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    iget v6, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationY:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v5, v6

    const/high16 v6, -0x3f600000    # -5.0f

    iget v7, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationZ:F

    add-float/2addr v6, v7

    invoke-static {v3, v1, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    iget v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v6, v7

    invoke-static {v3, v1, v4, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->draw([F[F[F)V

    return-void
.end method

.method private drawSmoke()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundScale:F

    iget v2, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    mul-float/2addr v2, v1

    move v3, v1

    move v4, v3

    const v5, 0x3ef913e8    # 0.48648f

    mul-float/2addr v5, v4

    div-float v6, v2, v5

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v9, 0x0

    const v10, -0x3feccccd    # -2.3f

    invoke-static {v7, v8, v9, v9, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    mul-float v9, v5, v6

    mul-float v10, v4, v6

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v12, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    iget-object v14, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v7, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    iget-object v8, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->draw([F)V

    return-void
.end method

.method private drawTriangle()V
    .locals 9

    iget v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->scaleTriangle:F

    iget v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mobileKeyboardScale:F

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    iget v7, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleTranslationX:F

    iget v8, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleTranslationY:F

    move v6, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/infinity/tangram/TangramSystem;->draw([F[F[FFFF)V

    return-void
.end method

.method private isMobileKeyboardCovered()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "GalaxyWallpaper"

    const-string v3, "mobileKeyboard is coverd"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public beginSensing()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->beginSensing()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->start()V

    :cond_0
    return-void
.end method

.method public hide(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;->hide(I)V

    return-void
.end method

.method public onAODBgOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mAODBgOff:Z

    return-void
.end method

.method public onAutoReset()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-boolean v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isRight:Z

    const-wide/16 v1, 0xa

    const/16 v3, 0xa

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v4, v4, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v3, v6

    int-to-float v3, v3

    add-float/2addr v5, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeAutoResetRotateValue(FFJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v4, v4, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v5, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeAutoResetRotateValue(FFJ)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mAODBgOff:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->setIndex(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showSmoke()V

    :cond_1
    return-void
.end method

.method protected onChangeGyroData([F)V
    .locals 3

    const/4 v0, 0x1

    aget v0, p1, v0

    iget-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->isPortrait:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    aget v0, p1, v1

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v1, v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setGyroMovement(F)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setCurrentGyroValue(F)V

    :cond_4
    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDeviceUnlocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->hide(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-boolean v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isRight:Z

    const-wide/16 v1, 0x7d0

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v4, v4, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeDeviceUnlockRotateValue(FFJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v4, v4, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    sub-float/2addr v5, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeDeviceUnlockRotateValue(FFJ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticleAlpha(FFJ)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticlePlusAlpha(FFJ)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateDegreeHome:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setMaxRotateDegreeValue(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makePaticleSmall()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->showHome()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawBackground()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawSmoke()V

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawTriangle()V

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawParticles()V

    return-void
.end method

.method public onFlick(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v2, v2, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    const/16 v3, 0xa

    mul-int/2addr v3, p1

    int-to-float v3, v3

    add-float/2addr v2, v3

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeFlickValue(FFJ)V

    return-void
.end method

.method public onScreenBlack()V
    .locals 2

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->pauseAnim()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->hideParticles()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->hide(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->hideAll()V

    return-void
.end method

.method public onScreenOff(Z)V
    .locals 7

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->pauseAnim()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->hide(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showSmoke()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-boolean v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isRight:Z

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v6, v6, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    add-float/2addr v6, v4

    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeOffRotateValue(FFJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v6, v6, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    sub-float/2addr v6, v4

    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeOffRotateValue(FFJ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makePaticleBig()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v2, v2, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    const v3, 0x3f4ccccd    # 0.8f

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticleAlpha(FFJ)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v2, v2, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticlePlusAlpha(FFJ)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v2, v2, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateDegreeAod:F

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setMaxRotateDegreeValue(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->hideAll()V

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mAODBgOff:Z

    return-void
.end method

.method public onScreenOn(Z)V
    .locals 6

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->startAnim()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->show(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateDegreeLock:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setMaxRotateDegreeValue(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-boolean v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isRight:Z

    const-wide/16 v1, 0x7d0

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v4, v4, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeOnRotateValue(FFJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v4, v4, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v5, v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    sub-float/2addr v5, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeOnRotateValue(FFJ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    const v2, 0x3f4ccccd    # 0.8f

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticleAlpha(FFJ)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticlePlusAlpha(FFJ)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->showLock()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makePaticleSmall()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    const-string v0, "GalaxyWallpaper"

    const-string/jumbo v1, "onSurfaceChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES30;->glViewport(IIII)V

    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->isPortrait:Z

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    const/high16 v1, 0x42340000    # 45.0f

    iget v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/systemui/infinity/common/MatrixHelper;->perspectiveM([FFFFF)V

    int-to-float v0, p2

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->width:F

    int-to-float v0, p3

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->height:F

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0, p2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticleSizeDegree(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mobileKeyboardScale:F

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mobileKeyboardScale:F

    :goto_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnable(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->onSurfaceCreated()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onSurfaceCreated()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->onSurfaceCreated()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->onSurfaceCreated()V

    return-void
.end method

.method public pauseSensing()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->pauseSensing()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setTargetValue(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setCurrentValue(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->pause()V

    :cond_0
    return-void
.end method

.method public requestDrawFrame()V
    .locals 1

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->doFrame()V

    return-void
.end method

.method public setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;->setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public setHomeParticleAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticleAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticlePlusAlpha(F)V

    return-void
.end method

.method public setLockParticleAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticleAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticlePlusAlpha(F)V

    return-void
.end method

.method public show(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;->show(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->show(Z)V

    :cond_0
    return-void
.end method
