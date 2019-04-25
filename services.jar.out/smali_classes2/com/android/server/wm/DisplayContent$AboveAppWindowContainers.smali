.class final Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;
.super Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AboveAppWindowContainers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method private applyDexImePolicyIfNeeded(Lcom/android/server/wm/WindowToken;Lcom/android/internal/util/ToBooleanFunction;ZLandroid/util/MutableBoolean;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowToken;",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z",
            "Landroid/util/MutableBoolean;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p4, Landroid/util/MutableBoolean;->value:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isDexImePolicyNeededLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v2, 0x7e3

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v2, 0xa31

    if-ne v0, v2, :cond_1

    :cond_0
    iput-boolean v1, p4, Landroid/util/MutableBoolean;->value:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private applyImeWindowsIfNeeded(Lcom/android/server/wm/WindowToken;Lcom/android/internal/util/ToBooleanFunction;ZLandroid/util/MutableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowToken;",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z",
            "Landroid/util/MutableBoolean;",
            "I)Z"
        }
    .end annotation

    iget-boolean v0, p4, Landroid/util/MutableBoolean;->value:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    if-ne v0, p5, :cond_0

    iput-boolean v1, p4, Landroid/util/MutableBoolean;->value:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    nop

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v5, 0x7f2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/wm/WindowToken;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->hasSplitScreenPrimaryStack()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p2, p1, v4, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1
    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-static {v4}, Lcom/android/server/policy/MultiWindowManagerPolicy;->isDividerFamily(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v3, p1, v5, v1}, Lcom/android/server/wm/WindowToken;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    :cond_3
    iget-boolean v4, v3, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v4, :cond_4

    const v4, 0x40000002    # 2.0000005f

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, p1, v0}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowToken;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v5, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v6, v3, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v4, v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isDexImePolicyNeededLocked()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v5, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v7, 0x7e3

    if-eq v5, v7, :cond_5

    iget v5, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v7, 0xa31

    if-ne v5, v7, :cond_6

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p2, p1, v5, v6}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v7, 0x7dc

    invoke-interface {v5, v7, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v5

    if-lt v4, v5, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p2, p1, v5, v6}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const/4 v2, 0x0

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    :cond_9
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x7f2

    iput-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isDexImePolicyNeededLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    :cond_1
    :goto_0
    move v9, v2

    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    if-nez v2, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    return v1

    :cond_2
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    :goto_1
    move v10, v2

    if-ltz v10, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/wm/WindowToken;

    move-object v2, p0

    move-object v3, v11

    move-object v4, p1

    move v5, p2

    move-object v6, v0

    move v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->applyImeWindowsIfNeeded(Lcom/android/server/wm/WindowToken;Lcom/android/internal/util/ToBooleanFunction;ZLandroid/util/MutableBoolean;I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v11, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v11, p1, p2, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->applyDexImePolicyIfNeeded(Lcom/android/server/wm/WindowToken;Lcom/android/internal/util/ToBooleanFunction;ZLandroid/util/MutableBoolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v10, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v8

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    move v2, v1

    :goto_3
    move v11, v2

    if-ge v11, v10, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/wm/WindowToken;

    nop

    invoke-direct {p0, v12, p1, p2, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->applyDexImePolicyIfNeeded(Lcom/android/server/wm/WindowToken;Lcom/android/internal/util/ToBooleanFunction;ZLandroid/util/MutableBoolean;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v12, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, p0

    move-object v3, v12

    move-object v4, p1

    move v5, p2

    move-object v6, v0

    move v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->applyImeWindowsIfNeeded(Lcom/android/server/wm/WindowToken;Lcom/android/internal/util/ToBooleanFunction;ZLandroid/util/MutableBoolean;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v11, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return v8

    :cond_8
    return v1
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    instance-of v1, p1, Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    :cond_0
    return-object v0
.end method
