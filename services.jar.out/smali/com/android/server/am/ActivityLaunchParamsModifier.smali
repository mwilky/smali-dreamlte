.class public Lcom/android/server/am/ActivityLaunchParamsModifier;
.super Ljava/lang/Object;
.source "ActivityLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 8

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    if-eqz p3, :cond_0

    invoke-virtual {p3, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    invoke-virtual {p7, v2, v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setPreferredDisplayIdIfPossible(II)Z

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    invoke-virtual {p7, v2, v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setWindowingModeIfPossible(II)Z

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p5}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    if-nez p5, :cond_4

    return v1

    :cond_4
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v0, :cond_6

    if-ne v4, v5, :cond_5

    iget v6, p6, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-ne v6, v5, :cond_5

    goto :goto_0

    :cond_5
    move v6, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v6, v0

    :goto_1
    if-nez v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez v6, :cond_8

    iget-object v7, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/MultiDisplayManagerService;->isDeXDisabledFromStandAlone()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    return v1

    :cond_a
    :goto_2
    invoke-virtual {p7, v2, v5, v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z

    return v0

    :cond_b
    :goto_3
    return v1
.end method
