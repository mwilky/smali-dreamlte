.class Lcom/android/server/am/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchParams"
.end annotation


# instance fields
.field final mBounds:Landroid/graphics/Rect;

.field mBoundsResult:I

.field mIsFullscreenBounds:Z

.field mPreferredDisplayId:I

.field mPreferredDisplayIdResult:I

.field mWindowingMode:I

.field mWindowingModeResult:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBoundsResult:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayIdResult:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingModeResult:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iget v4, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v4, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    iget-boolean v4, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v3, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method hasPreferredDisplay()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasWindowingMode()Z
    .locals 1

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v1, v0

    return v1
.end method

.method isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput-boolean v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBoundsResult:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayIdResult:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingModeResult:I

    return-void
.end method

.method set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iget v0, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-boolean v0, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    iput-boolean v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    return-void
.end method

.method public setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z
    .locals 3

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBoundsResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mIsFullscreenBounds:Z

    iget-object v2, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p2, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBoundsResult:I

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredDisplayIdIfPossible(II)Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayIdResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iput p2, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayIdResult:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setWindowingModeIfPossible(II)Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingModeResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput p2, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingModeResult:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
