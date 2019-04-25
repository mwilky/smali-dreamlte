.class Lcom/android/server/power/ShutdownThread$ExtractColor;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtractColor"
.end annotation


# static fields
.field static mDefaultColor:I

.field static mLimittedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    const/16 v1, 0x6e

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    const/16 v1, 0xc8

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mLimittedColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F
    .locals 23

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x3

    new-array v8, v0, [F

    new-array v9, v0, [F

    const/4 v0, 0x0

    move v10, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/high16 v13, 0x42c80000    # 100.0f

    if-le v11, v12, :cond_0

    int-to-float v14, v12

    :goto_0
    div-float/2addr v14, v13

    float-to-int v13, v14

    goto :goto_1

    :cond_0
    int-to-float v14, v11

    goto :goto_0

    :goto_1
    if-gtz v13, :cond_1

    const/4 v13, 0x1

    :cond_1
    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v17, v4

    move v4, v3

    move v3, v2

    move v2, v14

    :goto_2
    const/16 v18, 0x2

    const/16 v19, 0x1

    if-ge v2, v15, :cond_3

    move/from16 v20, v17

    move/from16 v17, v10

    move v10, v4

    move v4, v3

    move/from16 v3, v16

    :goto_3
    if-ge v3, v0, :cond_2

    move-object/from16 v1, p0

    move/from16 v21, v0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x0

    aget v22, v8, v0

    add-float v4, v4, v22

    aget v0, v8, v19

    add-float/2addr v10, v0

    aget v0, v8, v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-float v20, v20, v0

    add-int/lit8 v17, v17, 0x1

    add-int/2addr v3, v13

    move/from16 v0, v21

    move-object/from16 v1, p1

    goto :goto_3

    :catch_0
    move-exception v0

    move v2, v4

    move v3, v10

    move/from16 v10, v17

    move/from16 v4, v20

    goto :goto_4

    :cond_2
    move-object/from16 v1, p0

    move/from16 v21, v0

    add-int/2addr v2, v13

    move v3, v4

    move v4, v10

    move/from16 v10, v17

    move/from16 v17, v20

    move-object/from16 v1, p1

    goto :goto_2

    :cond_3
    move-object/from16 v1, p0

    move/from16 v21, v0

    int-to-float v0, v10

    div-float v0, v3, v0

    const/4 v2, 0x0

    :try_start_2
    aput v0, v9, v2

    int-to-float v0, v10

    div-float v0, v4, v0

    aput v0, v9, v19

    int-to-float v0, v10

    div-float v0, v17, v0

    aput v0, v9, v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v9

    :catch_1
    move-exception v0

    move v2, v3

    move v3, v4

    move/from16 v4, v17

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    :goto_4
    const-string v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultColor()I
    .locals 1

    sget v0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    return v0
.end method

.method public static setDefaultColor(I)V
    .locals 1

    sget v0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    if-eq p0, v0, :cond_0

    sput p0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    :cond_0
    return-void
.end method
