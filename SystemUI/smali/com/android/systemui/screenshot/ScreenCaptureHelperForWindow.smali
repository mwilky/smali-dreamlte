.class public Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;
.super Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.source "ScreenCaptureHelperForWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected initiallizeCaptureType()V
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mCaptureType:I

    return-void
.end method

.method protected initiallizeScreenshotVariable()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDegrees(Landroid/view/Display;)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "windowCapture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenWidth:I

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenHeight:I

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    move v6, v3

    move v7, v5

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int/2addr v10, v4

    iget v8, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v9, v6, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x43870000    # 270.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_2

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int/2addr v10, v5

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int/2addr v6, v3

    move v7, v2

    move v8, v4

    iget-object v9, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v7, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenNativeWidth:F

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenNativeHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getBuiltInDisplayId()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBuiltInDisplayId:I

    return-void
.end method

.method public isShowScreenshotAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
