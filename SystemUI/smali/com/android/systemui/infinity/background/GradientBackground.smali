.class public Lcom/android/systemui/infinity/background/GradientBackground;
.super Ljava/lang/Object;
.source "GradientBackground.java"


# static fields
.field private static final COLOR_COMPONENT_COUNT:I = 0x3

.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x14


# instance fields
.field private gridentData:[F

.field imageHeight:F

.field private inputColor:[[F

.field private inputPosition:[F

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method public constructor <init>([F[[FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x45390000    # 2960.0f

    iput v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->imageHeight:F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    invoke-virtual {p2}, [[F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    iput p3, p0, Lcom/android/systemui/infinity/background/GradientBackground;->imageHeight:F

    invoke-direct {p0}, Lcom/android/systemui/infinity/background/GradientBackground;->transformGrident()V

    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    iget-object v1, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    return-void
.end method

.method private transformGrident()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x5

    mul-int/2addr v1, v3

    const/4 v4, 0x6

    mul-int/2addr v1, v4

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    array-length v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v5, v6, :cond_0

    iget-object v6, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v9, v9, v5

    iget v10, v0, Lcom/android/systemui/infinity/background/GradientBackground;->imageHeight:F

    div-float/2addr v9, v10

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    aput v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_1
    iget-object v6, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v6, v6, v5

    move v8, v1

    :goto_2
    array-length v9, v6

    if-ge v8, v9, :cond_1

    iget-object v9, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v5

    iget-object v10, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v10, v10, v5

    aget v10, v10, v8

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_3
    iget-object v6, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    array-length v6, v6

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_a

    move v6, v1

    :goto_4
    if-ge v6, v4, :cond_9

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-nez v6, :cond_3

    const/4 v8, 0x0

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    add-int/lit8 v15, v5, 0x1

    aget v14, v14, v15

    iget-object v15, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v15, v15, v5

    add-float/2addr v14, v15

    div-float v9, v14, v7

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v14, v14, v1

    iget-object v15, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v16, v5, 0x1

    aget-object v15, v15, v16

    aget v15, v15, v1

    add-float/2addr v14, v15

    div-float v10, v14, v7

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v14, v14, v2

    iget-object v15, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v16, v5, 0x1

    aget-object v15, v15, v16

    aget v15, v15, v2

    add-float/2addr v14, v15

    div-float v11, v14, v7

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v14, v14, v13

    iget-object v15, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v16, v5, 0x1

    aget-object v15, v15, v16

    aget v13, v15, v13

    add-float/2addr v14, v13

    div-float v12, v14, v7

    goto/16 :goto_6

    :cond_3
    if-eq v6, v2, :cond_7

    if-ne v6, v3, :cond_4

    goto :goto_5

    :cond_4
    if-ne v6, v13, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    add-int/lit8 v15, v5, 0x1

    aget v9, v14, v15

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aget v10, v14, v1

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aget v11, v14, v2

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aget v12, v14, v13

    goto :goto_6

    :cond_5
    const/4 v14, 0x3

    if-ne v6, v14, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v9, v14, v5

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v10, v14, v1

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v11, v14, v2

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v12, v14, v13

    goto :goto_6

    :cond_6
    const/4 v14, 0x4

    if-ne v6, v14, :cond_8

    const/high16 v8, -0x40800000    # -1.0f

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v9, v14, v5

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v10, v14, v1

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v11, v14, v2

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v14, v14, v5

    aget v12, v14, v13

    goto :goto_6

    :cond_7
    :goto_5
    const/high16 v8, -0x40800000    # -1.0f

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    add-int/lit8 v15, v5, 0x1

    aget v9, v14, v15

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aget v10, v14, v1

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aget v11, v14, v2

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aget v12, v14, v13

    :cond_8
    :goto_6
    mul-int/lit8 v13, v6, 0x5

    mul-int/lit8 v14, v5, 0x6

    mul-int/2addr v14, v3

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    aput v8, v14, v13

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v15, v13, 0x1

    aput v9, v14, v15

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v15, v13, 0x2

    aput v10, v14, v15

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v15, v13, 0x3

    aput v11, v14, v15

    iget-object v14, v0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v15, v13, 0x4

    aput v12, v14, v15

    const-string v14, "color"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "color"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gridentData = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "color"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gridentData = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "color"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gridentData = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_a
    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/common/ColorShaderProgram;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->getColorAttributeLocation()I

    move-result v1

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public draw()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    const/4 v1, 0x6

    div-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x6

    invoke-static {v1, v3, v1}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
