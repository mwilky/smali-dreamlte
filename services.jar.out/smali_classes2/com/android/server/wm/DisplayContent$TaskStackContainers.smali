.class final Lcom/android/server/wm/DisplayContent$TaskStackContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskStackContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/TaskStack;",
        ">;"
    }
.end annotation


# instance fields
.field mAppAnimationLayer:Landroid/view/SurfaceControl;

.field mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

.field mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field private mPinnedStack:Lcom/android/server/wm/TaskStack;

.field mSideScreenPrimaryAnchor:Landroid/view/SurfaceControl;

.field private mSideScreenRecentsStack:Lcom/android/server/wm/TaskStack;

.field mSideScreenSecondaryAnchor:Landroid/view/SurfaceControl;

.field private final mSideScreenSecondaryStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mSideScreenStackDividerAnchor:Landroid/view/SurfaceControl;

.field mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenPrimaryAnchor:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenSecondaryAnchor:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenStackDividerAnchor:Landroid/view/SurfaceControl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenSecondaryStacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenRecentsStack:Lcom/android/server/wm/TaskStack;

    return-void
.end method

.method private addChild(Lcom/android/server/wm/TaskStack;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already exist on display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already exist on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_4

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already exist on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method private findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz p3, :cond_2

    add-int/lit8 v5, v0, 0x1

    if-lt p1, v5, :cond_1

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_1
    goto :goto_2

    :cond_2
    if-lt p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    or-int/2addr v3, v4

    move v4, p1

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v5}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v7

    if-ne v7, v6, :cond_5

    if-eqz p3, :cond_4

    move v6, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v0, -0x1

    :goto_3
    move v4, v6

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pinned stack isn\'t top stack??? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_4
    nop

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v5

    invoke-static {v5}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/DisplayContent;->getFreeformStackCount(Z)I

    move-result v5

    if-lez v5, :cond_a

    if-ne v4, v2, :cond_9

    if-eqz p3, :cond_8

    sub-int v2, v0, v5

    add-int/2addr v2, v1

    goto :goto_5

    :cond_8
    sub-int v2, v0, v5

    :goto_5
    move v4, v2

    goto :goto_6

    :cond_9
    sub-int/2addr v4, v5

    :cond_a
    :goto_6
    return v4
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    move v6, v0

    :goto_3
    if-ge v6, v5, :cond_4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    nop

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/TaskStack;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method assignChildLayers()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->scheduleAnimation()V

    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v12, v9

    move v9, v5

    const/4 v5, 0x0

    :goto_0
    const/4 v13, 0x2

    if-gt v5, v13, :cond_e

    if-ne v5, v13, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/TaskStack;

    iget-boolean v11, v15, Lcom/android/server/wm/TaskStack;->mBoostStackLayerForAppTransition:Z

    if-eqz v11, :cond_0

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v15, v1, v9}, Lcom/android/server/wm/TaskStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v9, v11

    :cond_0
    goto :goto_1

    :cond_1
    add-int/lit8 v11, v9, 0x1

    move v12, v9

    move v9, v11

    :cond_2
    move v11, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_2
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    if-ge v6, v14, :cond_c

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskStack;

    if-nez v5, :cond_3

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_3

    :cond_3
    const/4 v15, 0x1

    if-ne v5, v15, :cond_4

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v15

    if-nez v15, :cond_b

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_3

    :cond_4
    if-ne v5, v13, :cond_5

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v14, v1, v9}, Lcom/android/server/wm/TaskStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v9, v15}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move/from16 v15, v16

    :cond_6
    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :cond_7
    move v9, v15

    goto :goto_3

    :cond_8
    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isTaskAnimating()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->isAppAnimating()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    if-eq v5, v13, :cond_a

    add-int/lit8 v9, v15, 0x1

    move v7, v15

    move v15, v9

    :cond_a
    if-eq v5, v13, :cond_7

    add-int/lit8 v9, v15, 0x1

    move v11, v15

    :cond_b
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_c
    if-nez v5, :cond_d

    add-int/lit8 v6, v9, 0x1

    move v8, v9

    move v9, v6

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    move v7, v11

    goto/16 :goto_0

    :cond_e
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_f

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_10
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_11

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_11
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_12
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .locals 1
    .param p1    # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getOrientation()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->getOrientation()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forcing UNSPECIFIED orientation in car for display id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v5}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Ignoring "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App is requesting an orientation, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No app is requesting an orientation, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v0

    if-eq v0, v2, :cond_7

    return v0

    :cond_7
    return v3
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getSideScreenPrimaryAnchor()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenPrimaryAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSideScreenRecentsStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenRecentsStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getSideScreenSecondaryAnchor()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenSecondaryAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSideScreenSecondaryStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenSecondaryStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSideScreenStackDividerAnchor()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSideScreenStackDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    if-nez p2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskStackContainers$rQnI0Y8R9ptQ09cGHwbCHDiG2FY;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method isOnTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onParentSet()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->onParentSet()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "animationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "boostedAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "homeAnimationLayer"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string/jumbo v2, "splitScreenDividerAnchor"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "freeformAnimationLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->scheduleAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    :goto_0
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mPinnedStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    :cond_0
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/TaskStack;Z)V
    .locals 5

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring move of always-on-top stack="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bottom"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0, v0, p2, v2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    if-eqz p3, :cond_2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v4

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getFreeformStackCount(Z)I

    move-result v4

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    invoke-super {p0, v0, p2, v2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mSplitScreenPrimaryStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->hideCurrentImeIfNeeded()V

    :cond_3
    invoke-super {p0, v0, p2, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    check-cast p2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/TaskStack;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackReferenceIfNeeded(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->cancelAnimation()V

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performLayout: App token exiting now removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
