.class public Lcom/android/server/am/DexCompatController;
.super Ljava/lang/Object;
.source "DexCompatController.java"


# static fields
.field public static final DEBUG_DEX_COMPAT:Z = false

.field private static final TAG:Ljava/lang/String; = "DexCompatController"


# instance fields
.field private final mDecorCaptionHeight:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexCompatTaskDefaultSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mDecorCaptionHeight:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iput-object p1, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private getCompatBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->convertToConfigurationOrientation(I)I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/DexCompatController;->getOrientationFromTaskBounds(Lcom/android/server/am/TaskRecord;)I

    move-result v4

    :cond_1
    iget v5, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v5, "DexCompatController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCompatBounds: Illegal UiMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    if-ne v4, v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/DexCompatController;->getDexScreenSizeLocked()Landroid/graphics/Point;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v6, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    mul-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    add-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v0, v7, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_1
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    if-eqz v5, :cond_5

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ne v4, v6, :cond_3

    invoke-virtual {v0, v7, v7, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v7, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    goto :goto_1

    :pswitch_2
    if-ne v4, v6, :cond_4

    invoke-virtual {v0, v7, v7, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7, v7, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    nop

    :cond_5
    :goto_1
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mDecorCaptionHeight:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_6
    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDexScreenSizeLocked()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplaySizeLocked()Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getBaseDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private getOrientationFromTaskBounds(Lcom/android/server/am/TaskRecord;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    if-eqz v2, :cond_3

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_5

    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_6

    const/4 v0, 0x2

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    nop

    :cond_7
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTopCompatActivityLocked(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_8

    if-nez v1, :cond_2

    goto :goto_5

    :cond_2
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    if-ltz v8, :cond_6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_4

    :cond_3
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    :goto_3
    if-ltz v10, :cond_5

    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-boolean v12, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_4

    return-object v11

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_7
    return-object v2

    :cond_8
    :goto_5
    return-object v2
.end method


# virtual methods
.method applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_8

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/android/server/am/DexCompatController;->getTopCompatActivityLocked(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-ne v8, v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v7, :cond_3

    const/4 v3, 0x2

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/res/Configuration;->updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v9

    if-ne v9, v7, :cond_5

    const/4 v8, 0x2

    :cond_5
    iget-object v9, v0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    if-eqz v9, :cond_7

    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    iget-object v10, v0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v11, v9, Landroid/graphics/Point;->x:I

    iget v12, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    :cond_6
    iget-object v10, v0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v11, v9, Landroid/graphics/Point;->y:I

    iget v12, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    :cond_7
    :goto_2
    iget-object v10, v0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v10, v11

    int-to-float v10, v10

    const v11, 0x3bcccccd    # 0.00625f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v12, v0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget v13, v1, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v11, v12

    iget v12, v1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v12}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v10, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v11, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v14, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v12, v13, v14}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v7

    iput v7, v1, Landroid/content/res/Configuration;->screenLayout:I

    :goto_3
    const/4 v7, 0x2

    iput v7, v1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "DexCompatController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DexCompat] applyDexCompatConfigurationLocked: outConfig="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", candidate="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move-object/from16 v9, p4

    :goto_4
    return-void
.end method

.method getCompatBounds(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/DexCompatController;->getCompatBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;ILcom/android/server/am/ActivityRecord;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    if-nez p3, :cond_0

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isDexMode()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const-class v2, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_3

    invoke-virtual {v2, p1, v5}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    move v0, v4

    nop

    :cond_2
    return v0

    :cond_3
    iget v6, p3, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    if-nez v6, :cond_4

    invoke-virtual {v2, p1, v5}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v5

    iput v5, p3, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    :cond_4
    iget v3, p3, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    iget-object v5, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_6

    iget v5, p3, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    :cond_6
    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_7

    move v0, v4

    nop

    :cond_7
    return v0

    :cond_8
    return v0
.end method

.method isOrientationChangedLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    if-eqz v2, :cond_0

    if-eq v2, p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->convertToConfigurationOrientation(I)I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v8, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v6, v8, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x2

    :goto_2
    nop

    if-eq v6, v5, :cond_5

    move v1, v7

    nop

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v1

    :cond_7
    return v1
.end method

.method loadResources(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiDisplayManagerService;->getResources(I)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mDecorCaptionHeight:Landroid/util/SparseArray;

    const v2, 0x105017a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    new-instance v2, Landroid/graphics/Point;

    const v3, 0x1050093

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x1050092

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    new-instance v2, Landroid/graphics/Point;

    const v3, 0x105008f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x105008e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method rotateCompatTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/DexCompatController;->getCompatBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/DexCompatController;->getDexScreenSizeLocked()Landroid/graphics/Point;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v3, Landroid/graphics/Rect;->left:I

    if-gez v9, :cond_3

    iget v9, v3, Landroid/graphics/Rect;->left:I

    neg-int v7, v9

    goto :goto_0

    :cond_3
    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_4

    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v9, v10

    :cond_4
    :goto_0
    iget v9, v3, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_5

    iget v9, v3, Landroid/graphics/Rect;->top:I

    neg-int v8, v9

    goto :goto_1

    :cond_5
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_6

    iget v9, v4, Landroid/graphics/Point;->y:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v9, v10

    :cond_6
    :goto_1
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    :cond_7
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "DexCompatController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DexCompat] rotateFreeformTask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_2

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v4

    :cond_9
    :goto_2
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method toggleFullscreenModeLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v15, p2

    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    iget-boolean v0, v0, Lcom/android/server/am/FreeformController;->mIsForcedResized:Z

    if-nez v0, :cond_0

    const-string v0, "DexCompatController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleFullscreenModeLocked: labs off, r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p1

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v14, p1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_1

    return-void

    :cond_1
    const-string/jumbo v18, "toggleDexCompatFullscreenMode"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v11

    const/4 v0, -0x1

    if-ne v11, v0, :cond_2

    const-string v0, "DexCompatController"

    const-string v2, "Display is not invalid."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v10, v15, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    iget v9, v15, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget v8, v15, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v7, v15, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    iget-object v6, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v0, 0x100000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_3
    new-instance v13, Lcom/android/server/am/SafeActivityOptions;

    invoke-direct {v13, v5}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v3, "toggleDexCompatFullscreenMode"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x1

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v5, v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v3, "toggleDexCompatFullscreenMode"

    invoke-virtual {v0, v2, v5, v4, v3}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v22, v12

    goto/16 :goto_1

    :cond_4
    :goto_0
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string/jumbo v24, "toggleDexCompatFullscreenMode"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v25, 0x0

    move v3, v9

    move/from16 v4, v20

    move/from16 v5, v19

    move-object/from16 v26, v6

    move-object v6, v7

    move-object/from16 v27, v7

    move-object/from16 v7, v26

    move/from16 v28, v8

    move-object v8, v0

    move/from16 v29, v9

    move-object/from16 v9, v16

    move/from16 v30, v10

    move-object/from16 v10, v17

    move/from16 v31, v11

    move/from16 v11, v22

    move-object/from16 v22, v12

    move/from16 v12, v23

    move/from16 v14, v28

    move-object/from16 v15, p2

    move-object/from16 v16, v24

    move/from16 v17, v25

    :try_start_4
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, v1, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v22, v12

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v22, v12

    :goto_1
    iget-object v2, v1, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "DexCompatController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", DesktopModeService is null, caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    iput v1, p1, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    const-string v2, "DexCompatController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " LaunchPolicy=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ResizeableMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
