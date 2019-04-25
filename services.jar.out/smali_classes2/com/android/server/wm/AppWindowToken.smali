.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$AppFreezeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowToken$DimAnimInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final Z_BOOST_BASE:I = 0x2fb7ba90


# instance fields
.field allDrawn:Z

.field final appToken:Landroid/view/IApplicationToken;

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field layoutConfigChanges:Z

.field private mAlwaysFocusable:Z

.field private mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field mAppStopped:Z

.field private mCanTurnScreenOn:Z

.field private mClientHidden:Z

.field mCustomStartingWindowKey:Ljava/lang/String;

.field mDeferHidingClient:Z

.field final mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

.field private mDisablePreviewScreenshots:Z

.field mEnteringAnimation:Z

.field private mFillsParent:Z

.field private mFreezingScreen:Z

.field mFrozenBounds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFrozenMergedConfig:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenSetFromTransferredStartingWindow:Z

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mInputDispatchingTimeoutNanos:J

.field mIsDexCompatEnabled:Z

.field mIsExiting:Z

.field private mLastAllDrawn:Z

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field private mLastParent:Lcom/android/server/wm/Task;

.field private mLastSurfaceShowing:Z

.field private mLastTransactionSequence:J

.field mLaunchTaskBehind:Z

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field mMovingDisplay:Z

.field private mNeedsZBoost:Z

.field private mNumDrawnWindows:I

.field private mNumInterestingWindows:I

.field private mPendingRelaunchCount:I

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field mRemovingFromDisplay:Z

.field private mReparenting:Z

.field private final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field mRequestFreeformForceHiding:Z

.field mRotationAnimationHint:I

.field mShowForAllUsers:Z

.field mShowWhenLocked:Z

.field mSplitScreenModeDismissing:Z

.field mTargetSdk:I

.field private mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

.field final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTransientBarShowingDelay:I

.field private mTransit:I

.field private mTransitFlags:I

.field mUseFreeformBorder:Z

.field final mVoiceInteraction:Z

.field private mWillCloseOrEnterPip:Z

.field private pService:Lcom/android/server/pm/PersonaManagerService;

.field removed:Z

.field private reportedDrawn:Z

.field reportedVisible:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field startingWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)V
    .locals 12

    move-object v6, p0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;Z)V

    move-object/from16 v0, p15

    invoke-virtual {v6, v0}, Lcom/android/server/wm/AppWindowToken;->setController(Lcom/android/server/wm/WindowContainerController;)V

    move-wide/from16 v1, p5

    iput-wide v1, v6, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    move/from16 v3, p8

    iput-boolean v3, v6, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    move/from16 v4, p9

    iput v4, v6, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    move/from16 v5, p10

    iput v5, v6, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    move/from16 v7, p12

    and-int/lit16 v8, v7, 0x480

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v6, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    move/from16 v8, p13

    iput-boolean v8, v6, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    move/from16 v10, p14

    iput-boolean v10, v6, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    move/from16 v11, p11

    iput v11, v6, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    invoke-virtual {v6, v9}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    iput-boolean v9, v6, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    new-instance v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRequestFreeformForceHiding:Z

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mSplitScreenModeDismissing:Z

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mUseFreeformBorder:Z

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsDexCompatEnabled:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    invoke-direct {v2, p0}, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransientBarShowingDelay:I

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mShowWhenLocked:Z

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpConfig:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->pService:Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    iput-boolean p5, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private clearThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    return-void
.end method

.method private destroySurfaces(Z)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    :cond_1
    return-void
.end method

.method private freezeBounds()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    return-void
.end method

.method private getPersonaService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->pService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->pService:Lcom/android/server/pm/PersonaManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->pService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public static synthetic lambda$layoutLetterbox$0(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$shouldUseAppThemeSnapshot$1(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showAllWindowsLocked$2(Lcom/android/server/wm/WindowState;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performing show on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    return-void
.end method

.method private loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    :goto_2
    move-object v8, v2

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v10, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget v11, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v12, v2, Landroid/content/res/Configuration;->orientation:I

    move-object v9, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3
.end method

.method private shouldAnimate(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mSplitScreenModeDismissing:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/16 v2, 0xd

    if-eq p1, v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v1, v3

    :goto_3
    return v1
.end method

.method private unfreezeBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method private waitingForReplacement()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    return-void
.end method

.method applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v3, 0x0

    if-nez v2, :cond_f

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppWindowToken;->shouldAnimate(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v2, "AWT#applyAnimationLocked"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/TaskStack;->getRelativePosition(Landroid/graphics/Point;)V

    :goto_0
    const/4 v8, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v6}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_2

    move v11, v7

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    move v8, v11

    :cond_3
    if-eqz v8, :cond_4

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->shouldMagnify()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v10

    if-nez v10, :cond_5

    iget v10, v3, Landroid/view/MagnificationSpec;->scale:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    iget v10, v3, Landroid/view/MagnificationSpec;->scale:F

    iget-object v11, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, v3, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iput v10, v11, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v3

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v8, v10}, Lcom/android/server/wm/RemoteAnimationController;->createAnimationAdapter(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v8

    goto/16 :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/wm/AppWindowToken;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v15, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v14, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v13, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v16

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v17

    const/16 v18, 0x1

    move-object v10, v14

    move-object v11, v3

    move-object v8, v14

    move/from16 v14, v16

    move-object v4, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v10 .. v16}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZ)V

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v4, v8, v5}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v8, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v5

    if-ne v5, v7, :cond_a

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v11

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v11, :cond_a

    iget-boolean v12, v11, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    if-nez v12, :cond_a

    :cond_9
    const/4 v4, 0x1

    :cond_a
    if-nez v4, :cond_b

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v5

    if-ne v5, v7, :cond_b

    iput-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    :cond_b
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    goto :goto_5

    :cond_c
    nop

    const/4 v8, 0x0

    :goto_5
    move-object v3, v8

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v5

    xor-int/2addr v5, v7

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/wm/AppWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_d
    goto :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    :goto_6
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v2

    return v2

    :cond_f
    :goto_7
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_11

    :cond_10
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyAnimation: transition animation is disabled or skipped. atoken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    return v3
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .locals 0

    return-object p0
.end method

.method attachCrossProfileAppsThumbnailAnimation()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_2

    const v2, 0x108036f

    goto :goto_0

    :cond_2
    const v2, 0x10803b8

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    new-instance v4, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    return-void
.end method

.method attachThumbnailAnimation()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No thumbnail header bitmap for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    new-instance v2, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppWindowToken;->loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    return-void
.end method

.method canTurnScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return v0
.end method

.method cancelAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " numInteresting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x4

    const-string v1, "checkAppWindowsReadyToShow: freezingScreen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    const-string v1, "checkAppWindowsReadyToShow"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    :cond_4
    :goto_0
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method checkKeyguardFlagsChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardFlagsChanged(ZZ)V

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return-void
.end method

.method clearAllDrawn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    return-void
.end method

.method clearAnimatingFlags()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    :cond_1
    return-void
.end method

.method clearRelaunching()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mMovingDisplay:Z

    return-void
.end method

.method clearWillReplaceWindows()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting app token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of replacing window marks."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method containsDismissKeyguardWindow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method containsShowWhenLockedWindow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method destroySurfaces()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    return-void
.end method

.method detachChildren()V
    .locals 3

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return-void
.end method

.method diffOverrideAppBounds(Landroid/graphics/Rect;)I
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wm/AppWindowToken;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz p1, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x2

    :cond_4
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app=true mVoiceInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mFillsParent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClientHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDeferHidingClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reportedDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reportedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppStopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNumDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " lastAllDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " startingSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " startingMoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHiddenSetFromTransferredStartingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrozenBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrozenMergedConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingRelaunchCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "controller="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRemovingFromDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsDexCompatEnabled:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsDexCompatEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsDexCompatEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mShowWhenLocked:Z

    if-eqz v0, :cond_10

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowWhenLocked="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mShowWhenLocked:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_10
    return-void
.end method

.method fillsParent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return v0
.end method

.method findDexCompatBaseWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    if-nez v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mIsDecorCaptionWin:Z

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v2, :cond_0

    if-eqz p1, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_2

    move-object v0, v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    return-object v0
.end method

.method findMaxVisibleAppWindow()Lcom/android/server/wm/WindowState;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_4

    iget v6, v4, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v6, :cond_4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v6, v7, :cond_4

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gt v6, v7, :cond_4

    move-object v1, v4

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v6, v7, :cond_4

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gt v6, v7, :cond_4

    move-object v0, v4

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    move-object v3, v0

    goto :goto_2

    :cond_6
    move-object v3, v1

    :goto_2
    return-object v3
.end method

.method finishRelaunching()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    :goto_0
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer()Landroid/view/SurfaceControl;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getController()Lcom/android/server/wm/AppWindowContainerController;
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/AppWindowContainerController;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    return-object v0
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v3, v4, :cond_2

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method getLowestAnimLayer()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_0

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v2

    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method getOrientation(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0

    :cond_2
    const/4 v0, -0x2

    return v0
.end method

.method getOrientationIgnoreVisibility()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getTopFullscreenWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopVisibleWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTransientBarShowingDelay()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransientBarShowingDelay:I

    return v0
.end method

.method public getTransit()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    return v0
.end method

.method getTransitFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    return v0
.end method

.method hasDecorCaptionWin()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mIsDecorCaptionWin:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasWindowsAlive()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isAppAnimating()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method isClientHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    return v0
.end method

.method isClosingOrEnteringPip()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    if-eq v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    if-eq v1, v4, :cond_2

    return v3

    :cond_2
    if-eq v0, v4, :cond_3

    if-ne v1, v4, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method isFreezingScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    return v0
.end method

.method isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->isOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReallyAnimating()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method isRelaunching()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSelfAnimating()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

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

.method isSurfaceShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v5, :cond_5

    new-instance v5, Lcom/android/server/wm/Letterbox;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$AppWindowToken$clD7LvtE6cPZl3BRlaGuoR17rP4;

    invoke-direct {v6, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$clD7LvtE6cPZl3BRlaGuoR17rP4;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    invoke-direct {v5, v6}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;)V

    iput-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    :cond_5
    nop

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->hide()V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v5

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    if-eq v5, v2, :cond_9

    const/4 v2, 0x3

    if-ne v5, v2, :cond_b

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mLetterboxTspInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v6}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mLetterboxTspInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v7}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v6}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mLetterboxTspInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v7}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    :cond_b
    :goto_5
    return-void

    :cond_c
    :goto_6
    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .locals 28

    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    iget v12, v13, Landroid/view/DisplayInfo;->appWidth:I

    iget v11, v13, Landroid/view/DisplayInfo;->appHeight:I

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: atoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v0

    new-instance v7, Landroid/graphics/Rect;

    iget v0, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v7, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    const/4 v0, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move/from16 v16, v1

    if-eqz v10, :cond_8

    if-eqz v16, :cond_3

    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_6
    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-boolean v1, v10, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v10, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    :cond_7
    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    move-object v5, v0

    iget-boolean v0, v15, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    :cond_9
    move/from16 v4, p3

    :goto_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animation for app transition. transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " insets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surfaceInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v2, v3, Landroid/content/res/Configuration;->uiMode:I

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v2

    move/from16 v2, p2

    move-object/from16 v20, v3

    move v3, v4

    move/from16 v21, v4

    move/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move-object v6, v9

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v9, v19

    move-object/from16 v24, v10

    move-object/from16 v10, v17

    move/from16 v25, v11

    move/from16 v11, p4

    move/from16 v26, v12

    move/from16 v12, v16

    move-object/from16 v27, v13

    move/from16 v13, v18

    move-object/from16 v18, v14

    move-object v14, v15

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZILcom/android/server/wm/AppWindowToken;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_b

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded animation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v1, v23

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v5, v25

    move/from16 v4, v26

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v6, v15, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    goto :goto_2

    :cond_c
    move-object/from16 v1, v23

    move/from16 v5, v25

    move/from16 v4, v26

    :goto_2
    return-object v0
.end method

.method needsZBoost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->needsZBoost()Z

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

.method notifyAppResumed(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAppResumed: wasStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mMovingDisplay:Z

    return-void
.end method

.method notifyAppStopped()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAppStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_1
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onAnimationFinished()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    :goto_0
    const/16 v1, 0xc

    const-string v2, "AppWindowToken"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    move v0, v2

    nop

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation done in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": reportedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " okToDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " okToAnimate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " startingDisplayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-eqz v1, :cond_1

    const v1, 0x2fb7ba90

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->assignStackOrdering()V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyStarting(Lcom/android/server/wm/AppWindowToken;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->isTriggered()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    new-instance v3, Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v3, v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v2}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->isDimAbove()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/server/wm/Dimmer;->dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mStartAlpha:F

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mEndAlpha:F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/Dimmer;->setAnimAlphaInfo(FF)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mTriggered:Z

    :cond_4
    return-void
.end method

.method public onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/server/wm/WindowToken;->onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->hasDimAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDimAnimInfo:Lcom/android/server/wm/AppWindowToken$DimAnimInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    :cond_2
    return-void
.end method

.method public onAppFreezeTimeout()V
    .locals 3

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force clearing freeze: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    return-void
.end method

.method onAppTransitionDone()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mSplitScreenModeDismissing:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mSplitScreenModeDismissing:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_3

    :cond_4
    if-ne v0, v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/PinnedStackController;->saveReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    :cond_6
    :goto_3
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": first real window is shown, no animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    return-void
.end method

.method onParentSet()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onParentSet()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    return-void
.end method

.method onRemovedFromDisplay()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_3
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_4

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " delayed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " animation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " animating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAppToken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " delayed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " Callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x0

    if-ne v4, p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iput-object v5, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v6, :cond_b

    :cond_a
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAppToken make exiting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v4, :cond_c

    iget-object v6, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6, p0}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    :cond_c
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    if-eqz v4, :cond_e

    iget-object v6, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v6, p0, :cond_10

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v6, :cond_f

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing focused app token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v6, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v3, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_10
    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_11
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    return-void
.end method

.method onWindowReplacementTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify removed startingWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v2, "Nulling last startingData"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last window, removing starting window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mMovingDisplay:Z

    if-eqz v0, :cond_5

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip removing starting window, is moving display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_6
    :goto_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->shouldDeferScheduleAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareSurfaces, deferring to prepare surface, appToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/AppWindowThumbnail;->setShowing(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->getNavBarPosition()I

    move-result v4

    if-ne v4, v2, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasCustomAspectRatioGUI()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v2}, Lcom/android/server/wm/AspectRatioController;->hasDisplayCutout()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->getCustomAspectRatioFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mTmpBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mConventionalModeBarSizes:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v5, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :cond_7
    :goto_3
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->prepareSurfaces()V

    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeDeadWindows()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDeadWindows: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindowsIfPossible()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeImmediately()V

    return-void
.end method

.method removeImmediately()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq p1, v0, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reParentWindowToken: removing window token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " belongs to a different stack than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already child of task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 3

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentSurfaceControl(), If parent is leash, it will be skipped, surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAppBounds(Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->diffOverrideAppBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method setCanTurnScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return-void
.end method

.method setClientHidden(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientHidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clientHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    return-void
.end method

.method setFillsParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return-void
.end method

.method setHidden(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setHidden(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method setShowWhenLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mShowWhenLocked:Z

    return-void
.end method

.method setTransientBarShowingDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/AppWindowToken;->mTransientBarShowingDelay:I

    return-void
.end method

.method setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v7, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v11, p1

    move/from16 v12, p5

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v9, 0x0

    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v10, :cond_3

    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Changing app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " hidden="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " performLayout="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v2, v11, :cond_7

    move-object/from16 v11, p1

    move/from16 v12, p5

    invoke-virtual {v0, v11, v2, v1, v12}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    move-result v13

    if-eqz v13, :cond_4

    move v10, v8

    move v4, v8

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    iget-object v13, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v13, v0}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotLocked(Lcom/android/server/wm/AppWindowToken;)V

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v13

    if-eqz v13, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v7, v13, v2}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v11, p1

    move/from16 v12, p5

    :goto_2
    iget-object v13, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v13

    move v14, v9

    move v9, v5

    :goto_3
    if-ge v9, v13, :cond_8

    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    invoke-virtual {v15, v1, v10}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v16

    or-int v14, v14, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    xor-int/lit8 v9, v1, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    const/4 v6, 0x1

    if-nez v1, :cond_9

    invoke-virtual {v0, v8, v8}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    goto :goto_4

    :cond_9
    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v9, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v9, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    :cond_a
    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;

    invoke-direct {v15, v9}, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v15, v8}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :goto_4
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v9, :cond_b

    const-string v9, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setVisibility: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": hidden="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hiddenRequested="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v14, :cond_d

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v8}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz v3, :cond_c

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_c
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->onAnimationFinished()V

    :goto_6
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_7
    if-ltz v5, :cond_10

    if-nez v4, :cond_10

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isSelfOrChildAnimating()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v4, 0x1

    :cond_f
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_10
    if-eqz v6, :cond_16

    if-eqz v1, :cond_11

    if-nez v4, :cond_11

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    :cond_11
    if-nez v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    :cond_13
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppVisibilityChanged()V

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez v4, :cond_16

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_8
    if-ltz v5, :cond_15

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v8, "immediately hidden"

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_15
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_16
    return v4
.end method

.method setWillCloseOrEnterPip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    return-void
.end method

.method setWillReplaceChildWindows()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking app token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with replacing child windows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking app token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with replacing windows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyAboutToFinish(Lcom/android/server/wm/AppWindowToken;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldDeferScheduleAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->isEndingDeferredFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldFreezeBounds()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method shouldUseAppThemeSnapshot()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$ErIvy8Kb9OulX2W0_mr0NNBS-KE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$ErIvy8Kb9OulX2W0_mr0NNBS-KE;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method showAllWindowsLocked()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method startFreezingScreen()V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set freezing of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": hidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " freezing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hiddenRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFrozenDisplayIdLocked()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    nop

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method startRelaunching()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->shouldFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    return-void
.end method

.method stopFreezingScreen(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear freezing of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v5

    or-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No longer freezing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    :cond_5
    if-eqz p1, :cond_7

    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v1, :cond_1

    const-string v1, " mIsExiting="

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transferStartingWindow(Landroid/os/IBinder;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v5, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v5, :cond_1

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving existing starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v7, :cond_2

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Has startingSurface already. Remove startingSurface : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " frist. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    :cond_3
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v7, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v7, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iget-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpRectForCustomFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getCustomAspectRatioFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/AspectRatioController;->adjustAspectRatioFrameLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/AppWindowToken;->setBounds(Landroid/graphics/Rect;)I

    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v7}, Lcom/android/server/wm/AspectRatioController;->hasDisplayCutout()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/AppWindowToken;->setAppBounds(Landroid/graphics/Rect;)I

    :cond_4
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing starting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v3, :cond_7

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    :cond_7
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_8

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    :cond_9
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v4

    :catchall_0
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_a
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_d

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_b

    const-string v1, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving pending starting from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    :cond_c
    return v4

    :cond_d
    return v1
.end method

.method transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    if-ne v2, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateAllDrawn()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allDrawn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " interesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " drawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->onAllWindowsDrawn()V

    :cond_2
    return-void
.end method

.method updateAnimatingAppWindowTokenRegistry()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindows: starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isOnScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " allDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " freezingScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_5

    :cond_4
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eval win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": isDrawn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isAnimationSet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not displayed: s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mDrawState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ph="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " th="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v4, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eq v2, p1, :cond_6

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tokenMayBeDrawn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " w="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " numInteresting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " freezingScreen="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAppFreezing="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowContainerController;->reportStartingWindowDrawn()V

    :cond_a
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :cond_b
    :goto_1
    return v3
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v1, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v4, v2}, Lcom/android/server/wm/Letterbox;->ignoreParentCrop(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->isRemoteAnimating()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Letterbox;->ignoreParentCrop(Z)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->ignoreParentCrop(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update reported visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v3, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v4, v4, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    const/4 v6, 0x1

    if-lez v2, :cond_3

    if-lt v4, v2, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    if-lez v2, :cond_4

    if-lt v3, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v6

    nop

    :cond_4
    if-nez v5, :cond_6

    if-nez v7, :cond_5

    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    move v7, v6

    :cond_5
    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    :cond_6
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v6, :cond_7

    const-string v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VIS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": interesting="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " visible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v7, v8, :cond_9

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    const-string/jumbo v8, "updateReportedVisibilityLocked"

    const-wide/16 v9, 0x20

    invoke-static {v9, v10, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsDrawn()V

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    :cond_8
    iput-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    :cond_9
    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v1, v8, :cond_c

    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v8, :cond_a

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Visibility changed in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": vis="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eqz v6, :cond_c

    if-eqz v1, :cond_b

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsVisible()V

    goto :goto_2

    :cond_b
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsGone()V

    :cond_c
    :goto_2
    return-void
.end method

.method windowsAreFocusable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

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

.method writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v0}, Landroid/view/IApplicationToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10900000001L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v2, 0x10b00000002L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v2

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v2

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000009L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000aL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000bL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1050000000eL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000fL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000010L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    const-wide v2, 0x10800000014L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000015L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000016L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
