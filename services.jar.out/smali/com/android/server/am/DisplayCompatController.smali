.class public Lcom/android/server/am/DisplayCompatController;
.super Ljava/lang/Object;
.source "DisplayCompatController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SUPPORT_STABLE_INSET:Z = false

.field private static final TAG:Ljava/lang/String; = "DisplayCompatController"


# instance fields
.field private final mPreservedConfiguration:Landroid/content/res/Configuration;

.field private final mPreservedDisplayRealSize:Landroid/graphics/Point;

.field private mRotationToStableInsets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedDisplayRealSize:Landroid/graphics/Point;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DisplayCompatController;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/DisplayCompatController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method

.method private isDisplayCompatModeAvailable(Lcom/android/server/am/TaskRecord;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->inMultiWindowMode()Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandard()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/am/MultiDisplayManagerService;->isGamePackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v3, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    move v1, v4

    nop

    :cond_2
    return v1
.end method

.method private updatePreservedConfiguration()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->screenLayout:I

    iput v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v3, 0x2

    iput v3, v2, Landroid/app/WindowConfiguration;->mDisplayCompatMode:I

    iget-object v2, v0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedDisplayRealSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-string v2, "DisplayCompatController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePreservedConfiguration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method clearDisplayCompatMode(Lcom/android/server/am/TaskRecord;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    const-string v0, "DisplayCompatController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDisplayCompatMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method computeBoundsAndConfigurationIfNeeded(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;)Z
    .locals 13

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mDisplayCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/WindowConfiguration;->mDisplayCompatMode:I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isMainBuiltInDisplayActivated()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget-object v6, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedDisplayRealSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedDisplayRealSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedDisplayRealSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedDisplayRealSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v9, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float/2addr v9, v10

    if-ne v5, v2, :cond_1

    iget-object v10, p0, Lcom/android/server/am/DisplayCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v4, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/server/am/DisplayCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v4, v4, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v4, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v10, p0, Lcom/android/server/am/DisplayCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v10, p0, Lcom/android/server/am/DisplayCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/am/DisplayCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-int v4, v4

    iget-object v10, p0, Lcom/android/server/am/DisplayCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    float-to-int v10, v10

    iput v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v10, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v8, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v11, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    iput v11, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v11, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v12, 0x2

    iput v12, v11, Landroid/app/WindowConfiguration;->mDisplayCompatMode:I

    iget-object v11, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v2

    :cond_2
    :goto_1
    return v4
.end method

.method getDisplayChangeAbility(Lcom/android/server/am/TaskRecord;)I
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/am/MultiDisplayManagerService;->isGamePackage(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v8

    const/4 v9, 0x4

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandard()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, p1, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    const/4 v4, 0x3

    goto :goto_3

    :cond_4
    if-eqz v8, :cond_5

    nop

    move v4, v9

    goto :goto_3

    :cond_5
    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    nop

    move v5, v9

    nop

    :cond_7
    move v4, v5

    :goto_3
    nop

    return v4

    :cond_8
    :goto_4
    return v2
.end method

.method hasDisplayCompatConfiguration(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mDisplayCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v0, v0, Landroid/app/WindowConfiguration;->mDisplayCompatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isMainBuiltInDisplayActivated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/DisplayCompatController;->updatePreservedConfiguration()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCompatController{ mPreservedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPreservedDisplayRealSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DisplayCompatController;->mPreservedDisplayRealSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayCompatMode(Lcom/android/server/am/TaskRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/DisplayCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isMainBuiltInDisplayActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/DisplayCompatController;->isDisplayCompatModeAvailable(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    iget-boolean v1, p1, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p1, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    const-string v1, "DisplayCompatController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDisplayCompatMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method updateOverrideConfigurationIfNeeded(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mDisplayCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v1, v1, Landroid/app/WindowConfiguration;->mDisplayCompatMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v2, "DisplayCompatController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOverrideConfigurationIfNeeded: changes=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
