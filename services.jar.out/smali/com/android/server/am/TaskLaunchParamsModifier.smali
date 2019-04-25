.class Lcom/android/server/am/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;
    }
.end annotation


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MAX_BOUNDS_CONFLICT_COUNT:I = 0xc8

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final SHIFT_POLICY_TOPTASK_DIAGONAL_DOWN:I = 0x4

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private mDefaultFreeformStepHorizontal:I

.field private mDefaultFreeformStepVertical:I

.field mDensityConverter:F

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDensityConverter:F

    iput-object p1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/TaskLaunchParamsModifier;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/TaskLaunchParamsModifier;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->getRecentTaskBound(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILcom/android/server/am/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILcom/android/server/am/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static findBoundsConflictTasks(Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDexBounds(Lcom/android/server/am/TaskRecord;ILandroid/graphics/Rect;)I
    .locals 7

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->getRecentTaskBound(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, v4, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-nez v4, :cond_3

    iget v4, v3, Landroid/graphics/Point;->y:I

    if-nez v4, :cond_3

    return v1

    :cond_2
    const/16 v1, 0x3c0

    const/16 v5, 0x2d0

    invoke-virtual {p3, v4, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    const/4 v1, 0x2

    return v1
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_0

    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDensityConverter:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    :cond_1
    return v0
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v1, :cond_0

    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDensityConverter:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    :cond_1
    return v0
.end method

.method static getFreeformHeight(Landroid/graphics/Rect;)I
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const v4, 0x3f2b851f    # 0.67f

    :goto_1
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-eqz v5, :cond_2

    move v4, v3

    :cond_2
    int-to-float v3, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method static getFreeformStartLeft(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method static getFreeformStartTop(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method private getFreeformTasks(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getFreeformWidth(Landroid/graphics/Rect;)I
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_1

    const v4, 0x3f2b851f    # 0.67f

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-eqz v5, :cond_2

    move v4, v3

    :cond_2
    int-to-float v3, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method static getHorizontalStep(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getRecentTaskBound(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 9

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget v4, v3, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    if-eq v4, v5, :cond_3

    iget v4, v3, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_5
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_6

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    :cond_6
    :goto_1
    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    goto :goto_0

    :cond_8
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeform()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_0

    :cond_9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRecentTaskBound: task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", recent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", bounds="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", Callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v2

    :cond_b
    const/4 v2, 0x0

    return-object v2
.end method

.method static getVerticalStep(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isUsedPosition(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private offestToCenterPosition(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method private position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "ZI",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p5, v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v3, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v3, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-direct {p0, p3}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedToRightFar(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedToBottomFar(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v5, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_3
    invoke-static {p3, v2, v4}, Lcom/android/server/am/TaskLaunchParamsModifier;->findBoundsConflictTasks(Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0, p3, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->isUsedPosition(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-direct {p0, p3}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedToRightFar(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedToBottomFar(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v5, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_6
    invoke-virtual {p6, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    nop

    :goto_3
    invoke-static {p3, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez p4, :cond_8

    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_8
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_b

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v3

    if-gt v2, v3, :cond_a

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v3

    if-le v2, v3, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xc8

    if-le v0, v3, :cond_c

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, proposal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mTmpOriginal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", allowRestart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", restarted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mAvailableRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultFreeformStepHorizontal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultFreeformStepVertical="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p3, v0, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, adjusted proposal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", break!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v0, v2

    goto :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_3

    :cond_d
    :goto_4
    invoke-virtual {p6, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILcom/android/server/am/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Lcom/android/server/am/LaunchParamsController$LaunchParams;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v0

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, p3

    const/4 v3, 0x2

    div-int/lit8 v8, v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, v0, p4

    div-int/lit8 v9, v0, 0x2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    add-int v1, v8, p3

    add-int v2, v9, p4

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v10

    const/4 v0, 0x1

    if-eq v10, v0, :cond_2

    if-ne v10, v3, :cond_0

    move-object/from16 v11, p5

    iget v0, v11, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p5

    :cond_1
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void

    :cond_2
    move-object/from16 v11, p5

    :goto_0
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->offestToCenterPosition(Landroid/graphics/Rect;)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 4

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getHorizontalStep(Landroid/graphics/Rect;)I

    move-result v0

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getVerticalStep(Landroid/graphics/Rect;)I

    move-result v1

    iget v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    iget v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_0
    neg-int v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedToBottomFar(Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shiftedToRightFar(Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2

    goto :goto_0

    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    const/4 v0, 0x0

    if-eqz v11, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService;->isDeXDisabledFromStandAlone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget v1, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v1, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iget-object v2, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiDisplayManagerService;->getResources(I)Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050225

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    const v4, 0x1050224

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v8, 0x1

    const/4 v15, 0x2

    if-eq v2, v3, :cond_5

    iget-object v2, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v2

    if-ne v2, v15, :cond_3

    iget v4, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v4, v15, :cond_4

    :cond_3
    if-ne v2, v8, :cond_5

    :cond_4
    iget v4, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-direct {v10, v4}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformTasks(I)Ljava/util/ArrayList;

    move-result-object v1

    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    move-object v2, v9

    goto :goto_1

    :cond_6
    invoke-direct {v10, v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformTasks(I)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    :goto_1
    iget-object v1, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v4, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v4}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v1

    const/4 v1, 0x0

    move v4, v15

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_0
    iget v0, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eq v0, v3, :cond_a

    :try_start_1
    iget-object v0, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    if-ne v0, v15, :cond_7

    iget v3, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v3, v15, :cond_8

    :cond_7
    if-ne v0, v8, :cond_a

    :cond_8
    iget v3, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-direct {v10, v11, v3, v7}, Lcom/android/server/am/TaskLaunchParamsModifier;->getDexBounds(Lcom/android/server/am/TaskRecord;ILandroid/graphics/Rect;)I

    move-result v3

    move v4, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    if-ne v4, v8, :cond_9

    nop

    invoke-virtual {v14, v7, v4, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z

    return v4

    :cond_9
    :try_start_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    move v5, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v7

    move-object/from16 v16, v9

    :goto_2
    move-object v3, v14

    goto/16 :goto_9

    :cond_a
    :goto_3
    move v3, v4

    move v4, v1

    if-lez v5, :cond_c

    if-gtz v6, :cond_b

    goto :goto_4

    :cond_b
    move v0, v5

    move v15, v6

    goto :goto_6

    :cond_c
    :goto_4
    if-eqz v12, :cond_e

    :try_start_3
    iget-object v0, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v15, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v15

    int-to-float v8, v15

    iget v15, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v15, v15

    div-float/2addr v15, v8

    iput v15, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mDensityConverter:F

    :cond_d
    iget-object v0, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {v10, v12, v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {v10, v12, v1}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move v1, v4

    move-object v5, v7

    move-object/from16 v16, v9

    move v4, v3

    goto :goto_2

    :cond_e
    :try_start_4
    iget-object v0, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    :goto_5
    move v15, v1

    :goto_6
    if-nez v12, :cond_f

    :try_start_5
    iget-object v5, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v1, v10

    move v8, v3

    move-object v3, v5

    move v6, v4

    move v4, v0

    move v5, v15

    move v11, v6

    move-object v6, v13

    move-object/from16 v17, v7

    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILcom/android/server/am/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v1, v17

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_7
    invoke-virtual {v14, v1, v4, v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    nop

    invoke-virtual {v14, v1, v8, v11}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z

    const/4 v3, 0x2

    return v3

    :catchall_2
    move-exception v0

    move-object v5, v1

    move v4, v8

    move-object/from16 v16, v9

    move v1, v11

    goto :goto_2

    :catchall_3
    move-exception v0

    move v4, v8

    move-object/from16 v16, v9

    move v1, v11

    move-object v3, v14

    move-object/from16 v5, v17

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    move v8, v3

    move v11, v4

    move-object v5, v7

    move v4, v8

    move-object/from16 v16, v9

    move v1, v11

    move-object v3, v14

    goto/16 :goto_9

    :cond_f
    move v8, v3

    move v11, v4

    move-object v1, v7

    :try_start_8
    iget v3, v12, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v7, v3, 0x70

    iget v3, v12, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    and-int/lit8 v6, v3, 0x7

    const/16 v3, 0x30

    const/4 v4, 0x5

    if-ne v7, v3, :cond_11

    if-ne v6, v4, :cond_10

    :try_start_9
    iget-object v5, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object v3, v10

    move-object v4, v2

    move/from16 v18, v11

    move v11, v6

    move v6, v0

    move v14, v7

    move v7, v15

    move/from16 v19, v8

    move-object v8, v1

    :try_start_a
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_7
    move-object/from16 v16, v9

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    move/from16 v19, v8

    move/from16 v18, v11

    move-object v5, v1

    move-object/from16 v16, v9

    move-object v3, v14

    move/from16 v1, v18

    move/from16 v4, v19

    goto/16 :goto_9

    :cond_10
    move v14, v7

    move/from16 v19, v8

    move/from16 v18, v11

    move v11, v6

    iget-object v5, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v3, v10

    move-object v4, v2

    move v6, v0

    move v7, v15

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v5, v1

    move-object/from16 v16, v9

    move/from16 v1, v18

    move/from16 v4, v19

    move-object/from16 v3, p7

    goto/16 :goto_9

    :cond_11
    move v14, v7

    move/from16 v19, v8

    move/from16 v18, v11

    move v11, v6

    const/16 v3, 0x50

    if-ne v14, v3, :cond_13

    if-ne v11, v4, :cond_12

    iget-object v5, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v3, v10

    move-object v4, v2

    move v6, v0

    move v7, v15

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_7

    :cond_12
    iget-object v5, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v3, v10

    move-object v4, v2

    move v6, v0

    move v7, v15

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_7

    :cond_13
    :try_start_b
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unsupported gravity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", positioning in the center instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v10, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object v3, v10

    move-object v4, v2

    move v6, v0

    move v7, v15

    move-object v8, v13

    move-object/from16 v16, v9

    move-object v9, v1

    :try_start_c
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILcom/android/server/am/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :goto_8
    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v3, p7

    invoke-virtual {v3, v1, v5, v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z

    nop

    const/4 v0, 0x2

    return v0

    :catchall_7
    move-exception v0

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v3, p7

    move/from16 v20, v5

    move-object v5, v1

    move v1, v4

    move/from16 v4, v20

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object/from16 v16, v9

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v3, p7

    move/from16 v20, v5

    move-object v5, v1

    move v1, v4

    move/from16 v4, v20

    goto :goto_9

    :catchall_9
    move-exception v0

    move v5, v8

    move-object/from16 v16, v9

    move v4, v11

    move-object v3, v14

    move/from16 v20, v5

    move-object v5, v1

    move v1, v4

    move/from16 v4, v20

    goto :goto_9

    :catchall_a
    move-exception v0

    move v5, v3

    move-object/from16 v16, v9

    move-object v3, v14

    move v1, v4

    move v4, v5

    move-object v5, v7

    goto :goto_9

    :catchall_b
    move-exception v0

    move-object v5, v7

    move-object/from16 v16, v9

    move-object v3, v14

    :goto_9
    invoke-virtual {v3, v5, v4, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z

    throw v0

    :cond_14
    :goto_a
    move-object v3, v14

    const/4 v0, 0x0

    return v0
.end method
