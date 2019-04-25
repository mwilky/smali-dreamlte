.class public Lcom/android/server/policy/MultiDisplayPolicyManager;
.super Ljava/lang/Object;
.source "MultiDisplayPolicyManager.java"

# interfaces
.implements Lcom/android/server/policy/IMultiDisplayPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;
    }
.end annotation


# static fields
.field static DEBUG_LAYOUT:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiDisplayPolicyManager"

.field static localLOGV:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field volatile mDexKeyguardOccluded:Z

.field mDexKeyguardOccludedChanged:Z

.field mDexPendingKeyguardOccluded:Z

.field final mDisplayIdToPolicy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mFocusCandidates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field mIsGoneTosleepForPOCSubDisplay:Z

.field private mLastDexMode:I

.field mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

.field mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

.field private mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field mWinnerPocSubDisplayMode:I

.field mWinnerPocSubDisplayModeIterator:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->localLOGV:Z

    sput-boolean v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->DEBUG_LAYOUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mH:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    iput v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    iput-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mIsGoneTosleepForPOCSubDisplay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MultiDisplayPolicyManager;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method private static isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onDisplayAdded$0(Lcom/android/server/policy/MultiDisplayPolicyManager;ILandroid/view/Display;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    invoke-direct {v1, p0, p2}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager;Landroid/view/Display;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->requestLayoutTraversal(I)V

    return-void
.end method

.method public static synthetic lambda$updateSystemUiVisibility$1(Lcom/android/server/policy/MultiDisplayPolicyManager;IIILandroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "MultiDisplayPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSystemUiVisibility: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, p1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", visibility=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fullscreenVisibility=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, -0x1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v2, v1

    move v3, p2

    move v4, p3

    move-object/from16 v7, p4

    invoke-interface/range {v2 .. v10}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibilityToType(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;I)V

    move/from16 v2, p6

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(Z)V

    goto :goto_0

    :cond_0
    move v11, p1

    move/from16 v2, p6

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v1, p1

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v1

    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isFullscreenFreeformLw()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sget-boolean v6, Lcom/android/server/policy/MultiDisplayPolicyManager;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_1

    const-string v6, "MultiDisplayPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyPostLayoutPolicyLw: # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", affectsSystemUi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_2

    iput-boolean v5, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBar:Z

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v6

    iput v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBarLayer:I

    :cond_2
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_7

    if-eqz v1, :cond_7

    and-int/lit16 v6, v2, 0x800

    if-eqz v6, :cond_3

    iput-boolean v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceStatusBar:Z

    :cond_3
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v6, v5, :cond_4

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d0

    if-ge v6, v7, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    if-eqz v6, :cond_7

    if-nez p3, :cond_7

    invoke-static {p2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v7

    if-eq v7, v5, :cond_5

    if-eqz v3, :cond_7

    :cond_5
    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_6

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_6
    sget-boolean v7, Lcom/android/server/policy/MultiDisplayPolicyManager;->DEBUG_LAYOUT:Z

    if-eqz v7, :cond_7

    const-string v7, "MultiDisplayPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyPostLayoutPolicyLw: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", set TopFullOpaque= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7ef

    if-ne v6, v7, :cond_8

    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_8

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_8

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_8
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_c

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_c

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    move v6, v4

    :goto_2
    if-nez v6, :cond_b

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_b

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_a

    move v4, v5

    nop

    :cond_a
    move v6, v4

    :cond_b
    if-eqz v6, :cond_c

    iput-boolean v5, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mOverlappedFreeformWithNaviBar:Z

    :cond_c
    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_e

    if-eqz v1, :cond_e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v4

    if-eq v4, v5, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_e
    return-void
.end method

.method applyWinnerSubDisplayPOCSetByDevToolApp(Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->setIsGoneTosleepForPOCSubDisplay(Z)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    iget v4, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayModeIterator:I

    rem-int/lit8 v1, v4, 0x5

    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    invoke-virtual {p0, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->setIsGoneTosleepForPOCSubDisplay(Z)V

    goto :goto_0

    :pswitch_3
    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method beginLayout(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget v14, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v13, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    iget v12, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    and-int/lit16 v1, v12, 0x800

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move/from16 v18, v1

    and-int/lit16 v1, v12, 0x1000

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    move/from16 v19, v1

    if-nez v18, :cond_3

    if-eqz v19, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    move/from16 v20, v1

    and-int/lit8 v1, v12, 0x2

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    move/from16 v21, v1

    const v1, -0x7fff8000

    and-int/2addr v1, v12

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    if-nez v19, :cond_6

    move v4, v2

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    and-int/2addr v1, v4

    if-nez v21, :cond_8

    if-eqz v20, :cond_7

    goto :goto_7

    :cond_7
    iget-object v4, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_9

    invoke-virtual {v13}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->getOrCreateInputConsumer()Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v4, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    iget-object v7, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x0

    iput-object v4, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    :cond_9
    :goto_8
    const/4 v9, 0x0

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v4, v8}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    if-nez v4, :cond_a

    move v4, v2

    goto :goto_9

    :cond_a
    move v4, v3

    :goto_9
    move/from16 v22, v4

    if-nez v22, :cond_b

    iget-object v4, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v4

    and-int/2addr v1, v4

    :cond_b
    move/from16 v23, v1

    if-nez v22, :cond_c

    iget-object v1, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_c

    iget-object v1, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    iget-object v1, v13, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v4, :cond_c

    move v8, v2

    goto :goto_a

    :cond_c
    move v8, v3

    :goto_a
    move-object v1, v13

    move-object v2, v15

    move/from16 v3, p2

    move-object v4, v5

    move-object/from16 v24, v5

    move/from16 v5, v21

    move-object/from16 v25, v6

    move/from16 v6, v23

    move-object/from16 v26, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z

    move-result v1

    or-int/2addr v1, v9

    move-object v9, v13

    move-object v2, v10

    move-object v10, v15

    move-object v3, v11

    move v4, v12

    move-object v12, v2

    move-object v5, v13

    move-object/from16 v13, v26

    move v6, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v24

    move/from16 v16, v4

    move/from16 v17, v22

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z

    move-result v7

    or-int/2addr v1, v7

    if-eqz v1, :cond_e

    invoke-virtual {v0, v6}, Lcom/android/server/policy/MultiDisplayPolicyManager;->updateSystemUiVisibility(I)I

    goto :goto_b

    :cond_d
    move-object v5, v13

    move v6, v14

    :cond_e
    :goto_b
    return-void
.end method

.method public beginPostLayoutPolicyLw(III)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBar:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBarLayer:I

    iput-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceStatusBar:Z

    iput-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mOverlappedFreeformWithNaviBar:Z

    :cond_0
    return-void
.end method

.method clearClearableFlagsLw(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v1, 0x7

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    iget-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-interface {v2, p1}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->reevaluateStatusBarVisibility(I)V

    :cond_0
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, " MULTI DISPLAY POLICY MANAGER"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finishPostLayoutPolicyLw(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceStatusBar:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->updateSystemUiVisibility(I)I

    move-result v2

    const v3, -0x3fff7ff2

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public focusUpdateRequestedLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method

.method getDexKeyguardOccluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    return v0
.end method

.method getDexModeLw()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->getDexModeLw()I

    move-result v0

    return v0
.end method

.method public getDexModeTi()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    return v0
.end method

.method getFocusedWindow(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mFocusCandidates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method getNavgationBar(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getNonDecorDisplayHeight(IIII)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_0

    if-ge p2, p3, :cond_1

    :cond_0
    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    sub-int/2addr p3, v1

    :cond_1
    return p3
.end method

.method getNonDecorDisplayWidth(IIII)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_0

    if-le p2, p3, :cond_0

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    sub-int/2addr p2, v1

    :cond_0
    return p2
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarHeight:I

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    :cond_0
    if-eqz p4, :cond_1

    iget v1, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iget v1, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iget v1, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->right:I

    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;I)V

    const/4 v1, 0x2

    if-eq p6, v1, :cond_0

    iget v1, p5, Landroid/graphics/Rect;->top:I

    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBarHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method getStatusBar(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStatusBarHeight(I)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarHeight(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBarHeight:I

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method getTopFullscreeOpaqueWin(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasMultiDisplayPolicy(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mContext:Landroid/content/Context;

    move-object v0, p3

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->setMultiDisplayPolicy(Lcom/android/server/policy/MultiDisplayPolicyManager;)V

    iput-object p2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    return-void
.end method

.method isDisplayDeXEnabledTi(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eq p1, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    if-ne v0, v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isGoneTosleepForPOCSubDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mIsGoneTosleepForPOCSubDisplay:Z

    return v0
.end method

.method isImmersiveMode(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x1800

    iget-object v3, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    and-int v3, p1, v2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method isNavigationBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method isNavigationBarVisible(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method isStatusBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method isWinnerPOCSubDisplayModeApplied()Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->loadResources()V

    :cond_0
    return-void
.end method

.method public onDexModeChangedLw(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    if-ne v0, p1, :cond_0

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDexModeChangedLw: called same dexMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBindDesktopSystemUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnbindDesktopSystemUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iput p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mLastDexMode:I

    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->setDexMode(I)V

    return-void
.end method

.method public onDisplayAdded(Landroid/view/Display;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$YeBE2Ze5wrlcaBwpk8i19EAKhsE;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager;ILandroid/view/Display;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayAdded: displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->release()V

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayRemoved: displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/4 v2, -0x7

    const/16 v3, 0xa31

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getNavgationBar(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->setNavigationBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return v1

    :cond_1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xa32

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getStatusBar(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->setStatusBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return v1

    :cond_3
    const/16 v0, -0xa

    return v0
.end method

.method removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isNavigationBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->removeNavigationBar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isStatusBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->removeStatusBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method requestTransientBars(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->showTransient()V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->updateSystemUiVisibility(I)I

    :cond_0
    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->showNextButton()V

    :cond_1
    return-void
.end method

.method selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    :cond_2
    const v1, 0x10a002e

    return v1

    :cond_3
    :goto_0
    const v1, 0x10a002f

    return v1

    :cond_4
    return v1
.end method

.method setDexKeyguardOccludedLw(Z)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez p1, :cond_1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v3, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setDexOccluded(ZZ)V

    return v2

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v5, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setDexOccluded(ZZ)V

    return v2

    :cond_2
    if-eqz v4, :cond_3

    iput-boolean p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    iget-object v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setDexOccluded(ZZ)V

    return v3

    :cond_3
    return v3
.end method

.method setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v1, :cond_1

    const-string v2, "MultiDisplayPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInitialDisplaySize: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Current=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "dpi)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p2, p3, :cond_0

    iput v5, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLandscapeRotation:I

    iput v4, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mUpsideDownRotation:I

    iput v3, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mSeascapeRotation:I

    iput v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mPortraitRotation:I

    goto :goto_0

    :cond_0
    iput v5, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mPortraitRotation:I

    iput v4, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLandscapeRotation:I

    iput v3, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mUpsideDownRotation:I

    iput v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mSeascapeRotation:I

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->loadResources()V

    :cond_1
    return-void
.end method

.method public setIsGoneTosleepForPOCSubDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mIsGoneTosleepForPOCSubDisplay:Z

    return-void
.end method

.method setNavigationBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v1, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    const-string v2, "MultiDisplayPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNavigationBar: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", navigationBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method setStatusBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatusBar: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setWinnerPocSubDisplayMode(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmWinnerPocSubDisplayMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mWinnerPocSubDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method shouldGoHomeInSubDisplay(Z)Z
    .locals 2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->shouldGoHomeInSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->restoreLastNonResizableTopTaskIfNeeded()V

    :cond_2
    return v1
.end method

.method updateScreenOffSleepToken(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiDisplayPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScreenOffSleepToken: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", acquire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", current ScreenOffSleepToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "ScreenOff"

    invoke-virtual {v1, v2, p2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_2
    :goto_0
    return-void
.end method

.method updateSystemBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;III)I
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    if-eqz v3, :cond_e

    iget-boolean v4, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v4, :cond_e

    iget-object v4, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v5, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v6, p3

    invoke-virtual {v5, v4, v6, v1}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v5

    iget-boolean v6, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mOverlappedFreeformWithNaviBar:Z

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq v4, v6, :cond_0

    const v6, -0x8001

    and-int/2addr v5, v6

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    :cond_0
    iget-object v6, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-nez v6, :cond_1

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    :cond_1
    and-int/lit16 v6, v5, 0x1000

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    iget-object v10, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    move v10, v8

    goto :goto_2

    :cond_4
    move v10, v7

    :goto_2
    if-nez v10, :cond_5

    iget-object v11, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v11}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v8

    goto :goto_3

    :cond_5
    move v11, v7

    :goto_3
    if-eqz v11, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->clearClearableFlagsLw(I)V

    and-int/lit8 v5, v5, -0x8

    :cond_6
    and-int/lit16 v12, v5, 0x800

    if-eqz v12, :cond_7

    move v12, v8

    goto :goto_4

    :cond_7
    move v12, v7

    :goto_4
    and-int/lit16 v13, v5, 0x1000

    if-eqz v13, :cond_8

    move v13, v8

    goto :goto_5

    :cond_8
    move v13, v7

    :goto_5
    move v6, v13

    if-nez v12, :cond_a

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    goto :goto_7

    :cond_a
    :goto_6
    move v7, v8

    :goto_7
    iget-object v8, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v15, p1

    invoke-virtual {v8, v15}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v8

    iget-object v13, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v14, 0x7e6

    invoke-virtual {v13, v14}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v14

    if-eqz v9, :cond_b

    if-nez v7, :cond_b

    if-le v8, v14, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v13

    move-object/from16 v19, v4

    const/16 v4, 0x96a

    if-eq v13, v4, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v4

    const/16 v13, 0x965

    if-eq v4, v13, :cond_c

    and-int/lit8 v5, v5, -0x3

    goto :goto_8

    :cond_b
    move-object/from16 v19, v4

    :cond_c
    :goto_8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isImmersiveMode(II)Z

    move-result v4

    and-int/lit16 v13, v5, -0x801

    invoke-virtual {v0, v13, v2}, Lcom/android/server/policy/MultiDisplayPolicyManager;->isImmersiveMode(II)Z

    move-result v13

    if-eq v4, v13, :cond_d

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v20

    iget-object v2, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    move/from16 v21, v4

    iget-object v4, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    const/16 v17, 0x0

    move/from16 v22, v13

    move-object v13, v4

    move v4, v14

    move-object/from16 v14, v20

    move/from16 v15, v22

    move/from16 v16, v2

    move-object/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZLcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_9

    :cond_d
    move/from16 v21, v4

    move/from16 v22, v13

    move v4, v14

    :goto_9
    iget-object v2, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v10, v1, v5}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result v2

    iget-object v5, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v13, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v14, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v14}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v14

    iget v15, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v5, v13, v14, v15}, Lcom/android/server/policy/PhoneWindowManager;->chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v5

    iget-object v13, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v14, v3, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v15, v0, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v15, v15, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v15}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v15

    invoke-static {v2, v13, v14, v15, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v2

    goto :goto_a

    :cond_e
    move/from16 v6, p3

    move v2, v6

    :goto_a
    return v2
.end method

.method updateSystemUiVisibility(I)I
    .locals 19

    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDisplayIdToPolicy:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;

    const/4 v0, 0x0

    if-eqz v10, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getFocusedWindow(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object v1, v11

    goto :goto_0

    :cond_0
    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_0
    iget-object v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-static {v11, v2}, Lcom/android/server/policy/MultiPhoneWindowManager;->getCandidateWindowState(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_2

    return v0

    :cond_2
    move-object v12, v1

    move-object v13, v12

    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iget v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    iget v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    iget-boolean v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v2, :cond_3

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iget v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_3

    const/4 v2, 0x7

    invoke-static {v13, v2}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    :cond_3
    invoke-static {v11, v13, v1}, Lcom/android/server/policy/MultiPhoneWindowManager;->adjustImmersiveFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v14

    iget-object v1, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v4, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v5, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v6, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mDexKeyguardOccluded:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I

    move-result v15

    iget-object v1, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x2

    iget-object v3, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    iget v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v8, v13, v1, v14, v9}, Lcom/android/server/policy/MultiDisplayPolicyManager;->updateSystemBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;III)I

    move-result v7

    iget v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    xor-int v6, v7, v1

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v13, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v16

    if-nez v6, :cond_4

    iget-object v1, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    iput v7, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastSystemUiFlags:I

    iget-object v0, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v0, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/server/policy/MultiDisplayPolicyManager$DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, v8, Lcom/android/server/policy/MultiDisplayPolicyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;

    move-object v0, v3

    move-object v1, v8

    move v2, v9

    move-object v8, v3

    move v3, v7

    move-object v9, v4

    move v4, v15

    move-object/from16 v17, v10

    move v10, v6

    move-object v6, v13

    move/from16 v18, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;-><init>(Lcom/android/server/policy/MultiDisplayPolicyManager;IIILandroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v9, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MultiDisplayPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSystemUivisibility: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", diff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v10

    :cond_6
    move-object/from16 v17, v10

    return v0
.end method
