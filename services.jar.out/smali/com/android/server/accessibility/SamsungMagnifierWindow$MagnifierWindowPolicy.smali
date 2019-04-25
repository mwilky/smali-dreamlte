.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MagnifierWindowPolicy"
.end annotation


# static fields
.field private static final BORDER_SIZE_DP:F = 4.0f

.field public static mDeviceType:Ljava/lang/String;


# instance fields
.field private WINDOW_SIZE_TABLE_HEIGHT:[I

.field private WINDOW_SIZE_TABLE_WIDTH:[I

.field private mBorderSize:I

.field private mButtonBottomMargin:I

.field private mButtonHeight:I

.field private mButtonIconSize:I

.field private mButtonTopMargin:I

.field private mButtonWidth:I

.field private mCloseBoundOnScreen:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mControlButtonType:I

.field private mDefaultDisplayHeight:I

.field private mDisplaySizeValue:Ljava/lang/String;

.field private mFrameWidthHeight:I

.field private mHasSoftwareNaviBar:Z

.field private mHorizontalFocusLock:I

.field private mHorizontalLockButtonRect:Landroid/graphics/Rect;

.field private mIsMovingMode:Z

.field private mLeftSideTouchOnFrame:Landroid/graphics/Rect;

.field private mLowerSideTouchOnFrame:Landroid/graphics/Rect;

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMovingStarted_X:F

.field private mMovingStarted_Y:F

.field private mOrientation:I

.field private mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

.field private mRightSideTouchOnFrame:Landroid/graphics/Rect;

.field private mScale:F

.field private mUpperLeftSideWithoutController:Landroid/graphics/Rect;

.field private mUpperRightSideWithoutController:Landroid/graphics/Rect;

.field private mUpperSideTouchOnFrame:Landroid/graphics/Rect;

.field private mWindowBoundOnScreen:Landroid/graphics/Rect;

.field private mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

.field private mWindowSize:I

.field private mWindowSizeButtonRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonTopMargin:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonIconSize:I

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mControlButtonType:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHasSoftwareNaviBar:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->offsetY:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonTopMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonIconSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHasSoftwareNaviBar:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;Z)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBorderSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    return v0
.end method

.method public getControlButtonType()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mControlButtonType:I

    return v0
.end method

.method public getHorizontalFocusLock()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    return v0
.end method

.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMaxWindowSizeHeight()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWindowSizeWidth()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMovingStartedX()F
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    return v0
.end method

.method public getMovingStartedY()F
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return v0
.end method

.method public getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    return v0
.end method

.method public getWindowBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    return v0
.end method

.method public getWindowSizeHeight()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSizeWidth()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Z)Z
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "display_size_forced"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init: isChangedResolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", new orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "init: But orientation or screen size are not changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1700()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1600()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDisplayMetrics : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1600()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1900()Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1802(Landroid/view/DisplayInfo;)Landroid/view/DisplayInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1600()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1600()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1600()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    float-to-int v8, v7

    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    nop

    :goto_1
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ge v5, v8, :cond_5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050165

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105015f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    goto :goto_2

    :cond_2
    if-ne v5, v9, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050164

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105015e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050163

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105015d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    mul-float v9, v6, v3

    float-to-int v9, v9

    aput v9, v8, v5

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    mul-float v9, v7, v4

    float-to-int v9, v9

    aput v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v8, 0x0

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v8, v8, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v5, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    goto :goto_4

    :cond_7
    :goto_3
    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v6, v5

    div-float v5, v7, v5

    invoke-virtual {p0, v8, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    :goto_4
    return v9
.end method

.method public isChangedFollowDisplayHeight()Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1600()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMovingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    return v0
.end method

.method public isOnCloseBtn(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnControllerSide(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

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

.method public isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnLeftSide(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnLowerSide(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindow(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

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

.method public isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnRightSide(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperLeftSideWithoutController(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperRightSideWithoutController(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperSide(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setControlButtonType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mControlButtonType:I

    return-void
.end method

.method public setHorizontalFocusLock(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMovingMode(ZFF)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return-void
.end method

.method public setScale(F)Z
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWindowSize(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateBoundOnScreen()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    mul-int/lit8 v6, v6, 0x5

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/view/DisplayInfo;

    move-result-object v7

    iget v7, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v8, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2000()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    iget-boolean v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHasSoftwareNaviBar:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    if-ne v10, v11, :cond_1

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2100()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2200()I

    move-result v10

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2300()I

    move-result v10

    :goto_0
    move v9, v10

    :cond_1
    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    if-ne v10, v11, :cond_2

    sub-int/2addr v8, v9

    :cond_2
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2400()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

    move-result v10

    sub-int/2addr v8, v10

    :cond_3
    iput v8, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iget-object v11, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v11, v11, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v11, v11

    sub-int/2addr v11, v9

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v12, v12

    add-int/2addr v12, v9

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v13, v13, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v13, v13

    sub-int/2addr v13, v10

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v14, v14, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v14, v14

    add-int/2addr v14, v10

    if-gez v11, :cond_4

    const/4 v1, 0x0

    sub-int v3, v12, v11

    goto :goto_1

    :cond_4
    if-le v12, v7, :cond_5

    move v3, v7

    sub-int v15, v12, v7

    sub-int v1, v11, v15

    goto :goto_1

    :cond_5
    move v1, v11

    move v3, v12

    :goto_1
    if-gez v13, :cond_6

    const/4 v2, 0x0

    sub-int v4, v14, v13

    goto :goto_2

    :cond_6
    if-le v14, v8, :cond_7

    move v4, v8

    sub-int v15, v14, v8

    sub-int v2, v13, v15

    goto :goto_2

    :cond_7
    move v2, v13

    move v4, v14

    :goto_2
    add-int v15, v1, v3

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v6, 0x2

    move/from16 v17, v9

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move/from16 v18, v10

    sub-int v10, v1, v6

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    sub-int v10, v2, v6

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    add-int v10, v3, v6

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    add-int v10, v4, v6

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    add-int v10, v1, v5

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    add-int v10, v2, v5

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    sub-int v10, v3, v5

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    sub-int v10, v4, v5

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v9, 0x0

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    if-ge v2, v10, :cond_8

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v9, v10, v2

    :cond_8
    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isRTL(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move/from16 v19, v5

    iget v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    iput v5, v10, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v10, v2, v10

    add-int/2addr v10, v9

    iput v10, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v6

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v10, v6

    iput v10, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v15, v6

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    sub-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v15, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_9
    move/from16 v19, v5

    move/from16 v20, v6

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v15

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v15, v6

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    sub-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v15, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v4, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v4, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v1, v16

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v1, v16

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v3, v16

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v3, v16

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    sub-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v15, v6

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    sub-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    add-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v15

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    sub-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    add-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    mul-float/2addr v1, v10

    div-float/2addr v6, v1

    float-to-int v1, v6

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v6, v6, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v10, v10, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v10, v10

    add-int/2addr v10, v5

    iget-object v11, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v11, v11, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v11, v11

    sub-int/2addr v11, v1

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v12, v12

    add-int/2addr v12, v1

    if-gez v6, :cond_a

    const/4 v13, 0x0

    sub-int v3, v10, v6

    goto :goto_4

    :cond_a
    if-le v10, v7, :cond_b

    move v3, v7

    sub-int v13, v10, v7

    sub-int v13, v6, v13

    goto :goto_4

    :cond_b
    move v13, v6

    move v3, v10

    :goto_4
    if-gez v11, :cond_c

    const/4 v2, 0x0

    sub-int v4, v12, v11

    goto :goto_5

    :cond_c
    if-le v12, v8, :cond_d

    move v4, v8

    sub-int v14, v12, v8

    sub-int v2, v11, v14

    goto :goto_5

    :cond_d
    move v2, v11

    move v4, v12

    :goto_5
    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v13, v14, Landroid/graphics/Rect;->left:I

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v2, v14, Landroid/graphics/Rect;->top:I

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v3, v14, Landroid/graphics/Rect;->right:I

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v4, v14, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public updateMagnificationSpec(FF)V
    .locals 3

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    :goto_0
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_1

    :cond_2
    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    return-void
.end method
