.class public interface abstract Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;
.super Ljava/lang/Object;
.source "PluginMultiStarSystemProxy.java"


# virtual methods
.method public abstract closeFocusedTaskInSplitScreenMode()V
.end method

.method public abstract createAppPairShortcut()V
.end method

.method public abstract getDisplayRect()Landroid/graphics/Rect;
.end method

.method public abstract getDockSide()I
.end method

.method public abstract getRunningTask(III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSoftNavigationBar()Z
.end method

.method public abstract isScreenPinningActive()Z
.end method

.method public abstract isSnapTargetHideStatusbar()Z
.end method

.method public abstract setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSnapWindowEnabled(Z)V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract swapTasksInSplitScreenMode()V
.end method
