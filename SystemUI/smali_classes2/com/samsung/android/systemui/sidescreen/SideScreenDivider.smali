.class public Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;
.super Ljava/lang/Object;
.source "SideScreenDivider.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDockSide:I

.field private mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

.field private mLidOpend:Z

.field private mMinimized:Z

.field private mMode:I

.field mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

.field private mVisible:Z

.field final mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;


# direct methods
.method private addView()V
    .locals 9

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    const v1, 0x7f0d0203

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0204

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setAlpha(F)V

    nop

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    move v1, v3

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    move v5, v0

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    if-eqz v1, :cond_3

    move v6, v2

    goto :goto_4

    :cond_3
    move v6, v0

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setController(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenDockSideChanged(I)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenMinimizedChanged(Z)V

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/16 v7, 0xa35

    const-string v8, "SideScreenDivider"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->addDivider(Landroid/view/View;IIILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    :cond_0
    return-void
.end method

.method private isUserSetupComplete()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUserSetupComplete()Z

    move-result v0

    return v0
.end method

.method private removeView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setController(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    return-void
.end method

.method private show()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SIDE_SCREEN_SHOW_DIVIDER:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    :cond_1
    return-void
.end method


# virtual methods
.method onLidStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLidOpend:Z

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->updateVisibilityIfNeeded()V

    return-void
.end method

.method onSideScreenDockSideChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    :cond_0
    return-void
.end method

.method public onSideScreenMinimizedChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenMinimizedChanged(Z)V

    :cond_0
    return-void
.end method

.method onSideScreenModeChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    :cond_0
    return-void
.end method

.method setTouchable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->setTouchable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method updateVisibilityIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLidOpend:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->hide()V

    :goto_0
    return-void
.end method
